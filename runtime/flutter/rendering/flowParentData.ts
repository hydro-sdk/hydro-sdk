import { IOffset } from "../../dart/ui/offset";
import { IContainerBoxParentData } from "./containerBoxParentData";
import { IContainerParentDataMixin } from "./containerParentDataMixin";
import { IRenderBox } from "./renderBox";
declare const flutter: {
    rendering: {
        flowParentData: (
            this: void,
            flowParentData: IFlowParentData
        ) => IFlowParentData;
    };
};
export interface IFlowParentData {
    previousSibling: IRenderBox | undefined;
    nextSibling: IRenderBox | undefined;
    offset: IOffset;
    detach: () => void;
    toString: () => string;
    getHashCode: () => number;
}
export class FlowParentData
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
        flutter.rendering.flowParentData(this);
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
