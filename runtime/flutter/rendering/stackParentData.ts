import { IOffset } from "../../dart/ui/offset";
import { IContainerBoxParentData } from "./containerBoxParentData";
import { IContainerParentDataMixin } from "./containerParentDataMixin";
import { IRelativeRect } from "./relativeRect";
import { IRenderBox } from "./renderBox";
declare const flutter: {
    rendering: {
        stackParentData: (
            this: void,
            stackParentData: IStackParentData
        ) => IStackParentData;
    };
};
export interface IStackParentData {
    top: number | undefined;
    right: number | undefined;
    bottom: number | undefined;
    left: number | undefined;
    width: number | undefined;
    height: number | undefined;
    previousSibling: IRenderBox | undefined;
    nextSibling: IRenderBox | undefined;
    offset: IOffset;
    getRect: () => IRelativeRect;
    setRect: (value: IRelativeRect) => void;
    getIsPositioned: () => boolean;
    toString: () => string;
    detach: () => void;
    getHashCode: () => number;
}
export class StackParentData
    implements
        Omit<
            IContainerBoxParentData<IRenderBox>,
            "detach" | "previousSibling" | "nextSibling"
        >,
        IContainerParentDataMixin<IRenderBox>
{
    public readonly top: number | undefined = undefined as any;
    public readonly right: number | undefined = undefined as any;
    public readonly bottom: number | undefined = undefined as any;
    public readonly left: number | undefined = undefined as any;
    public readonly width: number | undefined = undefined as any;
    public readonly height: number | undefined = undefined as any;
    public readonly previousSibling: IRenderBox | undefined = undefined as any;
    public readonly nextSibling: IRenderBox | undefined = undefined as any;
    public readonly offset: IOffset = undefined as any;
    public constructor() {
        flutter.rendering.stackParentData(this);
    }
    private readonly _dart_getRect: () => IRelativeRect = undefined as any;
    private readonly _dart_setRect: (value: IRelativeRect) => void =
        undefined as any;
    private readonly _dart_getIsPositioned: () => boolean = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_detach: () => void = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public getRect(): IRelativeRect {
        return this._dart_getRect();
    }
    public setRect(value: IRelativeRect): void {
        return this._dart_setRect(value);
    }
    public getIsPositioned(): boolean {
        return this._dart_getIsPositioned();
    }
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
