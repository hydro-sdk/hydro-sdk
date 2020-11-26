import { InputLanguage } from "./../../compiler/src/buildOptions";
import { buildBundleInfo } from "./../../compiler/src/bundle/buildBundleInfo";
import { bundle } from "./../../compiler/src/bundle/bundle";

test("", async () => {
    const bundleInfo = await buildBundleInfo(
        {
            inputLanguage: InputLanguage.typescript,
            entry: "test/compiler/res/bundle-1.ts",
            modName: "bundle-1",
            outDir: "tmp",
            profile: "debug",
        },
        (currentStep, totalSteps, suffixMessage) => {}
    );

    const entries = Object.values(bundleInfo.entries);

    expect(entries.length).toBe(4);

    expect(
        entries.find((x) => x.moduleName == "test.compiler.res.bundle-1")
    ).toBeTruthy();
    expect(
        entries.find((x) => x.moduleName == "test.compiler.res.dir.bar")
    ).toBeTruthy();
    expect(
        entries.find((x) => x.moduleName == "test.compiler.res.dir.fooClass")
    ).toBeTruthy();
    expect(entries.find((x) => x.moduleName == "lualib_bundle")).toBeTruthy();

    const bundleResult = bundle(bundleInfo);

    expect(bundleResult.debugSymbols.length).toBe(136);
    expect(bundleResult.debugSymbols[0].lineStart).toBe(13);
    expect(bundleResult.debugSymbols[0].lineEnd).toBe(15);
    expect(bundleResult.debugSymbols[0].symbolName).toBe("____exports.bar");
    expect(bundleResult.debugSymbols[0].parameterNames).toStrictEqual(["self"]);

    expect(bundleResult.debugSymbols[1].lineStart).toBe(26);
    expect(bundleResult.debugSymbols[1].lineEnd).toBe(28);
    expect(bundleResult.debugSymbols[1].symbolName).toBe(
        "FooClass.prototype.____constructor"
    );
    expect(bundleResult.debugSymbols[0].parameterNames).toStrictEqual(["self"]);
});
