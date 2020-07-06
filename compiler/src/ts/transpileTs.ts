import * as fs from "fs";
import * as path from "path";
import * as cp from "child_process";

import * as chalk from "chalk";
import * as ts from "typescript";

import { BuildOptions, InputLanguage } from "../buildOptions";
import { configHash } from "../configHash";

import { transpileFiles, CompilerOptions, LuaTarget, LuaLibImportKind } from "typescript-to-lua";
import { setupArtifactDirectories } from "../setupArtifactDirectories";
import { compileByteCodeAndWriteHash } from "../compileByteCodeAndWriteHash";
import { makeRelativePath } from "../makeRelativePath";
import { reconcileResourcePath } from "../reconcileResourcePath";
import { bundlePrelude } from "./bundlePrelude";
import { insertFrameMapsInDeclarationSites } from "./insertFrameMapsInDeclarationSites";

export function transpileTS(config: BuildOptions & { inputLanguage: InputLanguage.typescript }): void {
    const buildHash = configHash(config);
    console.log(`Build ${chalk.yellow(buildHash)}`);

    const { outFileHash, outFile, tempFile, tempDir } = setupArtifactDirectories(buildHash, config);

    const tstlOpt: CompilerOptions = {
        strict: true,
        sourceMapTraceback: false,
        luaTarget: LuaTarget.Lua52,
        luaLibImport: LuaLibImportKind.Require,
        luaBundleEntry: config.entry,
        luaBundle: config.profile == "release" ? tempFile : undefined
    };

    const res = transpileFiles([config.entry], tstlOpt);

    if (res.diagnostics && res.diagnostics.length) {
        res.diagnostics.forEach((x) => {

            if (x.file) {
                const { line, character } = x.file.getLineAndCharacterOfPosition(x.start!);
                const message = ts.flattenDiagnosticMessageText(x.messageText, "\n");
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

    if (config.profile == "release") {
        fs.writeFileSync(tempFile, res.emitResult[0].text);
    } else if (config.profile == "debug") {
        let squishy = "";

        squishy += `Output "${config.modName}"\n`;

        squishy += `Main "${makeRelativePath(config.entry).split(".")[0]}.lua"\n`;

        for (let i = 0; i < res.emitResult.length; ++i) {
            const target = `${tempDir}/${makeRelativePath(res.emitResult[i].name)}`;
            const targetDir = path.dirname(target);
            fs.mkdirSync(targetDir, { recursive: true });

            fs.writeFileSync(target, res.emitResult[i].text);

            if (res.emitResult[i].name != `${makeRelativePath(config.entry).split(".")[0]}.lua`) {
                squishy += `Module "${makeRelativePath(res.emitResult[i].name).split(path.sep).join(".").split(".lua")[0]}" "${makeRelativePath(res.emitResult[i].name)}"\n`;
            }
        }

        fs.writeFileSync(`.hydroc/${configHash(config)}/squishy`, squishy);

        cp.execSync(`${reconcileResourcePath(`res/${process.platform}/lua52`)} ${reconcileResourcePath("res/squish.lua")}`, { cwd: `./${tempDir}`, });
        const rawOut = fs.readFileSync(`${tempDir}/${config.modName}`).toString();
        fs.writeFileSync(`${tempDir}/${config.modName}`, bundlePrelude.concat(rawOut));

    }

    compileByteCodeAndWriteHash(outFile, outFileHash, tempFile, config);

    console.log(`${chalk.blue(config.entry)} ----> ${chalk.yellow(outFile)}`);
    console.log(`${chalk.blue(config.entry)} ----> ${chalk.yellow(outFileHash)}`);
}