import { IList } from "./list";
import { IMap } from "./map";
import { ISymbol } from "./symbol";
declare const dart: {
    core: {
        functionApply: (
            phunction: IFunction,
            positionalArguments?: IList<any> | undefined,
            namedArguments?: IMap<ISymbol, any> | undefined
        ) => any;
    };
};
export type IFunction = (...args: any[]) => any;
export class Function {
    public static apply(
        phunction: IFunction,
        positionalArguments?: IList<any> | undefined,
        namedArguments?: IMap<ISymbol, any> | undefined
    ): any {
        return dart.core.functionApply(
            phunction,
            positionalArguments,
            namedArguments
        );
    }
    private readonly _dart_getHashCode: () => number = undefined as any;
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
