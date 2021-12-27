#!/usr/bin/env node

import { strict } from "assert";
import * as cp from "child_process";
import * as crypto from "crypto";
import * as fs from "fs";
import * as path from "path";
import { URL } from "url";

import Axios, { AxiosResponse } from "axios";
import { Command, Option } from "commander";
import ProgressBar from "progress";

const humanhash = require("humanhash");

const defaultCacheDir = ".hydroc";

function sha256({
    input,
}: {
    input:
    | string
    | Uint8Array
    | Uint8ClampedArray
    | Uint16Array
    | Uint32Array
    | Int8Array
    | Int16Array
    | Int32Array
    | BigUint64Array
    | BigInt64Array
    | Float32Array
    | Float64Array
    | DataView;
}): Readonly<string> {
    const hash = crypto.createHash("sha256");
    hash.update(input);
    return hash.digest("hex");
}

export interface IHydrocFsProvider {
    existsSync: (path: string | Buffer | URL) => boolean;
    unlinkSync: (path: string | Buffer | URL) => void;
    mkdirSync: (
        path: string | Buffer | URL,
        options: {
            recursive?: boolean | undefined;
            mode?: number | string | undefined;
        } & {
            recursive: true;
        }
    ) => string | undefined;
    createWriteStream: (
        path: string | Buffer | URL,
        options?:
            | "ascii"
            | "utf8"
            | "utf-8"
            | "utf16le"
            | "ucs2"
            | "ucs-2"
            | "base64"
            | "base64url"
            | "latin1"
            | "binary"
            | "hex"
            | {
                flags?: string | undefined;
                encoding?:
                | "ascii"
                | "utf8"
                | "utf-8"
                | "utf16le"
                | "ucs2"
                | "ucs-2"
                | "base64"
                | "base64url"
                | "latin1"
                | "binary"
                | "hex"
                | undefined;
                mode?: number | undefined;
                autoClose?: boolean | undefined;

                emitClose?: boolean | undefined;
                start?: number | undefined;
                highWaterMark?: number | undefined;
            }
    ) => {
        on: (event: "close", listener: () => void) => {};
    };
    readFileSync: (
        path: string | Buffer | URL | number,
        options?: {
            encoding?: null | undefined;
            flag?: string | undefined;
        } | null
    ) => Buffer;
}

export interface IHydroGhReleasesFilesProvider {
    getFile: (url: string) => Promise<{
        totalLength: () => string;
        on(
            event: "data" | "end",
            listener: (chunk?: Array<number>) => void
        ): void;
        pipe: (writer: {
            on: (event: "close", listener: () => void) => {};
        }) => void;
    }>;
}

export class Hydroc {
    public readonly cacheDir: string;
    public readonly sdkToolsDir: string;
    public readonly sdkToolsVersion: string;
    public readonly fsProvider: IHydrocFsProvider;
    public readonly ghFilesProvider: IHydroGhReleasesFilesProvider;

    public readonly sdkTools: Array<string>;

    public constructor({
        sdkToolsVersion,
        fsProvider = {
            existsSync: (path) => fs.existsSync(path),
            unlinkSync: (path) => fs.unlinkSync(path),
            mkdirSync: (path, options) => fs.mkdirSync(path, options),
            createWriteStream: (path, options) =>
                fs.createWriteStream(path, options),
            readFileSync: (path, options) => fs.readFileSync(path, options),
        },
        ghFilesProvider = new (class {
            private axiosPromise: AxiosResponse<unknown> | undefined;

            public async getFile(url: string) {
                this.axiosPromise = await Axios({
                    url,
                    method: "GET",
                    responseType: "stream",
                });

                return {
                    totalLength: () =>
                        this.axiosPromise?.headers["content-length"] as string,
                    on: (
                        event: "data" | "end",
                        listener: (chunk?: Array<number>) => void
                    ) => {
                        if (event == "data") {
                            (this.axiosPromise?.data as any).on(
                                "data",
                                (chunk: any) => {
                                    listener(chunk);
                                }
                            );
                        } else if (event == "end") {
                            (this.axiosPromise?.data as any).on("end", () => {
                                listener();
                            });
                        }
                    },
                    pipe: (writer: {
                        on: (event: "close", listener: () => void) => {};
                    }) => (this.axiosPromise?.data as any).pipe(writer),
                };
            }
        })(),
        sdkTools = [
            "hc2Dart",
            "ts2hc",
            "luac52",
            "swid",
            "build-project",
            "run-project",
            "codepush",
        ],
    }: {
        sdkToolsVersion: string;
        fsProvider?: IHydrocFsProvider;
        ghFilesProvider?: IHydroGhReleasesFilesProvider;
        sdkTools?: Array<string>;
    }) {
        strict(sdkToolsVersion !== undefined && sdkToolsVersion !== "");

        this.cacheDir = `.hydroc${path.sep}${sdkToolsVersion}`;
        this.sdkToolsDir = `${this.cacheDir}${path.sep}sdk-tools`;

        this.sdkToolsVersion = sdkToolsVersion;
        this.fsProvider = fsProvider;
        this.ghFilesProvider = ghFilesProvider;
        this.sdkTools = sdkTools;
    }

