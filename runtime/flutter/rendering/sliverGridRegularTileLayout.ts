import { ISliverGridGeometry } from "./sliverGridGeometry";
import { ISliverGridLayout } from "./sliverGridLayout";
declare const flutter: {
    rendering: {
        sliverGridRegularTileLayout: (
            this: void,
            sliverGridRegularTileLayout: ISliverGridRegularTileLayout,
            props: {
                childCrossAxisExtent: number;
                childMainAxisExtent: number;
                crossAxisCount: number;
                crossAxisStride: number;
                mainAxisStride: number;
                reverseCrossAxis: boolean;
            }
        ) => ISliverGridRegularTileLayout;
    };
};
export interface ISliverGridRegularTileLayout {
    crossAxisCount: number;
    mainAxisStride: number;
    crossAxisStride: number;
    childMainAxisExtent: number;
    childCrossAxisExtent: number;
    reverseCrossAxis: boolean;
    getMinChildIndexForScrollOffset: (scrollOffset: number) => number;
    getMaxChildIndexForScrollOffset: (scrollOffset: number) => number;
    getGeometryForChildIndex: (index: number) => ISliverGridGeometry;
    computeMaxScrollOffset: (childCount: number) => number;
    toString: () => string;
    getHashCode: () => number;
}
export class SliverGridRegularTileLayout implements ISliverGridLayout {
    public readonly crossAxisCount: number = undefined as any;
    public readonly mainAxisStride: number = undefined as any;
    public readonly crossAxisStride: number = undefined as any;
    public readonly childMainAxisExtent: number = undefined as any;
    public readonly childCrossAxisExtent: number = undefined as any;
    public readonly reverseCrossAxis: boolean = undefined as any;
    public constructor(props: {
        childCrossAxisExtent: number;
        childMainAxisExtent: number;
        crossAxisCount: number;
        crossAxisStride: number;
        mainAxisStride: number;
        reverseCrossAxis: boolean;
    }) {
        flutter.rendering.sliverGridRegularTileLayout(this, props);
    }
    private readonly _dart_getMinChildIndexForScrollOffset: (
        scrollOffset: number
    ) => number = undefined as any;
    private readonly _dart_getMaxChildIndexForScrollOffset: (
        scrollOffset: number
    ) => number = undefined as any;
    private readonly _dart_getGeometryForChildIndex: (
        index: number
    ) => ISliverGridGeometry = undefined as any;
    private readonly _dart_computeMaxScrollOffset: (
        childCount: number
    ) => number = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public getMinChildIndexForScrollOffset(scrollOffset: number): number {
        return this._dart_getMinChildIndexForScrollOffset(scrollOffset);
    }
    public getMaxChildIndexForScrollOffset(scrollOffset: number): number {
        return this._dart_getMaxChildIndexForScrollOffset(scrollOffset);
    }
    public getGeometryForChildIndex(index: number): ISliverGridGeometry {
        return this._dart_getGeometryForChildIndex(index);
    }
    public computeMaxScrollOffset(childCount: number): number {
        return this._dart_computeMaxScrollOffset(childCount);
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
