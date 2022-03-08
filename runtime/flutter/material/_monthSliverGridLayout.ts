import { ISliverGridGeometry } from "../rendering/sliverGridGeometry";
import { ISliverGridLayout } from "../rendering/sliverGridLayout";
declare const flutter: {
    material: {
        _monthSliverGridLayout: (
            this: void,
            _monthSliverGridLayout: I_MonthSliverGridLayout,
            props: {
                crossAxisCount: number;
                dayChildWidth: number;
                edgeChildWidth: number;
                reverseCrossAxis: boolean;
            }
        ) => I_MonthSliverGridLayout;
    };
};
export interface I_MonthSliverGridLayout {
    crossAxisCount: number;
    dayChildWidth: number;
    edgeChildWidth: number;
    reverseCrossAxis: boolean;
    getMinChildIndexForScrollOffset: (scrollOffset: number) => number;
    getMaxChildIndexForScrollOffset: (scrollOffset: number) => number;
    getGeometryForChildIndex: (index: number) => ISliverGridGeometry;
    computeMaxScrollOffset: (childCount: number) => number;
    toString: () => string;
    getHashCode: () => number;
}
export class _MonthSliverGridLayout implements ISliverGridLayout {
    public readonly crossAxisCount: number = undefined as any;
    public readonly dayChildWidth: number = undefined as any;
    public readonly edgeChildWidth: number = undefined as any;
    public readonly reverseCrossAxis: boolean = undefined as any;
    public constructor(props: {
        crossAxisCount: number;
        dayChildWidth: number;
        edgeChildWidth: number;
        reverseCrossAxis: boolean;
    }) {
        flutter.material._monthSliverGridLayout(this, props);
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
