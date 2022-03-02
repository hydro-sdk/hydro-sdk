import { IOffset } from "../../dart/ui/offset";
import { IContainerBoxParentData } from "./containerBoxParentData";
import { IContainerParentDataMixin } from "./containerParentDataMixin";
import { FlexFit } from "./flexFit";
import { IRenderBox } from "./renderBox";
declare const flutter: {
    rendering: {
        flexParentData: (
            this: void,
            flexParentData: IFlexParentData
        ) => IFlexParentData;
    };
};
export interface IFlexParentData {
    flex: number | undefined;
    fit: FlexFit | undefined;
    previousSibling: IRenderBox | undefined;
    nextSibling: IRenderBox | undefined;
    offset: IOffset;
    toString: () => string;
    detach: () => void;
    getHashCode: () => number;
}
export class FlexParentData
    implements
        Omit<
            IContainerBoxParentData<IRenderBox>,
            "detach" | "previousSibling" | "nextSibling"
        >,
        IContainerParentDataMixin<IRenderBox>
{
    public readonly flex: number | undefined = undefined as any;
    public readonly fit: FlexFit | undefined = undefined as any;
    public readonly previousSibling: IRenderBox | undefined = undefined as any;
    public readonly nextSibling: IRenderBox | undefined = undefined as any;
    public readonly offset: IOffset = undefined as any;
    public constructor() {
        flutter.rendering.flexParentData(this);
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