    public ensureSdkToolsDirectoryExists(): void {
        if (!this.fsProvider.existsSync(this.sdkToolsDir)) {
            this.fsProvider.mkdirSync(this.sdkToolsDir, { recursive: true });
        }
    }

    public makeSdkToolPlatformName({
        toolName,
    }: {
        toolName: string;
    }): Readonly<string> {
        return `${toolName}-${process.platform}-${process.arch}${process.platform == "win32" ? ".exe" : ""
            }`;
    }

    public makeSdkToolSha256Name({
        toolName,
    }: {
        toolName: string;
    }): Readonly<string> {
        return this.makeSdkToolPlatformName({ toolName }) + ".sha256";
    }

    public calculateHashForSdkTool({
        toolName,
    }: {
        toolName: string;
    }): Readonly<string> {
        return sha256({
            input: this.fsProvider.readFileSync(
                this.makeSdkToolPlatformPath({ toolName })
            ),
        });
    }

    public makeSdkToolPlatformPath({
        toolName,
    }: {
        toolName: string;
    }): Readonly<string> {
        return `${this.sdkToolsDir}${path.sep}${this.makeSdkToolPlatformName({
            toolName,
        })}`;
    }

    public findMissingSdkTools(): Readonly<Array<string>> {
        this.ensureSdkToolsDirectoryExists();

        return this.sdkTools
            .map((x) =>
                !this.fsProvider.existsSync(
                    `${this.sdkToolsDir}${path.sep
                    }${this.makeSdkToolPlatformName({ toolName: x })}`
                )
                    ? x
                    : undefined
            )
            .filter((x) => x !== undefined) as Readonly<Array<string>>;
    }

