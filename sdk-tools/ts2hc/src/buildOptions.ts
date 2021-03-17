export interface BuildOptions {
    entry: string;
    modName: string;
    outDir: string;
    cacheDir: string;
    profile: "debug" | "release";
}
