declare const dart: {
    core: {
        symbol: (this: void, symbol: ISymbol, name: string) => ISymbol;
    };
};
export interface ISymbol {
    getHashCode: () => number;
}
export class Symbol {
    public static unaryMinus = new Symbol("unary-");
    public static empty = new Symbol("");
    public constructor(name: string) {
        dart.core.symbol(this, name);
    }
    private readonly _dart_getHashCode: () => number = undefined as any;
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
