import { IList } from "../../dart/core/list";
import { IValueNotifier } from "../foundation/valueNotifier";
import { IBuildContext } from "./buildContext";
declare const flutter: {
    widgets: {
        _draggableSheetExtent: (
            this: void,
            _draggableSheetExtent: I_DraggableSheetExtent,
            props: {
                currentSize?: IValueNotifier<number> | undefined;
                hasChanged?: boolean | undefined;
                initialSize: number;
                maxSize: number;
                minSize: number;
                onSizeChanged: () => void;
                snap: boolean;
                snapSizes: IList<number>;
            }
        ) => I_DraggableSheetExtent;
    };
};
export interface I_DraggableSheetExtent {
    minSize: number;
    maxSize: number;
    snap: boolean;
    snapSizes: IList<number>;
    initialSize: number;
    availablePixels: number;
    hasChanged: boolean;
    getIsAtMin: () => boolean;
    getIsAtMax: () => boolean;
    setCurrentSize: (value: number) => void;
    getCurrentSize: () => number;
    getCurrentPixels: () => number;
    getAdditionalMinSize: () => number;
    getAdditionalMaxSize: () => number;
    getPixelSnapSizes: () => IList<number>;
    addPixelDelta: (delta: number, context: IBuildContext) => void;
    updateSize: (newSize: number, context: IBuildContext) => void;
    pixelsToSize: (pixels: number) => number;
    sizeToPixels: (extent: number) => number;
    dispose: () => void;
    copyWith: (props: {
        initialSize: number;
        maxSize: number;
        minSize: number;
        onSizeChanged: () => void;
        snap: boolean;
        snapSizes: IList<number>;
    }) => I_DraggableSheetExtent;
}
export class _DraggableSheetExtent {
    public readonly minSize: number = undefined as any;
    public readonly maxSize: number = undefined as any;
    public readonly snap: boolean = undefined as any;
    public readonly snapSizes: IList<number> = undefined as any;
    public readonly initialSize: number = undefined as any;
    public readonly availablePixels: number = undefined as any;
    public readonly hasChanged: boolean = undefined as any;
    public constructor(props: {
        currentSize?: IValueNotifier<number> | undefined;
        hasChanged?: boolean | undefined;
        initialSize: number;
        maxSize: number;
        minSize: number;
        onSizeChanged: () => void;
        snap: boolean;
        snapSizes: IList<number>;
    }) {
        flutter.widgets._draggableSheetExtent(this, props);
    }
    private readonly _dart_getIsAtMin: () => boolean = undefined as any;
    private readonly _dart_getIsAtMax: () => boolean = undefined as any;
    private readonly _dart_setCurrentSize: (value: number) => void =
        undefined as any;
    private readonly _dart_getCurrentSize: () => number = undefined as any;
    private readonly _dart_getCurrentPixels: () => number = undefined as any;
    private readonly _dart_getAdditionalMinSize: () => number =
        undefined as any;
    private readonly _dart_getAdditionalMaxSize: () => number =
        undefined as any;
    private readonly _dart_getPixelSnapSizes: () => IList<number> =
        undefined as any;
    private readonly _dart_addPixelDelta: (
        delta: number,
        context: IBuildContext
    ) => void = undefined as any;
    private readonly _dart_updateSize: (
        newSize: number,
        context: IBuildContext
    ) => void = undefined as any;
    private readonly _dart_pixelsToSize: (pixels: number) => number =
        undefined as any;
    private readonly _dart_sizeToPixels: (extent: number) => number =
        undefined as any;
    private readonly _dart_dispose: () => void = undefined as any;
    private readonly _dart_copyWith: (props: {
        initialSize: number;
        maxSize: number;
        minSize: number;
        onSizeChanged: () => void;
        snap: boolean;
        snapSizes: IList<number>;
    }) => I_DraggableSheetExtent = undefined as any;
    public getIsAtMin(): boolean {
        return this._dart_getIsAtMin();
    }
    public getIsAtMax(): boolean {
        return this._dart_getIsAtMax();
    }
    public setCurrentSize(value: number): void {
        return this._dart_setCurrentSize(value);
    }
    public getCurrentSize(): number {
        return this._dart_getCurrentSize();
    }
    public getCurrentPixels(): number {
        return this._dart_getCurrentPixels();
    }
    public getAdditionalMinSize(): number {
        return this._dart_getAdditionalMinSize();
    }
    public getAdditionalMaxSize(): number {
        return this._dart_getAdditionalMaxSize();
    }
    public getPixelSnapSizes(): IList<number> {
        return this._dart_getPixelSnapSizes();
    }
    public addPixelDelta(delta: number, context: IBuildContext): void {
        return this._dart_addPixelDelta(delta, context);
    }
    public updateSize(newSize: number, context: IBuildContext): void {
        return this._dart_updateSize(newSize, context);
    }
    public pixelsToSize(pixels: number): number {
        return this._dart_pixelsToSize(pixels);
    }
    public sizeToPixels(extent: number): number {
        return this._dart_sizeToPixels(extent);
    }
    public dispose(): void {
        return this._dart_dispose();
    }
    public copyWith(props: {
        initialSize: number;
        maxSize: number;
        minSize: number;
        onSizeChanged: () => void;
        snap: boolean;
        snapSizes: IList<number>;
    }): I_DraggableSheetExtent {
        return this._dart_copyWith(props);
    }
}
