#!/usr/bin/env node

import { strict } from "assert";
import * as cp from "child_process";
import * as fs from "fs";
import * as path from "path";

import Axios from "axios";
import { Command, Option } from "commander";
import ProgressBar from "progress";

const defaultCacheDir = ".hydroc";

class Hydroc {
    public readonly cacheDir: string;
    public readonly sdkToolsDir: string;
    public readonly sdkToolsVersion: string;

    public readonly sdkTools = ["hc2Dart", "ts2hc", "luac52", "swid"];

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
        return `${toolName}-${process.platform}-${process.arch}${process.platform == "win32" ? ".exe" : ""
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
                await new Promise(async (resolve, reject) => {
                    const url = `https://github.com/hydro-sdk/hydro-sdk/releases/download/${this.sdkToolsVersion
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
                        `${this.sdkToolsDir}${path.sep
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
        } else {
            console.log("All Hydro-SDK tools exist");
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
            this.makeSdkToolPlatformPath({ toolName: "ts2hc", }),
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
    }: {
        project: string;
        ts2hc: string;
        profile: string;
    }) {
        return cp.spawn(
            this.makeSdkToolPlatformPath({ toolName: "build-project", }),
            [
                "--project",
                project,
                "--ts2hc",
                ts2hc,
                "--cache-dir",
                this.cacheDir,
                "--profile",
                profile,
            ],
            {
                stdio: "inherit",
            }
        );
    }
}

async function readSdkPackage({
    directory,
}: {
    directory: string;
}): Promise<
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
        .action(async (options) => {
            const hydroc = new Hydroc({
                sdkToolsVersion: options.toolsVersion ?? sdkPackage.version,
            });

            await hydroc.downloadMissingSdkTools();

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

    program.command("build")
        .description("Build the project given by --project")
        .addOption(new Option(
            "--project <project>",
            "The project description to use"
        ).default("hydro.json"))
        .addOption(new Option(
            "--profile <profile>",
            "The build profile to use for all chunks in the project"
        ).default("release"))
        .action(async (options) => {
            const hydroc = new Hydroc({
                sdkToolsVersion: options.toolsVersion ?? sdkPackage.version,
            });

            await hydroc.downloadMissingSdkTools();

            await new Promise((resolve, reject) => {
                const buildProject = hydroc.buildProject({
                    project: options.project,
                    profile: options.profile,
                    ts2hc: hydroc.makeSdkToolPlatformPath({ toolName: "ts2hc" })
                });

                buildProject.on("exit", (exitCode) =>
                    exitCode == 0 ? resolve(undefined) : reject(exitCode)
                );
            }).catch((err) => process.exit(err));
        })
        ;
    program.parse(process.argv);
})();