    public async downloadMissingSdkTools(): Promise<void> {
        const missingSdkTools = this.findMissingSdkTools();

        if (missingSdkTools.length > 0) {
            console.log(
                `Downloading Hydro-SDK tools version ${this.sdkToolsVersion} to ${this.sdkToolsDir}`
            );

            for (let i = 0; i != missingSdkTools.length; ++i) {
                const missingSdkTool = missingSdkTools[i];
                await new Promise(async (resolve) => {
                    const url = `https://github.com/hydro-sdk/hydro-sdk/releases/download/${this.sdkToolsVersion
                        }/${this.makeSdkToolPlatformName({
                            toolName: missingSdkTool,
                        })}`;

                    const filePromise = await this.ghFilesProvider.getFile(url);

                    const totalLength = filePromise.totalLength();

                    const progressBar = new ProgressBar(
                        `    -> ${this.makeSdkToolPlatformName({
                            toolName: missingSdkTool,
                        })} [:bar] :percent :etas`,
                        {
                            width: 40,
                            complete: "=",
                            incomplete: " ",
                            renderThrottle: 1,
                            total: parseInt(totalLength),
                        }
                    );

                    const writer = this.fsProvider.createWriteStream(
                        `${this.sdkToolsDir}${path.sep
                        }${this.makeSdkToolPlatformName({
                            toolName: missingSdkTool,
                        })}`
                    );

                    filePromise.on("data", (chunk: any) =>
                        progressBar.tick(chunk.length)
                    );
                    filePromise.on("end", () => resolve(undefined));
                    filePromise.pipe(writer);
                });
            }
            for (let i = 0; i != missingSdkTools.length; ++i) {
                const missingSdkTool = missingSdkTools[i];
                await new Promise(async (resolve) => {
                    const url = `https://github.com/hydro-sdk/hydro-sdk/releases/download/${this.sdkToolsVersion
                        }/${this.makeSdkToolSha256Name({
                            toolName: missingSdkTool,
                        })}`;

                    const filePromise = await this.ghFilesProvider.getFile(url);

                    const totalLength = filePromise.totalLength();

                    const progressBar = new ProgressBar(
                        `    -> ${this.makeSdkToolPlatformName({
                            toolName: missingSdkTool,
                        })} [:bar] :percent :etas`,
                        {
                            width: 40,
                            complete: "=",
                            incomplete: " ",
                            renderThrottle: 1,
                            total: parseInt(totalLength),
                        }
                    );

                    const writer = this.fsProvider.createWriteStream(
                        `${this.sdkToolsDir}${path.sep
                        }${this.makeSdkToolSha256Name({
                            toolName: missingSdkTool,
                        })}`
                    );

                    filePromise.on("data", (chunk: any) =>
                        progressBar.tick(chunk.length)
                    );
                    filePromise.on("end", () => resolve(undefined));
                    filePromise.pipe(writer);
                });

                const missingSdkToolSha256 = sha256({
                    input: this.fsProvider.readFileSync(
                        `${this.sdkToolsDir}${path.sep
                        }${this.makeSdkToolPlatformName({
                            toolName: missingSdkTool,
                        })}`
                    ),
                });

                const expectedSha256 = this.fsProvider
                    .readFileSync(
                        `${this.sdkToolsDir}${path.sep
                        }${this.makeSdkToolSha256Name({
                            toolName: missingSdkTool,
                        })}`
                    )
                    .toString();

                if (missingSdkToolSha256 != expectedSha256) {
                    throw new Error(
                        `Could not verify integrity of SDK-tool ${missingSdkTool}\n` +
                        `Got ${missingSdkToolSha256} but expected ${expectedSha256}\n`
                    );
                } else {
                    this.fsProvider.unlinkSync(
                        `${this.sdkToolsDir}${path.sep
                        }${this.makeSdkToolSha256Name({
                            toolName: missingSdkTool,
                        })}`
                    );
                }
            }

            await Promise.all(
                this.sdkTools.map(
                    async (x) =>
                        await this.setExecutableBitOnSdkTool({ toolName: x })
                )
            );
        } else {
            console.log("All Hydro-SDK tools exist");
        }
    }

    public async setExecutableBitOnSdkTool({
        toolName,
    }: {
        toolName: string;
    }): Promise<void> {
        if (process.platform == "darwin" || process.platform == "linux") {
            await new Promise((resolve, reject) => {
                const chmod = cp.spawn("chmod", [
                    "+x",
                    this.makeSdkToolPlatformPath({ toolName }),
                ]);

                chmod.on("exit", (exitCode) =>
                    exitCode == 0 ? resolve(undefined) : reject(exitCode)
                );
            }).catch((err) => process.exit(err));
        }
    }

    public ts2hc({
        entryPoint,
        moduleName,
        outDir,
        profile,
        logger,
    }: {
        entryPoint: string;
        moduleName: string;
        outDir: string;
        profile: string;
        logger: "stdout" | "parent" | "none";
    }) {
        return cp.spawn(
            this.makeSdkToolPlatformPath({ toolName: "ts2hc" }),
            [
                "--cache-dir",
                this.cacheDir,
                "--entry-point",
                entryPoint,
                "--module-name",
                moduleName,
                "--out-dir",
                outDir,
                "--profile",
                profile,
                "--logger",
                logger,
            ],
            {
                stdio: "inherit",
            }
        );
    }

    public buildProject({
        project,
        ts2hc,
        profile,
        outDir,
    }: {
        project: string;
        ts2hc: string;
        profile: string;
        outDir: string;
    }) {
        return cp.spawn(
            this.makeSdkToolPlatformPath({ toolName: "build-project" }),
            [
                "--project",
                project,
                "--ts2hc",
                ts2hc,
                "--cache-dir",
                this.cacheDir,
                "--profile",
                profile,
                "--out-dir",
                outDir,
            ],
            {
                stdio: "inherit",
            }
        );
    }

    public runProject({ project, ts2hc }: { project: string; ts2hc: string }) {
        return cp.spawn(
            this.makeSdkToolPlatformPath({ toolName: "run-project" }),
            [
                "--project",
                project,
                "--ts2hc",
                ts2hc,
                "--cache-dir",
                this.cacheDir,
                "--profile",
                "debug",
            ],
            {
                stdio: "inherit",
            }
        );
    }

