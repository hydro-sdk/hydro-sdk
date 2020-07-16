import { ModuleDebugInfo } from "./moduleDebugInfo";

export function mangleSymbols(symbols: Array<ModuleDebugInfo>): void {
    symbols.forEach((x) => {
        let paramSuffix = x.parameterNames.length > 0 ? x.parameterNames.join("_") : "";
        x.symbolMangleName = `${x.symbolName}${paramSuffix ? `::${paramSuffix}` : ""}`;
    });
}