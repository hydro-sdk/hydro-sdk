import { bundlePrelude } from "./bundlePrelude";
import { BundleInfo } from "./bundleInfo";
import { BundleResult } from "./bundleResult";

export function bundle(bundleInfo: BundleInfo): BundleResult {
    //inspired by https://github.com/LuaDist/squish
    let res: BundleResult = {
        bundle: "",
        debugSymbols: []
    };

    let entry = bundleInfo.entries.find((x) => x.originalFileName == bundleInfo.entry);

    if (entry) {
        let bundleEntries = bundleInfo.entries.filter((x) => x.originalFileName != bundleInfo.entry);

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
    }
    return res;
}