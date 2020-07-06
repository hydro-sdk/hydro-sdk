export interface ModuleDebugInfo {
    lineStart: number;
    lineEnd: number;
    symbolName: string;
    fileName: string;
    moduleName: string;
    originalFileName: string;
    originalLineStart: number;
    originalLineEnd: number
}