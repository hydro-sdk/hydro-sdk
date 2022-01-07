import { _IntrinsicDimension } from "./_intrinsicDimension";
declare const flutter: {
    rendering: {
        _intrinsicDimensionsCacheEntry: (
            this: void,
            _intrinsicDimensionsCacheEntry: I_IntrinsicDimensionsCacheEntry,
            dimension: _IntrinsicDimension,
            argument: number
        ) => I_IntrinsicDimensionsCacheEntry;
    };
};
export interface I_IntrinsicDimensionsCacheEntry {
    dimension: _IntrinsicDimension;
    argument: number;
    getHashCode: () => number;
}
export class _IntrinsicDimensionsCacheEntry {
    public readonly dimension: _IntrinsicDimension = undefined as any;
    public readonly argument: number = undefined as any;
    public constructor(dimension: _IntrinsicDimension, argument: number) {
        flutter.rendering._intrinsicDimensionsCacheEntry(
            this,
            dimension,
            argument
        );
    }
    private readonly _dart_getHashCode: () => number = undefined as any;
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
