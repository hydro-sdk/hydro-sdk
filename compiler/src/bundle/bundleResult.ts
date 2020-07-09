import { ModuleDebugInfo } from "../ast/moduleDebugInfo";

export interface BundleResult {
    bundle: string;
    debugSymbols: Array<ModuleDebugInfo>;
}