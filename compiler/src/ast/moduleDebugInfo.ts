export interface ModuleDebugInfo {
    lineStart: number;
    lineEnd: number;
    columnStart: number;
    columnEnd: number;
    symbolName: string;
    fileName: string;
    moduleName: string;
    originalFileName: string;
    originalLineStart: number;
    originalColumnStart: number;
    parameterNames:Array<string>;
}