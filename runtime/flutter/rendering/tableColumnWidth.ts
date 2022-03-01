
import { IIterable } from "../../dart/core/iterable";
import { IRenderBox } from "./renderBox";
declare const flutter: {
rendering: {
tableColumnWidth: (this: void, tableColumnWidth: ITableColumnWidth) => ITableColumnWidth
}
};
export interface ITableColumnWidth


{
minIntrinsicWidth: (cells: IIterable<IRenderBox>, containerWidth: number) => number;
maxIntrinsicWidth: (cells: IIterable<IRenderBox>, containerWidth: number) => number;
flex: (cells: IIterable<IRenderBox>) => number | undefined;
toString: () => string;
}export class TableColumnWidth


{public constructor(){
flutter.rendering.tableColumnWidth(this);}
    private readonly _dart_minIntrinsicWidth: (cells: IIterable<IRenderBox>, containerWidth: number) => number = undefined as any;
    private readonly _dart_maxIntrinsicWidth: (cells: IIterable<IRenderBox>, containerWidth: number) => number = undefined as any;
    private readonly _dart_flex: (cells: IIterable<IRenderBox>) => number | undefined = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
public minIntrinsicWidth(cells: IIterable<IRenderBox>, containerWidth: number) : number {
    return this._dart_minIntrinsicWidth(cells, containerWidth);
}
public maxIntrinsicWidth(cells: IIterable<IRenderBox>, containerWidth: number) : number {
    return this._dart_maxIntrinsicWidth(cells, containerWidth);
}
public flex(cells: IIterable<IRenderBox>) : number | undefined {
    return this._dart_flex(cells);
}
public toString() : string {
    return this._dart_toString();
}
}
