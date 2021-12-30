#!/usr/bin/env node

import { strict } from "assert";
import * as cp from "child_process";
import * as crypto from "crypto";
import * as fs from "fs";
import * as path from "path";
import { Readable, Writable } from "stream";
import { URL } from "url";

import Axios, { AxiosResponse } from "axios";
import { Command, Option } from "commander";
import ProgressBar from "progress";

const humanhash = require("humanhash");

const defaultCacheDir = ".hydroc";

export enum TargetPlatform {
    win32x64,
    linuxx64,
    darwinx64,
}

export function determineTargetPlatform(
    platform:
        | "aix"
        | "android"
        | "darwin"
        | "freebsd"
        | "haiku"
        | "linux"
        | "openbsd"
        | "sunos"
        | "win32"
        | "cygwin"
        | "netbsd",
    arch:
        | "arm"
        | "arm64"
        | "ia32"
        | "mips"
        | "mipsel"
        | "ppc"
        | "ppc64"
        | "s390x"
        | "x32"
        | "x64"
): TargetPlatform {
    if (platform == "darwin") {
        if (arch == "x64") {
            return TargetPlatform.darwinx64;
        }
    } else if (platform == "linux") {
        if (arch == "x64") {
            return TargetPlatform.linuxx64;
        }
    } else if (platform == "win32") {
        if (arch == "x64") {
            return TargetPlatform.win32x64;
        }
    }

    throw `${platform}-${arch} is not a supported platform`;
}

export function makeTargetDoubleName(targetPlatform: TargetPlatform): string {
    switch (targetPlatform) {
        case TargetPlatform.darwinx64:
            return "darwin-x64";
        case TargetPlatform.linuxx64:
            return "linux-x64";
        case TargetPlatform.win32x64:
            return "win32-x64";
    }
}

