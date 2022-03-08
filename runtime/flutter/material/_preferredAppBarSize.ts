import { IOffset } from "../../dart/ui/offset";
import { ISize } from "../../dart/ui/size";
declare const flutter: {
    material: {
        _preferredAppBarSize: (
            this: void,
            _preferredAppBarSize: I_PreferredAppBarSize,
            toolbarHeight?: number | undefined,
            bottomHeight?: number | undefined
        ) => I_PreferredAppBarSize;
    };
};
export interface I_PreferredAppBarSize {
    toolbarHeight: number | undefined;
    bottomHeight: number | undefined;
    topLeft: (origin: IOffset) => IOffset;
    topCenter: (origin: IOffset) => IOffset;
    topRight: (origin: IOffset) => IOffset;
    centerLeft: (origin: IOffset) => IOffset;
    center: (origin: IOffset) => IOffset;
    centerRight: (origin: IOffset) => IOffset;
    bottomLeft: (origin: IOffset) => IOffset;
    bottomCenter: (origin: IOffset) => IOffset;
    bottomRight: (origin: IOffset) => IOffset;
    contains: (offset: IOffset) => boolean;
    toString: () => string;
    getWidth: () => number;
    getHeight: () => number;
    getAspectRatio: () => number;
    getIsEmpty: () => boolean;
    getShortestSide: () => number;
    getLongestSide: () => number;
    getFlipped: () => ISize;
    getHashCode: () => number;
    getIsInfinite: () => boolean;
    getIsFinite: () => boolean;
}
export class _PreferredAppBarSize implements ISize {
    public readonly toolbarHeight: number | undefined = undefined as any;
    public readonly bottomHeight: number | undefined = undefined as any;
    public constructor(
        toolbarHeight?: number | undefined,
        bottomHeight?: number | undefined
    ) {
        flutter.material._preferredAppBarSize(
            this,
            toolbarHeight,
            bottomHeight
        );
    }
    private readonly _dart_topLeft: (origin: IOffset) => IOffset =
        undefined as any;
    private readonly _dart_topCenter: (origin: IOffset) => IOffset =
        undefined as any;
    private readonly _dart_topRight: (origin: IOffset) => IOffset =
        undefined as any;
    private readonly _dart_centerLeft: (origin: IOffset) => IOffset =
        undefined as any;
    private readonly _dart_center: (origin: IOffset) => IOffset =
        undefined as any;
    private readonly _dart_centerRight: (origin: IOffset) => IOffset =
        undefined as any;
    private readonly _dart_bottomLeft: (origin: IOffset) => IOffset =
        undefined as any;
    private readonly _dart_bottomCenter: (origin: IOffset) => IOffset =
        undefined as any;
    private readonly _dart_bottomRight: (origin: IOffset) => IOffset =
        undefined as any;
    private readonly _dart_contains: (offset: IOffset) => boolean =
        undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getWidth: () => number = undefined as any;
    private readonly _dart_getHeight: () => number = undefined as any;
    private readonly _dart_getAspectRatio: () => number = undefined as any;
    private readonly _dart_getIsEmpty: () => boolean = undefined as any;
    private readonly _dart_getShortestSide: () => number = undefined as any;
    private readonly _dart_getLongestSide: () => number = undefined as any;
    private readonly _dart_getFlipped: () => ISize = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_getIsInfinite: () => boolean = undefined as any;
    private readonly _dart_getIsFinite: () => boolean = undefined as any;
    public topLeft(origin: IOffset): IOffset {
        return this._dart_topLeft(origin);
    }
    public topCenter(origin: IOffset): IOffset {
        return this._dart_topCenter(origin);
    }
    public topRight(origin: IOffset): IOffset {
        return this._dart_topRight(origin);
    }
    public centerLeft(origin: IOffset): IOffset {
        return this._dart_centerLeft(origin);
    }
    public center(origin: IOffset): IOffset {
        return this._dart_center(origin);
    }
    public centerRight(origin: IOffset): IOffset {
        return this._dart_centerRight(origin);
    }
    public bottomLeft(origin: IOffset): IOffset {
        return this._dart_bottomLeft(origin);
    }
    public bottomCenter(origin: IOffset): IOffset {
        return this._dart_bottomCenter(origin);
    }
    public bottomRight(origin: IOffset): IOffset {
        return this._dart_bottomRight(origin);
    }
    public contains(offset: IOffset): boolean {
        return this._dart_contains(offset);
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getWidth(): number {
        return this._dart_getWidth();
    }
    public getHeight(): number {
        return this._dart_getHeight();
    }
    public getAspectRatio(): number {
        return this._dart_getAspectRatio();
    }
    public getIsEmpty(): boolean {
        return this._dart_getIsEmpty();
    }
    public getShortestSide(): number {
        return this._dart_getShortestSide();
    }
    public getLongestSide(): number {
        return this._dart_getLongestSide();
    }
    public getFlipped(): ISize {
        return this._dart_getFlipped();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
    public getIsInfinite(): boolean {
        return this._dart_getIsInfinite();
    }
    public getIsFinite(): boolean {
        return this._dart_getIsFinite();
    }
}
