import { IKey } from "../foundation/key";
import { IBuildContext } from "./buildContext";
import { IGlobalObjectKey } from "./globalObjectKey";
import { ISliverReorderableListState } from "./sliverReorderableListState";
import { IState } from "./state";
import { IStatefulWidget } from "./statefulWidget";
import { IWidget } from "./widget";
declare const flutter: {
    widgets: {
        _reorderableItemGlobalKey: (
            this: void,
            _reorderableItemGlobalKey: I_ReorderableItemGlobalKey,
            subKey: IKey,
            index: number,
            state: ISliverReorderableListState
        ) => I_ReorderableItemGlobalKey;
    };
};
export interface I_ReorderableItemGlobalKey {
    subKey: IKey;
    index: number;
    state: ISliverReorderableListState;
    value: Object;
    getHashCode: () => number;
    toString: () => string;
    getCurrentContext: () => IBuildContext | undefined;
    getCurrentWidget: () => IWidget | undefined;
    getCurrentState: () => IState<IStatefulWidget> | undefined;
}
export class _ReorderableItemGlobalKey
    implements IGlobalObjectKey<IState<IStatefulWidget>>
{
    public readonly subKey: IKey = undefined as any;
    public readonly index: number = undefined as any;
    public readonly state: ISliverReorderableListState = undefined as any;
    public readonly value: Object = undefined as any;
    public constructor(
        subKey: IKey,
        index: number,
        state: ISliverReorderableListState
    ) {
        flutter.widgets._reorderableItemGlobalKey(this, subKey, index, state);
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
