import { IKey } from "../foundation/key";
import { IBuildContext } from "../widgets/buildContext";
import { IGlobalObjectKey } from "../widgets/globalObjectKey";
import { IState } from "../widgets/state";
import { IStatefulWidget } from "../widgets/statefulWidget";
import { IWidget } from "../widgets/widget";
declare const flutter: {
    material: {
        _reorderableListViewChildGlobalKey: (
            this: void,
            _reorderableListViewChildGlobalKey: I_ReorderableListViewChildGlobalKey,
            subKey: IKey,
            state: IState<IStatefulWidget>
        ) => I_ReorderableListViewChildGlobalKey;
    };
};
export interface I_ReorderableListViewChildGlobalKey {
    subKey: IKey;
    state: IState<IStatefulWidget>;
    value: Object;
    getHashCode: () => number;
    toString: () => string;
    getCurrentContext: () => IBuildContext | undefined;
    getCurrentWidget: () => IWidget | undefined;
    getCurrentState: () => IState<IStatefulWidget> | undefined;
}
export class _ReorderableListViewChildGlobalKey
    implements IGlobalObjectKey<IState<IStatefulWidget>>
{
    public readonly subKey: IKey = undefined as any;
    public readonly state: IState<IStatefulWidget> = undefined as any;
    public readonly value: Object = undefined as any;
    public constructor(subKey: IKey, state: IState<IStatefulWidget>) {
        flutter.material._reorderableListViewChildGlobalKey(
            this,
            subKey,
            state
        );
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
