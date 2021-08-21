import { IIterable } from "./iterable";
import { IList } from "./list";
import { IMap } from "./map";
import { ISymbol } from "./symbol";
import { Type } from "./type";
declare const dart: {
    core: {
        invocation: (this: void, invocation: IInvocation) => IInvocation;
        invocationMethod: (
            memberName: ISymbol,
            positionalArguments?: IIterable<Object | undefined> | undefined,
            namedArguments?: IMap<ISymbol, Object | undefined> | undefined
        ) => IInvocation;
        invocationGenericMethod: (
            memberName: ISymbol,
            typeArguments?: IIterable<Type> | undefined,
            positionalArguments?: IIterable<Object | undefined> | undefined,
            namedArguments?: IMap<ISymbol, Object | undefined> | undefined
        ) => IInvocation;
        invocationGetter: (name: ISymbol) => IInvocation;
        invocationSetter: (
            memberName: ISymbol,
            argument?: Object | undefined
        ) => IInvocation;
    };
};
export interface IInvocation {
    getMemberName: () => ISymbol;
    getTypeArguments: () => IList<Type>;
    getPositionalArguments: () => IList<any>;
    getNamedArguments: () => IMap<ISymbol, any>;
    getIsMethod: () => boolean;
    getIsGetter: () => boolean;
    getIsSetter: () => boolean;
    getIsAccessor: () => boolean;
}
export class Invocation {
    public constructor() {
        dart.core.invocation(this);
    }
    public static method(
        memberName: ISymbol,
        positionalArguments?: IIterable<Object | undefined> | undefined,
        namedArguments?: IMap<ISymbol, Object | undefined> | undefined
    ): IInvocation {
        return dart.core.invocationMethod(
            memberName,
            positionalArguments,
            namedArguments
        );
    }
    public static genericMethod(
        memberName: ISymbol,
        typeArguments?: IIterable<Type> | undefined,
        positionalArguments?: IIterable<Object | undefined> | undefined,
        namedArguments?: IMap<ISymbol, Object | undefined> | undefined
    ): IInvocation {
        return dart.core.invocationGenericMethod(
            memberName,
            typeArguments,
            positionalArguments,
            namedArguments
        );
    }
    public static getter(name: ISymbol): IInvocation {
        return dart.core.invocationGetter(name);
    }
    public static setter(
        memberName: ISymbol,
        argument?: Object | undefined
    ): IInvocation {
        return dart.core.invocationSetter(memberName, argument);
    }
    private readonly _dart_getMemberName: () => ISymbol = undefined as any;
    private readonly _dart_getTypeArguments: () => IList<Type> =
        undefined as any;
    private readonly _dart_getPositionalArguments: () => IList<any> =
        undefined as any;
    private readonly _dart_getNamedArguments: () => IMap<ISymbol, any> =
        undefined as any;
    private readonly _dart_getIsMethod: () => boolean = undefined as any;
    private readonly _dart_getIsGetter: () => boolean = undefined as any;
    private readonly _dart_getIsSetter: () => boolean = undefined as any;
    private readonly _dart_getIsAccessor: () => boolean = undefined as any;
    public getMemberName(): ISymbol {
        return this._dart_getMemberName();
    }
    public getTypeArguments(): IList<Type> {
        return this._dart_getTypeArguments();
    }
    public getPositionalArguments(): IList<any> {
        return this._dart_getPositionalArguments();
    }
    public getNamedArguments(): IMap<ISymbol, any> {
        return this._dart_getNamedArguments();
    }
    public getIsMethod(): boolean {
        return this._dart_getIsMethod();
    }
    public getIsGetter(): boolean {
        return this._dart_getIsGetter();
    }
    public getIsSetter(): boolean {
        return this._dart_getIsSetter();
    }
    public getIsAccessor(): boolean {
        return this._dart_getIsAccessor();
    }
}
