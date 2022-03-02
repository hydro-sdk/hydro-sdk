import { IOffset } from "../../dart/ui/offset";
import { IContainerParentDataMixin } from "../rendering/containerParentDataMixin";
import { IMultiChildLayoutParentData } from "../rendering/multiChildLayoutParentData";
import { IRenderBox } from "../rendering/renderBox";
declare const flutter: {
    cupertino: {
        _actionButtonParentData: (
            this: void,
            _actionButtonParentData: I_ActionButtonParentData,
            props: { isPressed: boolean }
        ) => I_ActionButtonParentData;
    };
};
export interface I_ActionButtonParentData {
    isPressed: boolean;
    id: Object | undefined;
    previousSibling: IRenderBox | undefined;
    nextSibling: IRenderBox | undefined;
    offset: IOffset;
    toString: () => string;
    detach: () => void;
    getHashCode: () => number;
}
export class _ActionButtonParentData
    implements
        IMultiChildLayoutParentData,
        IContainerParentDataMixin<IRenderBox>
{
    public readonly isPressed: boolean = undefined as any;
    public readonly id: Object | undefined = undefined as any;
    public readonly previousSibling: IRenderBox | undefined = undefined as any;
    public readonly nextSibling: IRenderBox | undefined = undefined as any;
    public readonly offset: IOffset = undefined as any;
    public constructor(props: { isPressed?: boolean }) {
        flutter.cupertino._actionButtonParentData(this, {
            ..._actionButtonParentDataDefaultProps,
            ...props,
        });
    }
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_detach: () => void = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public toString(): string {
        return this._dart_toString();
    }
    public detach(): void {
        return this._dart_detach();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
const _actionButtonParentDataDefaultProps = {
    isPressed: false,
};
