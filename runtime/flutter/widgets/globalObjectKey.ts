import { IBuildContext } from "./buildContext";
import { IGlobalKey } from "./globalKey";
import { IState } from "./state";
import { IStatefulWidget } from "./statefulWidget";
import { IWidget } from "./widget";
declare const flutter: {
    widgets: {
        globalObjectKey: <T>(
            this: void,
            globalObjectKey: IGlobalObjectKey<T>,
            value: Object
        ) => IGlobalObjectKey<T>;
    };
};
export interface IGlobalObjectKey<T> {
    value: Object;
    getHashCode: () => number;
    toString: () => string;
    getCurrentContext: () => IBuildContext | undefined;
    getCurrentWidget: () => IWidget | undefined;
    getCurrentState: () => T | undefined;
}
export class GlobalObjectKey<T> implements IGlobalKey<T> {
    public readonly value: Object = undefined as any;
    public constructor(value: Object) {
        flutter.widgets.globalObjectKey(this, value);
    }
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getCurrentContext: () => IBuildContext | undefined =
        undefined as any;
    private readonly _dart_getCurrentWidget: () => IWidget | undefined =
        undefined as any;
    private readonly _dart_getCurrentState: () => T | undefined =
        undefined as any;
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getCurrentContext(): IBuildContext | undefined {
        return this._dart_getCurrentContext();
    }
    public getCurrentWidget(): IWidget | undefined {
        return this._dart_getCurrentWidget();
    }
    public getCurrentState(): T | undefined {
        return this._dart_getCurrentState();
    }
}
