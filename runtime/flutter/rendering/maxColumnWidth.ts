import { IIterable } from "../../dart/core/iterable";
import { IRenderBox } from "./renderBox";
import { ITableColumnWidth } from "./tableColumnWidth";
declare const flutter: {
    rendering: {
        maxColumnWidth: (
            this: void,
            maxColumnWidth: IMaxColumnWidth,
            a: ITableColumnWidth,
            b: ITableColumnWidth
        ) => IMaxColumnWidth;
    };
};
export interface IMaxColumnWidth {
    a: ITableColumnWidth;
    b: ITableColumnWidth;
    minIntrinsicWidth: (
        cells: IIterable<IRenderBox>,
        containerWidth: number
    ) => number;
    maxIntrinsicWidth: (
        cells: IIterable<IRenderBox>,
        containerWidth: number
    ) => number;
    flex: (cells: IIterable<IRenderBox>) => number | undefined;
    toString: () => string;
    getHashCode: () => number;
}
export class MaxColumnWidth implements ITableColumnWidth {
    public readonly a: ITableColumnWidth = undefined as any;
    public readonly b: ITableColumnWidth = undefined as any;
    public constructor(a: ITableColumnWidth, b: ITableColumnWidth) {
        flutter.rendering.maxColumnWidth(this, a, b);
    }
    private readonly _dart_minIntrinsicWidth: (
        cells: IIterable<IRenderBox>,
        containerWidth: number
    ) => number = undefined as any;
    private readonly _dart_maxIntrinsicWidth: (
        cells: IIterable<IRenderBox>,
        containerWidth: number
    ) => number = undefined as any;
    private readonly _dart_flex: (
        cells: IIterable<IRenderBox>
    ) => number | undefined = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public minIntrinsicWidth(
        cells: IIterable<IRenderBox>,
        containerWidth: number
    ): number {
        return this._dart_minIntrinsicWidth(cells, containerWidth);
    }
    public maxIntrinsicWidth(
        cells: IIterable<IRenderBox>,
        containerWidth: number
    ): number {
        return this._dart_maxIntrinsicWidth(cells, containerWidth);
    }
    public flex(cells: IIterable<IRenderBox>): number | undefined {
        return this._dart_flex(cells);
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