    public codepush({
        project,
        ts2hc,
        profile,
        outDir,
        privateKeyFile,
        registryScheme,
        registryHost,
        registryPort,
        channel,
        readme,
        pubspecyaml,
        pubspeclock,
        version,
        trimKey,
    }: {
        project: string;
        ts2hc: string;
        outDir: string;
        profile: string;
        privateKeyFile: string;
        registryScheme: string;
        registryHost: string;
        registryPort: string;
        channel: string;
        readme: string;
        pubspecyaml: string;
        pubspeclock: string;
        version: string;
        trimKey: boolean;
    }) {
        return cp.spawn(
            this.makeSdkToolPlatformPath({ toolName: "codepush" }),
            [
                "--project",
                project,
                "--ts2hc",
                ts2hc,
                "--cache-dir",
                this.cacheDir,
                "--profile",
                profile,
                "--out-dir",
                outDir,
                "--private-key-file",
                privateKeyFile,
                "--registry-scheme",
                registryScheme,
                "--registry-host",
                registryHost,
                "--registry-port",
                registryPort,
                "--channel",
                channel,
                "--readme",
                readme,
                "--pubspecyaml",
                pubspecyaml,
                "--pubspeclock",
                pubspeclock,
                "--version",
                version,
                trimKey ? "--trim-key" : "--no-trim-key",
            ],
            {
                stdio: "inherit",
            }
        );
    }
}

async function readSdkPackage({
    directory,
    fsProvider = {
        readFileSync: (path, options) => fs.readFileSync(path, options),
    },
}: {
    directory: string;
    fsProvider?: Readonly<Pick<IHydrocFsProvider, "readFileSync">>;
}): Promise<
    | Readonly<{
        version: string;
    }>
    | undefined
> {
    try {
        return JSON.parse(
            fsProvider
                .readFileSync(`${directory}${path.sep}package.json`)
                .toString()
        );
    } catch (err) {
        console.error(err);
        return undefined;
    }
}
const disableTopLevel =
    (global as any).HYDROC_DISABLE_TOP_LEVEL !== undefined
        ? ((global as any).HYDROC_DISABLE_TOP_LEVEL as boolean)
        : false;

