export enum InputLanguage {
    typescript,
    haxe
}

export interface BuildOptions {
    inputLanguage: InputLanguage;
    entry: string;
    modName: string;
    outDir: string;
    profile: "debug" | "release";
}