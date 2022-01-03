import { IBuildContext } from "./buildContext";
import { IGlobalKey } from "./globalKey";
import { IState } from "./state";
import { IStatefulWidget } from "./statefulWidget";
import { IWidget } from "./widget";
declare const flutter: {
    widgets: {
        labeledGlobalKey: <T>(
            this: void,
            labeledGlobalKey: ILabeledGlobalKey<T>,
            _debugLabel?: string | undefined
        ) => ILabeledGlobalKey<T>;
    };
};
export interface ILabeledGlobalKey<T> {
    toString: () => string;
    getCurrentContext: () => IBuildContext | undefined;
    getCurrentWidget: () => IWidget | undefined;
    getCurrentState: () => T | undefined;
    getHashCode: () => number;
}
export class LabeledGlobalKey<T> implements IGlobalKey<T> {
    public constructor(_debugLabel?: string | undefined) {
        flutter.widgets.labeledGlobalKey(this, _debugLabel);
    }
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getCurrentContext: () => IBuildContext | undefined =
        undefined as any;
    private readonly _dart_getCurrentWidget: () => IWidget | undefined =
        undefined as any;
    private readonly _dart_getCurrentState: () => T | undefined =
        undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
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
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