if (!disableTopLevel) {
    (async () => {
        const sdkPackage = await readSdkPackage({ directory: __dirname });

        if (sdkPackage === undefined) {
            process.exit(1);
        }

        const program = new Command();

        program.version(sdkPackage.version);

        program
            .command("sdk-tools")
            .description(
                "Download tools required by Hydro-SDK into the given cache directory"
            )
            .addOption(
                new Option(
                    "--tools-version <version>",
                    "The version of SDK tools to download"
                ).default(sdkPackage.version)
            )
            .action(async (options) => {
                const hydroc = new Hydroc({
                    sdkToolsVersion: options.toolsVersion ?? sdkPackage.version,
                });

                await hydroc.downloadMissingSdkTools();
            });

        program
            .command("ts2hc")
            .description(
                "Compile the Typescript file given by --entry-point and all of its dependencies into a bytecode chunk, written to --out-dir"
            )
            .addOption(
                new Option(
                    "--entry-point <entry>",
                    "The file to use as the compilation's entry point"
                ).makeOptionMandatory()
            )
            .addOption(
                new Option(
                    "--module-name <name>",
                    "The name to use for the output module"
                ).makeOptionMandatory()
            )
            .addOption(
                new Option(
                    "--out-dir <dir>",
                    "The path to the directory to write the output chunk to"
                ).makeOptionMandatory()
            )
            .addOption(
                new Option(
                    "--profile <profile>",
                    "The profile to use for compilation"
                ).makeOptionMandatory()
            )
            .addOption(
                new Option(
                    "--skip-sdk-tools-check",
                    "Skip downloading missing SDK tools"
                )
            )
            .action(async (options) => {
                const hydroc = new Hydroc({
                    sdkToolsVersion: options.toolsVersion ?? sdkPackage.version,
                });

                if (!options.skipSdkToolsCheck) {
                    await hydroc.downloadMissingSdkTools();
                }

                await new Promise((resolve, reject) => {
                    const ts2hc = hydroc.ts2hc({
                        entryPoint: options.entryPoint,
                        moduleName: options.moduleName,
                        outDir: options.outDir,
                        profile: options.profile,
                        logger: "stdout",
                    });

                    ts2hc.on("exit", (exitCode) =>
                        exitCode == 0 ? resolve(undefined) : reject(exitCode)
                    );
                }).catch((err) => process.exit(err));
            });

        program
            .command("build")
            .description("Build the project given by --project")
            .addOption(
                new Option(
                    "--project <project>",
                    "The project description to use"
                ).default("hydro.json")
            )
            .addOption(
                new Option(
                    "--out-dir <out-dir>",
                    "The directory to write build outputs to"
                ).default("")
            )
            .addOption(
                new Option(
                    "--profile <profile>",
                    "The build profile to use for all chunks in the project"
                ).default("release")
            )
            .action(async (options) => {
                const hydroc = new Hydroc({
                    sdkToolsVersion: options.toolsVersion ?? sdkPackage.version,
                });

                await hydroc.downloadMissingSdkTools();

                await new Promise((resolve, reject) => {
                    const buildProject = hydroc.buildProject({
                        project: options.project,
                        profile: options.profile,
                        outDir: options.outDir,
                        ts2hc: hydroc.makeSdkToolPlatformPath({
                            toolName: "ts2hc",
                        }),
                    });

                    buildProject.on("exit", (exitCode) =>
                        exitCode == 0 ? resolve(undefined) : reject(exitCode)
                    );
                }).catch((err) => process.exit(err));
            });

        program
            .command("run")
            .description("Run the project given by --project")
            .addOption(
                new Option(
                    "--project <project>",
                    "The project description to use"
                ).default("hydro.json")
            )
            .action(async (options) => {
                const hydroc = new Hydroc({
                    sdkToolsVersion: options.toolsVersion ?? sdkPackage.version,
                });

                await hydroc.downloadMissingSdkTools();

                await new Promise((resolve, reject) => {
                    const runProject = hydroc.runProject({
                        project: options.project,
                        ts2hc: hydroc.makeSdkToolPlatformPath({
                            toolName: "ts2hc",
                        }),
                    });

                    runProject.on("exit", (exitCode) =>
                        exitCode == 0 ? resolve(undefined) : reject(exitCode)
                    );
                }).catch((err) => process.exit(err));
            });

        program
            .command("codepush")
            .description("Publish the project given by --project")
            .addOption(
                new Option(
                    "--project <project>",
                    "The project description to use"
                ).default("hydro.json")
            )
            .addOption(
                new Option(
                    "--out-dir <out-dir>",
                    "The directory to write build outputs to"
                ).default("")
            )
            .addOption(
                new Option(
                    "--profile <profile>",
                    "The build profile to use for all chunks in the project"
                ).default("release")
            )
            .addOption(
                new Option(
                    "--registry-scheme <registry-scheme>",
                    "The scheme to use when connecting to the registry"
                ).default("https")
            )
            .addOption(
                new Option(
                    "--registry-host <registry-host>",
                    "The registry host to use"
                ).default("api.registry.hydro-sdk.io")
            )
            .addOption(
                new Option(
                    "--registry-port <registry-port",
                    "The port to use when connecting to the registry"
                )
            )
            .addOption(
                new Option(
                    "--private-key-file <private-key-file>",
                    "The path to the key to use to sign the release"
                ).makeOptionMandatory()
            )
            .addOption(
                new Option(
                    "--channel <channel>",
                    "The channel to publish the release to"
                ).default("latest")
            )
            .addOption(
                new Option(
                    "--readme <readme>",
                    "The path to the readme (in markdown format) to use for this release"
                ).default("readme.md")
            )
            .addOption(
                new Option(
                    "--pubspecyaml <pubspecyaml>",
                    "The path to the pubspec.yaml file to use for this release"
                ).default("pubspec.yaml")
            )
            .addOption(
                new Option(
                    "--pubspeclock <pubspeclock>",
                    "The path to the pubspec.lock file to use for this release"
                ).default("pubspec.lock")
            )
            .addOption(
                new Option(
                    "--version <version>",
                    "The version name to assign to this release"
                ).default(new humanhash().uuid().humanhash)
            )
            .addOption(
                new Option(
                    "--trim-key",
                    "Trim leading and trailing whitespace from private key before using it to sign and submit the release"
                )
            )
            .addOption(
                new Option(
                    "--no-trim-key",
                    "Do not trim leading and trailing whitespace from private key"
                )
            )
            .action(async (options) => {
                const hydroc = new Hydroc({
                    sdkToolsVersion: options.toolsVersion ?? sdkPackage.version,
                });

                await hydroc.downloadMissingSdkTools();

                await new Promise((resolve, reject) => {
                    const codepush = hydroc.codepush({
                        project: options.project,
                        profile: options.profile,
                        outDir: options.outDir,
                        privateKeyFile: options.privateKeyFile,
                        registryScheme: options.registryScheme,
                        registryHost: options.registryHost,
                        registryPort: options.registryPort,
                        channel: options.channel,
                        readme: options.readme,
                        pubspecyaml: options.pubspecyaml,
                        pubspeclock: options.pubspeclock,
                        version: options.version,
                        trimKey:
                            options.trimKey !== undefined
                                ? options.trimKey
                                : true,
                        ts2hc: hydroc.makeSdkToolPlatformPath({
                            toolName: "ts2hc",
                        }),
                    });

                    codepush.on("exit", (exitCode) =>
                        exitCode == 0 ? resolve(undefined) : reject(exitCode)
                    );
                }).catch((err) => process.exit(err));
            });
        program.parse(process.argv);
    })();
}

