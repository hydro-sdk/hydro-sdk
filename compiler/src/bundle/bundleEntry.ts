import { ModuleDebugInfo } from "../ast/moduleDebugInfo";

export type BundleEntry = {
    debugSymbols: Array<ModuleDebugInfo>;
    moduleText: string;
    originalFileHash: string;
} & Pick<ModuleDebugInfo, "moduleName" | "originalFileName">