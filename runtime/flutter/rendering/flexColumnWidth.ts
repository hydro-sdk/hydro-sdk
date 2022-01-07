import { IIterable } from "../../dart/core/iterable";
import { IRenderBox } from "./renderBox";
import { ITableColumnWidth } from "./tableColumnWidth";
declare const flutter: {
    rendering: {
        flexColumnWidth: (
            this: void,
            flexColumnWidth: IFlexColumnWidth,
            value: number
        ) => IFlexColumnWidth;
    };
};
export interface IFlexColumnWidth {
    value: number;
    minIntrinsicWidth: (
        cells: IIterable<IRenderBox>,
        containerWidth: number
    ) => number;
    maxIntrinsicWidth: (
        cells: IIterable<IRenderBox>,
        containerWidth: number
    ) => number;
    flex: (cells: IIterable<IRenderBox>) => number;
    toString: () => string;
    getHashCode: () => number;
}
export class FlexColumnWidth implements ITableColumnWidth {
    public readonly value: number = undefined as any;
    public constructor(value: number = 1.0) {
        flutter.rendering.flexColumnWidth(this, value);
    }
    private readonly _dart_minIntrinsicWidth: (
        cells: IIterable<IRenderBox>,
        containerWidth: number
    ) => number = undefined as any;
    private readonly _dart_maxIntrinsicWidth: (
        cells: IIterable<IRenderBox>,
        containerWidth: number
    ) => number = undefined as any;
    private readonly _dart_flex: (cells: IIterable<IRenderBox>) => number =
        undefined as any;
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
    public flex(cells: IIterable<IRenderBox>): number {
        return this._dart_flex(cells);
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