export enum MockFsNodeKind {
    kFile,
    kDirectory,
}

export type MockFsFile = {
    kind: MockFsNodeKind.kFile;
    content: string | Buffer;
};

export type MockFsDirectory = {
    kind: MockFsNodeKind.kDirectory;
    children: { [i: string]: MockFsNode | undefined };
};

export type MockFsNode = MockFsFile | MockFsDirectory;

export function mockGetFileByPath(
    filePath: string,
    fsNode: MockFsNode | undefined
): MockFsNode | undefined {
    const parts = filePath.split(path.sep);

    if (fsNode !== undefined) {
        switch (fsNode.kind) {
            case MockFsNodeKind.kDirectory:
                const res = fsNode.children[parts[0]];
                if (parts.length == 1) {
                    return res;
                } else if (res !== undefined) {
                    if (res.kind == MockFsNodeKind.kDirectory) {
                        return mockGetFileByPath(
                            parts.splice(1).join(path.sep),
                            res
                        );
                    } else if (res.kind == MockFsNodeKind.kFile) {
                        return res;
                    }
                }

            case MockFsNodeKind.kFile:
                break;
        }
    }
    return undefined;
}

export function mockUnlinkByPath(filePath: string, fsNode: MockFsNode): void {
    const parts = filePath.split(path.sep);

    if (fsNode !== undefined) {
        switch (fsNode.kind) {
            case MockFsNodeKind.kDirectory:
                const res = fsNode.children[parts[0]];

                if (res !== undefined) {
                    if (parts.length == 1) {
                        delete fsNode.children[parts[0]];
                    } else {
                        return mockUnlinkByPath(
                            parts.splice(1).join(path.sep),
                            res
                        );
                    }
                }

            case MockFsNodeKind.kFile:
                break;
        }
    }
}

export function mockMkdir(dirPath: string, recursive: boolean, fsNode: MockFsNode | undefined): string | undefined {
    strict(recursive === true);

    const parts = dirPath.split(path.sep);

    if (mockGetFileByPath(dirPath, fsNode) !== undefined) {
        return undefined;
    }

    if (fsNode !== undefined) {
        switch (fsNode.kind) {
            case MockFsNodeKind.kDirectory:
                const child = fsNode.children[parts[0]];
                if (child === undefined) {
                    fsNode.children[parts[0]] = {
                        kind: MockFsNodeKind.kDirectory,
                        children: {},
                    } as MockFsDirectory;
                }
                if (parts.length > 1) {
                    mockMkdir(parts.splice(1).join(path.sep), true,
                        fsNode.children[parts[0]]);
                }
                break;

            case MockFsNodeKind.kFile:
                break;
        }
    }

    return undefined;
}

class HydrocMockFsProvider {
    private mockFsNode: MockFsNode;

    public constructor({ mockFsNode }: { mockFsNode: MockFsNode }) {
        this.mockFsNode = mockFsNode;
    }

    public existsSync(path: string | Buffer | URL): boolean {
        return (
            mockGetFileByPath(path.toString(), this.mockFsNode) !== undefined
        );
    }

    public unlinkSync(path: string | Buffer | URL): void {
        return mockUnlinkByPath(path.toString(), this.mockFsNode);
    }

    public mkdirSync(
        path: string | Buffer | URL,
        options: {
            recursive?: boolean | undefined;
            mode?: number | string | undefined;
        } & {
            recursive: true;
        }
    ): string | undefined {
        return mockMkdir(path.toString(), options.recursive, this.mockFsNode);
    }
}
