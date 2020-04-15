import * as fs from "fs";
import * as cp from "child_process";
import * as crypto from "crypto";

import * as minimist from "minimist";
import * as chalk from "chalk";
import * as rimraf from "rimraf";
import * as chokidar from "chokidar";

import { BuildOptions } from "./src/ts/buildOptions";
import { configHash } from "./src/ts/configHash";

import { transpileFiles, CompilerOptions, LuaTarget, LuaLibImportKind } from "typescript-to-lua";
import { maybeReturnExecutableExtension } from "./src/ts/maybeReturnExecutableExtension";
import { reconcileResourcePath } from "./src/ts/reconcileResourcePath";

const argv = minimist(process.argv.slice(2));

const entry = argv.t;
const modName = argv.m;
const outDir = argv.d;
const profile = argv.p;

const clean = argv.clean;

if (clean) {
    rimraf.sync(".hydroc");
    process.exit(0);
}

const watch = argv.w;

if (!entry) {
    console.log("Entry file must be specified with -t switch");
    process.exit(1);
}
else {
    if (!fs.statSync(entry)) {
        console.log("Entry file does not exist");
        process.exit(1);
    }
}

if (!modName) {
    console.log("Output module name must be specified with -m switch");
    process.exit(1);
}

if (!outDir) {
    console.log("Output directory must be specified with -d switch");
    process.exit(1);
}

if (!fs.existsSync(".hydroc")) {
    fs.mkdirSync(".hydroc");
}

function transpileTS(config: BuildOptions): void {
    const buildHash = configHash(config);
    console.log(`Build ${chalk.yellow(buildHash)}`);

    const tempDir = `.hydroc/${buildHash}`;
    const tempFile = `.hydroc/${buildHash}/${config.modName}`;
    const outFile = `${config.outDir}/${config.modName}.hc`;
    const outFileHash = `${config.outDir}/${config.modName}.hc.sha256`;

    fs.mkdirSync(config.outDir, { recursive: true });
    fs.mkdirSync(tempDir, { recursive: true });

    const tstlOpt: CompilerOptions = {
        strict: true,
        sourceMapTraceback: false,
        luaTarget: LuaTarget.Lua52,
        luaLibImport: LuaLibImportKind.Require,
        luaBundleEntry: config.entry,
        luaBundle: tempFile
    };

    const res = transpileFiles([config.entry], tstlOpt);
    fs.writeFileSync(tempFile, res.emitResult[0].text);

    cp.execSync(`${reconcileResourcePath(`res/${process.platform}/luac52${maybeReturnExecutableExtension()}`)} ${config.profile == "release" ? "-s" : ""} -o ${outFile} ${tempFile}`);

    const hash = crypto.createHash("sha256");
    hash.update(fs.readFileSync(outFile).toString());
    fs.writeFileSync(outFileHash, hash.digest("hex"));

    console.log(`${chalk.green(config.entry)} ----> ${chalk.blue(outFile)}`);
    console.log(`${chalk.green(config.entry)} ----> ${chalk.blue(outFileHash)}`);
}

if (watch !== undefined) {

    chokidar.watch(watch).on("all", () => {
        transpileTS({
            entry: entry,
            modName: modName,
            outDir: outDir,
            profile: profile
        });
    });
}

else {
    transpileTS({
        entry: entry,
        modName: modName,
        outDir: outDir,
        profile: profile
    });
}
