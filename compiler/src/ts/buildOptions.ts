export interface BuildOptions {
    entry: string;
    modName: string;
    outDir: string;
    profile: "debug" | "release";
}