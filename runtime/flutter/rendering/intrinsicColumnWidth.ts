import { IIterable } from "../../dart/core/iterable";
import { IRenderBox } from "./renderBox";
import { ITableColumnWidth } from "./tableColumnWidth";
declare const flutter: {
    rendering: {
        intrinsicColumnWidth: (
            this: void,
            intrinsicColumnWidth: IIntrinsicColumnWidth,
            props?: { flex?: number | undefined }
        ) => IIntrinsicColumnWidth;
    };
};
export interface IIntrinsicColumnWidth {
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
export class IntrinsicColumnWidth implements ITableColumnWidth {
    public constructor(props?: { flex?: number | undefined }) {
        flutter.rendering.intrinsicColumnWidth(this, props);
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
