import { IIterable } from "../../dart/core/iterable";
import { IRenderBox } from "./renderBox";
import { ITableColumnWidth } from "./tableColumnWidth";
declare const flutter: {
    rendering: {
        fractionColumnWidth: (
            this: void,
            fractionColumnWidth: IFractionColumnWidth,
            value: number
        ) => IFractionColumnWidth;
    };
};
export interface IFractionColumnWidth {
    value: number;
    minIntrinsicWidth: (
        cells: IIterable<IRenderBox>,
        containerWidth: number
    ) => number;
    maxIntrinsicWidth: (
        cells: IIterable<IRenderBox>,
        containerWidth: number
    ) => number;
    toString: () => string;
    flex: (cells: IIterable<IRenderBox>) => number | undefined;
    getHashCode: () => number;
}
export class FractionColumnWidth implements ITableColumnWidth {
    public readonly value: number = undefined as any;
    public constructor(value: number) {
        flutter.rendering.fractionColumnWidth(this, value);
    }
    private readonly _dart_minIntrinsicWidth: (
        cells: IIterable<IRenderBox>,
        containerWidth: number
    ) => number = undefined as any;
    private readonly _dart_maxIntrinsicWidth: (
        cells: IIterable<IRenderBox>,
        containerWidth: number
    ) => number = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_flex: (
        cells: IIterable<IRenderBox>
    ) => number | undefined = undefined as any;
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
    public toString(): string {
        return this._dart_toString();
    }
    public flex(cells: IIterable<IRenderBox>): number | undefined {
        return this._dart_flex(cells);
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
