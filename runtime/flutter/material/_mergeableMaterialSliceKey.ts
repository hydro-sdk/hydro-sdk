import { ILocalKey } from "../foundation/localKey";
import { IBuildContext } from "../widgets/buildContext";
import { IGlobalKey } from "../widgets/globalKey";
import { IState } from "../widgets/state";
import { IStatefulWidget } from "../widgets/statefulWidget";
import { IWidget } from "../widgets/widget";
declare const flutter: {
    material: {
        _mergeableMaterialSliceKey: (
            this: void,
            _mergeableMaterialSliceKey: I_MergeableMaterialSliceKey,
            value: ILocalKey
        ) => I_MergeableMaterialSliceKey;
    };
};
export interface I_MergeableMaterialSliceKey {
    value: ILocalKey;
    getHashCode: () => number;
    toString: () => string;
    getCurrentContext: () => IBuildContext | undefined;
    getCurrentWidget: () => IWidget | undefined;
    getCurrentState: () => IState<IStatefulWidget> | undefined;
}
export class _MergeableMaterialSliceKey
    implements IGlobalKey<IState<IStatefulWidget>>
{
    public readonly value: ILocalKey = undefined as any;
    public constructor(value: ILocalKey) {
        flutter.material._mergeableMaterialSliceKey(this, value);
    }
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getCurrentContext: () => IBuildContext | undefined =
        undefined as any;
    private readonly _dart_getCurrentWidget: () => IWidget | undefined =
        undefined as any;
    private readonly _dart_getCurrentState: () =>
        | IState<IStatefulWidget>
        | undefined = undefined as any;
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
    public getCurrentState(): IState<IStatefulWidget> | undefined {
        return this._dart_getCurrentState();
    }
}
