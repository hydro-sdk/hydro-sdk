#!/usr/bin/env node

import { strict } from "assert";
import * as cp from "child_process";
import * as fs from "fs";
import * as path from "path";

import Axios from "axios";
import { Command, Option } from "commander";
import ProgressBar from "progress";

const humanhash = require("humanhash");

const defaultCacheDir = ".hydroc";

class Hydroc {
    public readonly cacheDir: string;
    public readonly sdkToolsDir: string;
    public readonly sdkToolsVersion: string;

    public readonly sdkTools = [
        "hc2Dart",
        "ts2hc",
        "luac52",
        "swid",
        "build-project",
        "run-project",
        "codepush",
    ];

    public constructor({ sdkToolsVersion }: { sdkToolsVersion: string }) {
        strict(sdkToolsVersion !== undefined && sdkToolsVersion !== "");

        this.cacheDir = `.hydroc${path.sep}${sdkToolsVersion}`;
        this.sdkToolsDir = `${this.cacheDir}${path.sep}sdk-tools`;

        this.sdkToolsVersion = sdkToolsVersion;
    }

    public ensureSdkToolsDirectoryExists(): void {
        if (!fs.existsSync(this.sdkToolsDir)) {
            fs.mkdirSync(this.sdkToolsDir, { recursive: true });
        }
    }

    public makeSdkToolPlatformName({
        toolName,
    }: {
        toolName: string;
    }): Readonly<string> {
        return `${toolName}-${process.platform}-${process.arch}${
            process.platform == "win32" ? ".exe" : ""
        }`;
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
                !fs.existsSync(
                    `${this.sdkToolsDir}${
                        path.sep
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
                await new Promise(async (resolve, reject) => {
                    const url = `https://github.com/hydro-sdk/hydro-sdk/releases/download/${
                        this.sdkToolsVersion
                    }/${this.makeSdkToolPlatformName({
                        toolName: missingSdkTool,
                    })}`;

                    const { data, headers } = await Axios({
                        url,
                        method: "GET",
                        responseType: "stream",
                    });
                    const totalLength = headers["content-length"];

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

                    const writer = fs.createWriteStream(
                        `${this.sdkToolsDir}${
                            path.sep
                        }${this.makeSdkToolPlatformName({
                            toolName: missingSdkTool,
                        })}`
                    );

                    data.on("data", (chunk: any) =>
                        progressBar.tick(chunk.length)
                    );
                    data.on("end", () => resolve(undefined));
                    data.pipe(writer);
                });
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
            ],
            {
                stdio: "inherit",
            }
        );
    }
}

async function readSdkPackage({ directory }: { directory: string }): Promise<
    | Readonly<{
          version: string;
      }>
    | undefined
> {
    try {
        return JSON.parse(
            fs.readFileSync(`${directory}${path.sep}package.json`).toString()
        );
    } catch (err) {
        console.error(err);
        return undefined;
    }
}

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
