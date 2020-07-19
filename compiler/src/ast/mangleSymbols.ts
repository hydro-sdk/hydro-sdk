import { ModuleDebugInfo } from "./moduleDebugInfo";

type SymbolWithParents = {
    symbol: ModuleDebugInfo;
    parents: Array<ModuleDebugInfo>;
};

export function mangleSymbols(
    symbols: Array<ModuleDebugInfo>,
    hashSymbol: (symbol: Readonly<ModuleDebugInfo>) => string
): void {
    /*
        Inspired by Rust's name mangling https://github.com/rust-lang/rfcs/blob/master/text/2603-rust-symbol-name-mangling-v0.md
        Inspired by Itanium C++'s lambda name mangling https://itanium-cxx-abi.github.io/cxx-abi/abi.html
        We're starting from the assumption that we have zero type information from the source language and only have insight into the output Lua.
        We've taken some liberties given that we're attempting to provide reasonable mangling for a dynamic language.
        Function type information is completely ignored. Function arity, along with parameter names and declaration order is used to disambiguate otherwise identical functions
        We're looking to output a format roughly equivalent to:
            <function-arity> ::= <function param1> _ <function paramn>
            <mangled-symbol> ::= <symbol-name> :: <function-arity> :: <disambiguation-index>
            <fully-qualified-mangled-symbol> ::= _L <sha256(filePath)> :: 
                                                 <mangled-parent-scope1> :: 
                                                 <mangled-parent-scopen> :: 
                                                 <mangled-symbol>

    */
    symbols.forEach((x) => {
        let paramSuffix = x.parameterNames.length > 0 ? x.parameterNames.join("_") : "";
        x.symbolMangleName = `${x.symbolName.replace(/\s/g, "_")}${paramSuffix ? `::${paramSuffix}` : ""}`;
    });

    symbols.sort((a, b) => a.lineStart - b.lineStart);

    /*
        This is effectively an extremely naive dominator analysis over the scopes of the functions in the current module.
        This will probably end up being a performance problem later.
    */

    let parentLevels: {
        [i: number]: Array<SymbolWithParents>
    } = {};
    symbols.forEach((x) => {
        let parents = new Array<ModuleDebugInfo>();
        symbols.forEach((k) => {
            if (x.lineStart == k.lineStart &&
                x.lineEnd == k.lineEnd &&
                x.columnStart == k.columnStart &&
                x.columnEnd == k.columnEnd) {
                return;
            }
            if (k.lineStart <= x.lineStart && k.lineEnd >= x.lineEnd) {
                parents.push(k);
            }
        });
        if (!parentLevels[parents.length]) {
            parentLevels[parents.length] = [];
        }
        parentLevels[parents.length] = [
            ...parentLevels[parents.length],
            {
                symbol: x,
                parents: parents,
            }
        ];
    });

    let symbolsWithParents = new Array<SymbolWithParents>();

    const buildParentQualifiers = (sym: Readonly<SymbolWithParents>) =>
        sym.parents.map((e) => `${e.symbolMangleName}::${e.symbolDisambiguationIndex}`).join("::");

    const buildFullyQualifiedName = (sym: Readonly<SymbolWithParents>) =>
        `_L${hashSymbol(sym.symbol)}${buildParentQualifiers(sym) ? `::${buildParentQualifiers(sym)}` : ""}::${sym.symbol.symbolMangleName}::${sym.symbol.symbolDisambiguationIndex}`;

    Object.keys(parentLevels).forEach((x) => {
        parentLevels[parseInt(x)].forEach((k) => {
            parentLevels[parseInt(x)].forEach((j) => {
                if (k.symbol.lineStart != j.symbol.lineStart) {
                    if (buildFullyQualifiedName(k) == buildFullyQualifiedName(j)) {
                        j.symbol.symbolDisambiguationIndex += 1;
                    }
                }
            });
            symbolsWithParents.push(k);
        });
    });

    symbolsWithParents.forEach((x) => {
        x.symbol.symbolFullyQualifiedMangleName = buildFullyQualifiedName(x);
    });
}