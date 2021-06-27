import { buildBundleInfo } from "../../sdk-tools/ts2hc/src/bundle/buildBundleInfo";
import { bundle } from "../../sdk-tools/ts2hc/src/bundle/bundle";
import { LoggingBehaviour } from "../../sdk-tools/ts2hc/src/loggingBehaviour";
import { LogMgr } from "../../sdk-tools/ts2hc/src/logMgr";

test("", async () => {
    const bundleInfo = await buildBundleInfo(
        {
            entry: "test/ts2hc/res/bundle-1.ts",
            modName: "bundle-1",
            outDir: "tmp",
            profile: "debug",
            cacheDir: "tmp",
            baseUrl: undefined,
        },
        new LogMgr({ loggingBehaviour: LoggingBehaviour.stdout }),
        (currentStep, totalSteps, suffixMessage) => {}
    );

    const entries = Object.values(bundleInfo.entries);

    expect(entries.length).toBe(4);

    expect(
        entries.find((x) => x.moduleName == "test.ts2hc.res.bundle-1")
    ).toBeTruthy();
    expect(
        entries.find((x) => x.moduleName == "test.ts2hc.res.dir.bar")
    ).toBeTruthy();
    expect(
        entries.find((x) => x.moduleName == "test.ts2hc.res.dir.fooClass")
    ).toBeTruthy();
    expect(entries.find((x) => x.moduleName == "lualib_bundle")).toBeTruthy();

    const bundleResult = bundle(
        bundleInfo,
        new LogMgr({ loggingBehaviour: LoggingBehaviour.stdout })
    );

    expect(bundleResult.debugSymbols.length).toBe(150);
    expect(bundleResult.debugSymbols[0].lineStart).toBe(20);
    expect(bundleResult.debugSymbols[0].lineEnd).toBe(22);
    expect(bundleResult.debugSymbols[0].symbolName).toBe("____exports.bar");
    expect(bundleResult.debugSymbols[0].parameterNames).toStrictEqual(["self"]);

    expect(bundleResult.debugSymbols[1].lineStart).toBe(33);
    expect(bundleResult.debugSymbols[1].lineEnd).toBe(35);
    expect(bundleResult.debugSymbols[1].symbolName).toBe(
        "FooClass.prototype.____constructor"
    );
    expect(bundleResult.debugSymbols[0].parameterNames).toStrictEqual(["self"]);
});
