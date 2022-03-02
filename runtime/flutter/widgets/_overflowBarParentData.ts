import { IOffset } from "../../dart/ui/offset";
import { IContainerBoxParentData } from "../rendering/containerBoxParentData";
import { IContainerParentDataMixin } from "../rendering/containerParentDataMixin";
import { IRenderBox } from "../rendering/renderBox";
declare const flutter: {
    widgets: {
        _overflowBarParentData: (
            this: void,
            _overflowBarParentData: I_OverflowBarParentData
        ) => I_OverflowBarParentData;
    };
};
export interface I_OverflowBarParentData {
    previousSibling: IRenderBox | undefined;
    nextSibling: IRenderBox | undefined;
    offset: IOffset;
    detach: () => void;
    toString: () => string;
    getHashCode: () => number;
}
export class _OverflowBarParentData
    implements
        Omit<
            IContainerBoxParentData<IRenderBox>,
            "detach" | "previousSibling" | "nextSibling"
        >,
        IContainerParentDataMixin<IRenderBox>
{
    public readonly previousSibling: IRenderBox | undefined = undefined as any;
    public readonly nextSibling: IRenderBox | undefined = undefined as any;
    public readonly offset: IOffset = undefined as any;
    public constructor() {
        flutter.widgets._overflowBarParentData(this);
    }
    private readonly _dart_detach: () => void = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public detach(): void {
        return this._dart_detach();
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
