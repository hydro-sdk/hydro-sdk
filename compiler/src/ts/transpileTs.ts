import * as fs from "fs";

import * as chalk from "chalk";
import * as ts from "typescript";

import { BuildOptions, InputLanguage } from "../buildOptions";
import { configHash } from "../configHash";

import { transpileFiles, CompilerOptions, LuaTarget, LuaLibImportKind } from "typescript-to-lua";
import { setupArtifactDirectories } from "../setupArtifactDirectories";
import { compileByteCodeAndWriteHash } from "../compileByteCodeAndWriteHash";

export function transpileTS(config: BuildOptions & { inputLanguage: InputLanguage.typescript }): void {
    const buildHash = configHash(config);
    console.log(`Build ${chalk.yellow(buildHash)}`);

    const { outFileHash, outFile, tempFile } = setupArtifactDirectories(buildHash, config);

    const tstlOpt: CompilerOptions = {
        strict: true,
        sourceMapTraceback: false,
        luaTarget: LuaTarget.Lua52,
        luaLibImport: LuaLibImportKind.Require,
        luaBundleEntry: config.entry,
        luaBundle: tempFile
    };

    const res = transpileFiles([config.entry], tstlOpt);

    if (res.diagnostics && res.diagnostics.length) {
        res.diagnostics.forEach((x) => {

            if (x.file) {
                const { line, character } = x.file.getLineAndCharacterOfPosition(x.start!);
                const message = ts.flattenDiagnosticMessageText(x.messageText, "\n");
                // console.log(`${x.file.fileName} (${line + 1},${character + 1}): ${message}`);
                const fileNameMsg = chalk.blue(x.file.fileName);
                const lineMsg = chalk.yellow(line + 1);
                const characterMsg = chalk.yellow(character + 1);
                const diagMsg = chalk.red(message);

                console.log(`${fileNameMsg}:${lineMsg}:${characterMsg} - ${diagMsg}`);
            } else {
                const diagMsg = chalk.red(ts.flattenDiagnosticMessageText(x.messageText, "\n"));
                console.log(diagMsg);
            }
        });

        return;
    }

    fs.writeFileSync(tempFile, res.emitResult[0].text);

    compileByteCodeAndWriteHash(outFile, outFileHash, tempFile, config);

    console.log(`${chalk.blue(config.entry)} ----> ${chalk.yellow(outFile)}`);
    console.log(`${chalk.blue(config.entry)} ----> ${chalk.yellow(outFileHash)}`);
}