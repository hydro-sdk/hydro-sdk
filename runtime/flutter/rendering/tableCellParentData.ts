import { IOffset } from "../../dart/ui/offset";
import { IBoxParentData } from "./boxParentData";
import { TableCellVerticalAlignment } from "./tableCellVerticalAlignment";
declare const flutter: {
    rendering: {
        tableCellParentData: (
            this: void,
            tableCellParentData: ITableCellParentData
        ) => ITableCellParentData;
    };
};
export interface ITableCellParentData {
    verticalAlignment: TableCellVerticalAlignment | undefined;
    x: number | undefined;
    y: number | undefined;
    offset: IOffset;
    toString: () => string;
    detach: () => void;
    getHashCode: () => number;
}
export class TableCellParentData implements IBoxParentData {
    public readonly verticalAlignment: TableCellVerticalAlignment | undefined =
        undefined as any;
    public readonly x: number | undefined = undefined as any;
    public readonly y: number | undefined = undefined as any;
    public readonly offset: IOffset = undefined as any;
    public constructor() {
        flutter.rendering.tableCellParentData(this);
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
