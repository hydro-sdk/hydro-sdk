import { IKey } from "../foundation/key";
import { IBuildContext } from "./buildContext";
import { IState } from "./state";
import { IStatefulWidget } from "./statefulWidget";
import { IWidget } from "./widget";
declare const flutter: {
    widgets: {
        globalKey: <T>(
            this: void,
            globalKey: IGlobalKey<T>,
            props?: { debugLabel?: string | undefined }
        ) => IGlobalKey<T>;
    };
};
export interface IGlobalKey<T> {
    getCurrentContext: () => IBuildContext | undefined;
    getCurrentWidget: () => IWidget | undefined;
    getCurrentState: () => T | undefined;
    toString: () => string;
    getHashCode: () => number;
}
export class GlobalKey<T> implements IKey {
    public constructor(props?: { debugLabel?: string | undefined }) {
        flutter.widgets.globalKey(this, props);
    }
    private readonly _dart_getCurrentContext: () => IBuildContext | undefined =
        undefined as any;
    private readonly _dart_getCurrentWidget: () => IWidget | undefined =
        undefined as any;
    private readonly _dart_getCurrentState: () => T | undefined =
        undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public getCurrentContext(): IBuildContext | undefined {
        return this._dart_getCurrentContext();
    }
    public getCurrentWidget(): IWidget | undefined {
        return this._dart_getCurrentWidget();
    }
    public getCurrentState(): T | undefined {
        return this._dart_getCurrentState();
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
