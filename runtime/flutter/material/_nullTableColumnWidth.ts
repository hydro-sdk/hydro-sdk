import { IIterable } from "../../dart/core/iterable";
import { IRenderBox } from "../rendering/renderBox";
import { ITableColumnWidth } from "../rendering/tableColumnWidth";
declare const flutter: {
    material: {
        _nullTableColumnWidth: (
            this: void,
            _nullTableColumnWidth: I_NullTableColumnWidth
        ) => I_NullTableColumnWidth;
    };
};
export interface I_NullTableColumnWidth {
    maxIntrinsicWidth: (
        cells: IIterable<IRenderBox>,
        containerWidth: number
    ) => number;
    minIntrinsicWidth: (
        cells: IIterable<IRenderBox>,
        containerWidth: number
    ) => number;
    flex: (cells: IIterable<IRenderBox>) => number | undefined;
    toString: () => string;
    getHashCode: () => number;
}
export class _NullTableColumnWidth implements ITableColumnWidth {
    public constructor() {
        flutter.material._nullTableColumnWidth(this);
    }
    private readonly _dart_maxIntrinsicWidth: (
        cells: IIterable<IRenderBox>,
        containerWidth: number
    ) => number = undefined as any;
    private readonly _dart_minIntrinsicWidth: (
        cells: IIterable<IRenderBox>,
        containerWidth: number
    ) => number = undefined as any;
    private readonly _dart_flex: (
        cells: IIterable<IRenderBox>
    ) => number | undefined = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public maxIntrinsicWidth(
        cells: IIterable<IRenderBox>,
        containerWidth: number
    ): number {
        return this._dart_maxIntrinsicWidth(cells, containerWidth);
    }
    public minIntrinsicWidth(
        cells: IIterable<IRenderBox>,
        containerWidth: number
    ): number {
        return this._dart_minIntrinsicWidth(cells, containerWidth);
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
