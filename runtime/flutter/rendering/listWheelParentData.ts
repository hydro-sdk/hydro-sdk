import { IOffset } from "../../dart/ui/offset";
import { IContainerBoxParentData } from "./containerBoxParentData";
import { IContainerParentDataMixin } from "./containerParentDataMixin";
import { IRenderBox } from "./renderBox";
declare const flutter: {
    rendering: {
        listWheelParentData: (
            this: void,
            listWheelParentData: IListWheelParentData
        ) => IListWheelParentData;
    };
};
export interface IListWheelParentData {
    index: number | undefined;
    previousSibling: IRenderBox | undefined;
    nextSibling: IRenderBox | undefined;
    offset: IOffset;
    detach: () => void;
    toString: () => string;
    getHashCode: () => number;
}
export class ListWheelParentData
    implements
        Omit<
            IContainerBoxParentData<IRenderBox>,
            "detach" | "previousSibling" | "nextSibling"
        >,
        IContainerParentDataMixin<IRenderBox>
{
    public readonly index: number | undefined = undefined as any;
    public readonly previousSibling: IRenderBox | undefined = undefined as any;
    public readonly nextSibling: IRenderBox | undefined = undefined as any;
    public readonly offset: IOffset = undefined as any;
    public constructor() {
        flutter.rendering.listWheelParentData(this);
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