export function sha256({
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

export interface IHydrocLogger {
    log: (str: string) => void;
}

export interface IHydrocFsProvider {
    pathSeparator: "\\" | "/";
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

export interface IHydrocGhReleasesFilesProvider {
    getFile: (url: string) => Promise<
        | {
              totalLength: () => string;
              on(
                  event: "data" | "end",
                  listener: (chunk?: Array<number>) => void
              ): void;
              pipe: (writer: {
                  on: (event: "close", listener: () => void) => {};
              }) => void;
          }
        | undefined
    >;
}

export interface IHydrocChmodProvider {
    setExecutableBit: (path: string) => Promise<number | void | undefined>;
}

export class Hydroc {
    public readonly cacheDir: string;
    public readonly sdkToolsDir: string;
    public readonly sdkToolsVersion: string;
    public readonly fsProvider: IHydrocFsProvider;
    public readonly ghFilesProvider: IHydrocGhReleasesFilesProvider;
    public readonly chmodProvider: IHydrocChmodProvider;
    public readonly logger: IHydrocLogger;

    public readonly targetPlatform: TargetPlatform;
    public readonly sdkTools: Array<string>;

    public constructor({
        sdkToolsVersion,
        fsProvider = {
            pathSeparator: path.sep as "\\" | "/",
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
                try {
                    this.axiosPromise = await Axios({
                        url,
                        method: "GET",
                        responseType: "stream",
                    });

                    return {
                        totalLength: () =>
                            this.axiosPromise?.headers[
                                "content-length"
                            ] as string,
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
                                (this.axiosPromise?.data as any).on(
                                    "end",
                                    () => {
                                        listener();
                                    }
                                );
                            }
                        },
                        pipe: (writer: {
                            on: (event: "close", listener: () => void) => {};
                        }) => (this.axiosPromise?.data as any).pipe(writer),
                    };
                } catch (err) {
                    console.error(err);
                    return undefined;
                }
            }
        })(),
        chmodProvider = new (class {
            public async setExecutableBit(
                path: string
            ): Promise<number | void | undefined> {
                return await new Promise<number | undefined>(
                    (resolve, reject) => {
                        const chmod = cp.spawn("chmod", ["+x", path]);

                        chmod.on("exit", (exitCode) =>
                            exitCode == 0
                                ? resolve(undefined)
                                : reject(exitCode)
                        );
                    }
                ).catch((err) => console.log(err));
            }
        })(),
        logger = new (class {
            public log(str: string) {
                console.log(str);
            }
        })(),
        targetPlatform = determineTargetPlatform(
            process.platform,
            process.arch as any
        ),
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
        ghFilesProvider?: IHydrocGhReleasesFilesProvider;
        chmodProvider?: IHydrocChmodProvider;
        logger?: IHydrocLogger;
        targetPlatform?: TargetPlatform;
        sdkTools?: Array<string>;
    }) {
        strict(sdkToolsVersion !== undefined && sdkToolsVersion !== "");

        this.fsProvider = fsProvider;

        this.cacheDir = `.hydroc${this.fsProvider.pathSeparator}${sdkToolsVersion}`;
        this.sdkToolsDir = `${this.cacheDir}${this.fsProvider.pathSeparator}sdk-tools`;

        this.sdkToolsVersion = sdkToolsVersion;

        this.ghFilesProvider = ghFilesProvider;
        this.chmodProvider = chmodProvider;
        this.logger = logger;
        this.targetPlatform = targetPlatform;
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
        return `${toolName}-${makeTargetDoubleName(this.targetPlatform)}${
            this.targetPlatform == TargetPlatform.win32x64 ? ".exe" : ""
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
        return `${this.sdkToolsDir}${
            this.fsProvider.pathSeparator
        }${this.makeSdkToolPlatformName({
            toolName,
        })}`;
    }

    public findMissingSdkTools(): Readonly<Array<string>> {
        this.ensureSdkToolsDirectoryExists();

        return this.sdkTools
            .map((x) =>
                !this.fsProvider.existsSync(
                    `${this.sdkToolsDir}${
                        this.fsProvider.pathSeparator
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
            this.logger.log(
                `Downloading Hydro-SDK tools version ${this.sdkToolsVersion} to ${this.sdkToolsDir}`
            );

            for (let i = 0; i != missingSdkTools.length; ++i) {
                const missingSdkTool = missingSdkTools[i];
                await new Promise(async (resolve) => {
                    const url = `https://github.com/hydro-sdk/hydro-sdk/releases/download/${
                        this.sdkToolsVersion
                    }/${this.makeSdkToolPlatformName({
                        toolName: missingSdkTool,
                    })}`;

                    const filePromise = await this.ghFilesProvider.getFile(url);

                    const totalLength = filePromise?.totalLength();

                    const progressBar = new ProgressBar(
                        `    -> ${this.makeSdkToolPlatformName({
                            toolName: missingSdkTool,
                        })} [:bar] :percent :etas`,
                        {
                            width: 40,
                            complete: "=",
                            incomplete: " ",
                            renderThrottle: 1,
                            total: parseInt(totalLength ?? "0"),
                        }
                    );

                    const writer = this.fsProvider.createWriteStream(
                        `${this.sdkToolsDir}${
                            this.fsProvider.pathSeparator
                        }${this.makeSdkToolPlatformName({
                            toolName: missingSdkTool,
                        })}`
                    );

                    filePromise?.on("data", (chunk: any) =>
                        progressBar.tick(chunk.length)
                    );
                    filePromise?.on("end", () => resolve(undefined));
                    filePromise?.pipe(writer);
                });
            }
            for (let i = 0; i != missingSdkTools.length; ++i) {
                const missingSdkTool = missingSdkTools[i];
                await new Promise(async (resolve) => {
                    const url = `https://github.com/hydro-sdk/hydro-sdk/releases/download/${
                        this.sdkToolsVersion
                    }/${this.makeSdkToolSha256Name({
                        toolName: missingSdkTool,
                    })}`;

                    const filePromise = await this.ghFilesProvider.getFile(url);

                    const totalLength = filePromise?.totalLength();

                    const progressBar = new ProgressBar(
                        `    -> ${this.makeSdkToolSha256Name({
                            toolName: missingSdkTool,
                        })} [:bar] :percent :etas`,
                        {
                            width: 40,
                            complete: "=",
                            incomplete: " ",
                            renderThrottle: 1,
                            total: parseInt(totalLength ?? "0"),
                        }
                    );

                    const writer = this.fsProvider.createWriteStream(
                        `${this.sdkToolsDir}${
                            this.fsProvider.pathSeparator
                        }${this.makeSdkToolSha256Name({
                            toolName: missingSdkTool,
                        })}`
                    );

                    filePromise?.on("data", (chunk: any) =>
                        progressBar.tick(chunk.length)
                    );
                    filePromise?.on("end", () => {});
                    filePromise?.pipe(writer);

                    writer.on("close", () => resolve(undefined));
                });

                const missingSdkToolSha256 = sha256({
                    input: this.fsProvider.readFileSync(
                        `${this.sdkToolsDir}${
                            this.fsProvider.pathSeparator
                        }${this.makeSdkToolPlatformName({
                            toolName: missingSdkTool,
                        })}`
                    ),
                });

                const expectedSha256 = this.fsProvider
                    .readFileSync(
                        `${this.sdkToolsDir}${
                            this.fsProvider.pathSeparator
                        }${this.makeSdkToolSha256Name({
                            toolName: missingSdkTool,
                        })}`
                    )
                    .toString();
                strict(expectedSha256.length > 0);

                if (missingSdkToolSha256.trim() != expectedSha256.trim()) {
                    this.logger.log(
                        `Could not verify integrity of SDK-tool ${missingSdkTool}`
                    );
                    this.logger.log(`Got ${missingSdkToolSha256}`);
                    this.logger.log(`expected ${expectedSha256}`);

                    this.fsProvider.unlinkSync(
                        `${this.sdkToolsDir}${
                            this.fsProvider.pathSeparator
                        }${this.makeSdkToolSha256Name({
                            toolName: missingSdkTool,
                        })}`
                    );

                    this.fsProvider.unlinkSync(
                        `${this.sdkToolsDir}${
                            this.fsProvider.pathSeparator
                        }${this.makeSdkToolPlatformName({
                            toolName: missingSdkTool,
                        })}`
                    );

                    throw new Error("Failed to verify integrity");
                } else {
                    this.fsProvider.unlinkSync(
                        `${this.sdkToolsDir}${
                            this.fsProvider.pathSeparator
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
            this.logger.log("All Hydro-SDK tools exist");
        }
    }

    public async setExecutableBitOnSdkTool({
        toolName,
    }: {
        toolName: string;
    }): Promise<void> {
        if (
            this.targetPlatform == TargetPlatform.darwinx64 ||
            this.targetPlatform == TargetPlatform.linuxx64
        ) {
            await this.chmodProvider.setExecutableBit(
                this.makeSdkToolPlatformPath({ toolName })
            );
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
        pathSeparator: path.sep as "\\" | "/",
    },
}: {
    directory: string;
    fsProvider?: Readonly<
        Pick<IHydrocFsProvider, "readFileSync" | "pathSeparator">
    >;
}): Promise<
    | Readonly<{
          version: string;
      }>
    | undefined
> {
    try {
        return JSON.parse(
            fsProvider
                .readFileSync(
                    `${directory}${fsProvider.pathSeparator}package.json`
                )
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

export class HydrocMockLogger implements IHydrocLogger {
    public readonly loggedLines: Array<string>;

    public constructor() {
        this.loggedLines = new Array<string>();
    }

    public log(str: string) {
        this.loggedLines.push(str);
    }
}

export enum MockFsNodeKind {
    kFile,
    kDirectory,
}

export type MockFsFile = {
    kind: MockFsNodeKind.kFile;
    fileMode: string;
    content: string | Buffer;
};

export type MockFsDirectory = {
    kind: MockFsNodeKind.kDirectory;
    children: { [i: string]: MockFsNode | undefined };
};

export type MockFsNode = MockFsFile | MockFsDirectory;

export function mockGetFileByPath(
    filePath: string,
    fsNode: MockFsNode | undefined,
    pathSeparator: "\\" | "/"
): MockFsNode | undefined {
    const parts = filePath.split(pathSeparator);

    if (fsNode !== undefined) {
        switch (fsNode.kind) {
            case MockFsNodeKind.kDirectory:
                const res = fsNode.children[parts[0]];
                if (parts.length == 1) {
                    return res;
                } else if (res !== undefined) {
                    if (res.kind == MockFsNodeKind.kDirectory) {
                        return mockGetFileByPath(
                            parts.splice(1).join(pathSeparator),
                            res,
                            pathSeparator
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

export function mockUnlinkByPath(
    filePath: string,
    fsNode: MockFsNode,
    pathSeparator: "\\" | "/"
): void {
    const parts = filePath.split(pathSeparator);

    if (fsNode !== undefined) {
        switch (fsNode.kind) {
            case MockFsNodeKind.kDirectory:
                const res = fsNode.children[parts[0]];

                if (res !== undefined) {
                    if (parts.length == 1) {
                        delete fsNode.children[parts[0]];
                    } else {
                        return mockUnlinkByPath(
                            parts.splice(1).join(pathSeparator),
                            res,
                            pathSeparator
                        );
                    }
                }

            case MockFsNodeKind.kFile:
                break;
        }
    }
}

export function mockMkdir(
    dirPath: string,
    recursive: boolean,
    fsNode: MockFsNode | undefined,
    pathSeparator: "\\" | "/"
): string | undefined {
    strict(recursive === true);

    const parts = dirPath.split(pathSeparator);

    if (mockGetFileByPath(dirPath, fsNode, pathSeparator) !== undefined) {
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
                    mockMkdir(
                        parts.splice(1).join(pathSeparator),
                        true,
                        fsNode.children[parts[0]],
                        pathSeparator
                    );
                }
                break;

            case MockFsNodeKind.kFile:
                break;
        }
    }

    return undefined;
}

export function mockMkFile(
    filePath: string,
    fsNode: MockFsNode | undefined,
    pathSeparator: "\\" | "/"
): void {
    if (mockGetFileByPath(filePath, fsNode, pathSeparator) !== undefined) {
        return undefined;
    }

    const parts = filePath.split(pathSeparator);

    const parentPath = parts
        .map((x, i) => (i != parts.length - 1 ? x : undefined))
        .filter((x) => x !== undefined)
        .join(pathSeparator);

    const parentDir = mockGetFileByPath(parentPath, fsNode, pathSeparator);

    strict(parentDir !== undefined);
    strict(parentDir.kind == MockFsNodeKind.kDirectory);

    if (parentDir === undefined) {
        return undefined;
    } else {
        switch (parentDir.kind) {
            case MockFsNodeKind.kDirectory:
                parentDir.children[parts[parts.length - 1]] = {
                    kind: MockFsNodeKind.kFile,
                    fileMode: "",
                    content: "",
                } as MockFsFile;
                break;
        }
    }

    return undefined;
}

export class HydrocMockFsProvider implements IHydrocFsProvider {
    public readonly mockFsNode: MockFsNode;
    public readonly pathSeparator: "\\" | "/";

    public constructor({
        mockFsNode,
        pathSeparator,
    }: {
        mockFsNode: MockFsNode;
        pathSeparator: "\\" | "/";
    }) {
        this.mockFsNode = mockFsNode;
        this.pathSeparator = pathSeparator;
    }

    public stringifyFsNode() {
        return JSON.stringify(this.mockFsNode, undefined, 4);
    }

    public existsSync(path: string | Buffer | URL): boolean {
        return (
            mockGetFileByPath(
                path.toString(),
                this.mockFsNode,
                this.pathSeparator
            ) !== undefined
        );
    }

    public unlinkSync(path: string | Buffer | URL): void {
        return mockUnlinkByPath(
            path.toString(),
            this.mockFsNode,
            this.pathSeparator
        );
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
        return mockMkdir(
            path.toString(),
            options.recursive,
            this.mockFsNode,
            this.pathSeparator
        );
    }

    public readFileSync(
        path: string | Buffer | URL | number,
        options?: {
            encoding?: null | undefined;
            flag?: string | undefined;
        } | null
    ): Buffer {
        const file = mockGetFileByPath(
            path.toString(),
            this.mockFsNode,
            this.pathSeparator
        );

        strict(file !== undefined, `Failed to find ${path.toString()}`);
        strict(
            file.kind == MockFsNodeKind.kFile,
            `${path.toString()} is not a file`
        );

        return Buffer.from(file.content);
    }

    public createWriteStream(
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
    ): {
        on: (event: "close", listener: () => void) => {};
    } {
        mockMkFile(path.toString(), this.mockFsNode, this.pathSeparator);

        const file = mockGetFileByPath(
            path.toString(),
            this.mockFsNode,
            this.pathSeparator
        );

        strict(file !== undefined);
        strict(file?.kind == MockFsNodeKind.kFile);

        const writable = new WritableMockFile(file);

        return writable;
    }
}

export class HydrocMockGhReleasesFsProvider extends HydrocMockFsProvider {
    public constructor({
        mockFsNode,
        pathSeparator,
    }: {
        mockFsNode: MockFsNode;
        pathSeparator: "\\" | "/";
    }) {
        super({ mockFsNode, pathSeparator });
    }

    private stripProtocol(path: string) {
        return path
            .split(/https:\/\//)
            .map((x, i) => (i != 0 ? x : undefined))
            .filter((x) => x != undefined)
            .join("");
    }

    public existsSync(path: string | Buffer | URL): boolean {
        return super.existsSync(this.stripProtocol(path.toString()));
    }

    public unlinkSync(path: string | Buffer | URL): void {
        throw "";
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
        throw "";
    }

    public readFileSync(
        path: string | Buffer | URL | number,
        options?: {
            encoding?: null | undefined;
            flag?: string | undefined;
        } | null
    ): Buffer {
        return super.readFileSync(this.stripProtocol(path.toString()), options);
    }

    public createWriteStream(
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
    ): {
        on: (event: "close", listener: () => void) => {};
    } {
        return super.createWriteStream(
            this.stripProtocol(path.toString()),
            options
        );
    }
}

export class HydrocMockGhReleasesFileProvider
    implements IHydrocGhReleasesFilesProvider
{
    private fsProvider: IHydrocFsProvider;

    public constructor({ fsProvider }: { fsProvider: IHydrocFsProvider }) {
        this.fsProvider = fsProvider;
    }

    public async getFile(url: string): Promise<
        | {
              totalLength: () => string;
              on(
                  event: "data" | "end",
                  listener: (chunk?: Array<number>) => void
              ): void;
              pipe: (writer: {
                  on: (event: "close", listener: () => void) => {};
              }) => void;
          }
        | undefined
    > {
        const file = this.fsProvider.readFileSync(url);

        const readable = new ReadableString(file.toString());

        return {
            totalLength: () => file.length.toString(),
            on: (event: string, listener: (chunk: any) => any) =>
                readable.on(event, (chunk) => listener(chunk)),
            pipe: (writer: {
                on: (event: "close", listener: () => void) => {};
            }) => readable.pipe(writer as any),
        };
    }
}

export class HydrocMockChmodProvider implements IHydrocChmodProvider {
    public readonly mockFsNode: MockFsNode;
    public readonly pathSeparator: "\\" | "/";

    public constructor({
        mockFsNode,
        pathSeparator,
    }: {
        mockFsNode: MockFsNode;
        pathSeparator: "\\" | "/";
    }) {
        this.mockFsNode = mockFsNode;
        this.pathSeparator = pathSeparator;
    }

    public async setExecutableBit(
        path: string
    ): Promise<number | void | undefined> {
        return await new Promise<number | undefined>((resolve) => {
            const file = mockGetFileByPath(
                path,
                this.mockFsNode,
                this.pathSeparator
            );

            strict(file !== undefined);
            strict(file.kind == MockFsNodeKind.kFile);

            file.fileMode += "+x";

            return resolve(undefined);
        });
    }
}

class ReadableString extends Readable {
    private sent = false;

    constructor(private str: string) {
        super();
    }

    _read() {
        if (!this.sent) {
            this.push(Buffer.from(this.str));
            this.sent = true;
        } else {
            this.push(null);
        }
    }
}
class WritableString extends Writable {
    private sent = false;

    constructor(private str: string) {
        super();
    }

    _write() {
        if (!this.sent) {
            this.write(Buffer.from(this.str));
            this.sent = true;
        } else {
            this.write(null);
        }
    }
}

class WritableMockFile extends Writable {
    constructor(private mockFsFile: MockFsFile) {
        super();
    }

    _write(chunk: any) {
        this.mockFsFile.content = chunk.toString();
        this.write(chunk);
        this.emit("close");
    }
}
