import * as fs from "fs";
import * as cp from "child_process";
import * as crypto from "crypto";

import * as chalk from "chalk";
import * as ts from "typescript";

import { BuildOptions, InputLanguage } from "../buildOptions";
import { configHash } from "./../configHash";

import { setupArtifactDirectories } from "../setupArtifactDirectories";
import { compileByteCodeAndWriteHash } from "../compileByteCodeAndWriteHash";

export function transpileHx(config: BuildOptions & { inputLanguage: InputLanguage.haxe, classPath: Array<string>, mainClass: string }): void {
    const buildHash = configHash(config, [...config.classPath, "haxe"]);
    console.log(`Build ${chalk.yellow(buildHash)}`);

    const { outFileHash, outFile, tempFile } = setupArtifactDirectories(buildHash, config);

    let haxeCompilerPath = "haxe-4.0.5/haxe";

    if (!fs.existsSync(haxeCompilerPath)) {
        haxeCompilerPath = "haxe";
    }

    let haxeClassPaths = config.classPath.reduce((x) => ` -p ${x} `);

    cp.execSync(`${haxeCompilerPath} ${haxeClassPaths} -m ${config.mainClass} --dce full -D lua-vanilla --lua ${tempFile}`);

    compileByteCodeAndWriteHash(outFile, outFileHash, tempFile, config);

    console.log(`${chalk.keyword("orange")(config.entry)} ----> ${chalk.yellow(outFile)}`);
    console.log(`${chalk.keyword("orange")(config.entry)} ----> ${chalk.yellow(outFileHash)}`);
}