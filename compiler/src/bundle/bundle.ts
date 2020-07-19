import { bundlePrelude } from "./bundlePrelude";
import { BundleInfo } from "./bundleInfo";
import { BundleResult } from "./bundleResult";
import { findModuleDebugInfo } from "../ast/findModuleDebugInfo";
import { mangleSymbols } from "../ast/mangleSymbols";
import { ModuleDebugInfo } from "../ast/moduleDebugInfo";
import { hashText } from "../ast/hashText";

export function bundle(bundleInfo: BundleInfo): BundleResult {
    //inspired by https://github.com/LuaDist/squish
    let res: BundleResult = {
        bundle: "",
        debugSymbols: []
    };

    let entry = Object.values(bundleInfo.entries).find((x) => x.originalFileName == bundleInfo.entry);

    if (entry) {
        let bundleEntries = Object.values(bundleInfo.entries).filter((x) => x.originalFileName != bundleInfo.entry);

        let bundleLines = bundlePrelude.split(/\n/);

        bundleEntries.forEach((x) => {
            bundleLines.push(`package.preload["${x.moduleName}"] = (function (...)`)
            x.debugSymbols.forEach((dbg) => {
                dbg.lineStart += bundleLines.length;
                dbg.lineEnd += bundleLines.length;
            });
            bundleLines.push(...x.moduleText.split(/\n/));
            bundleLines.push("end)");
        });

        entry.debugSymbols.forEach((dbg) => {
            dbg.lineStart += bundleLines.length;
            dbg.lineEnd += bundleLines.length;
        });
        bundleLines.push(...entry.moduleText.split("\n"));

        res.bundle = bundleLines.join("\n");

        res.debugSymbols.push(
            ...bundleEntries.map((x) => x.debugSymbols).reduce((a, b) => a.concat(b)),
            ...entry.debugSymbols
        );

        let mainChunkSymbols = findModuleDebugInfo({
            originalFileName: "main_chunk",
            filename: "main_chunk",
            fileContent: res.bundle
        });

        mainChunkSymbols = mainChunkSymbols.filter((x) => {
            return !res.debugSymbols.some(
                (k) => k.lineStart == x.lineStart && k.lineEnd == x.lineEnd
            );
        }).filter(
            (x, i, a) => a.findIndex(
                k => (k.lineStart == x.lineStart && x.lineEnd == k.lineEnd)
            ) == i);

        mangleSymbols(
            mainChunkSymbols,
            (symbol: Readonly<ModuleDebugInfo>) => {
                return `main_chunk::${hashText(bundleLines[symbol.lineStart - 1])}`
            }
        );

        res.debugSymbols.push(...mainChunkSymbols);
    }
    return res;
}