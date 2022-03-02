import { IOffset } from "../../dart/ui/offset";
import { IContainerBoxParentData } from "../rendering/containerBoxParentData";
import { IContainerParentDataMixin } from "../rendering/containerParentDataMixin";
import { IRenderBox } from "../rendering/renderBox";
declare const flutter: {
    cupertino: {
        _segmentedControlContainerBoxParentData: (
            this: void,
            _segmentedControlContainerBoxParentData: I_SegmentedControlContainerBoxParentData
        ) => I_SegmentedControlContainerBoxParentData;
    };
};
export interface I_SegmentedControlContainerBoxParentData {
    previousSibling: IRenderBox | undefined;
    nextSibling: IRenderBox | undefined;
    offset: IOffset;
    detach: () => void;
    toString: () => string;
    getHashCode: () => number;
}
export class _SegmentedControlContainerBoxParentData
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
        flutter.cupertino._segmentedControlContainerBoxParentData(this);
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
