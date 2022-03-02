import { IFuture } from "../../dart/async/future";
import { IDuration } from "../../dart/core/duration";
import { IList } from "../../dart/core/list";
import { ICurve } from "../animation/curve";
import { IChangeNotifier } from "../foundation/changeNotifier";
import { IListenable } from "../foundation/listenable";
import { ScrollDirection } from "./scrollDirection";
declare const flutter: {
    rendering: {
        viewportOffset: (
            this: void,
            viewportOffset: IViewportOffset
        ) => IViewportOffset;
        viewportOffsetFixed: (value: number) => IViewportOffset;
        viewportOffsetZero: () => IViewportOffset;
    };
};
export interface IViewportOffset {
    getPixels: () => number;
    getHasPixels: () => boolean;
    applyViewportDimension: (viewportDimension: number) => boolean;
    applyContentDimensions: (
        minScrollExtent: number,
        maxScrollExtent: number
    ) => boolean;
    correctBy: (correction: number) => void;
    jumpTo: (pixels: number) => void;
    animateTo: (
        to: number,
        props: { curve: ICurve; duration: IDuration }
    ) => IFuture<void>;
    moveTo: (
        to: number,
        props?: {
            clamp?: boolean | undefined;
            curve?: ICurve | undefined;
            duration?: IDuration | undefined;
        }
    ) => IFuture<void>;
    getUserScrollDirection: () => ScrollDirection;
    getAllowImplicitScrolling: () => boolean;
    toString: () => string;
    debugFillDescription: (description: IList<string>) => void;
    addListener: (listener: () => void) => void;
    removeListener: (listener: () => void) => void;
    dispose: () => void;
    getHasListeners: () => boolean;
    getHashCode: () => number;
}
export class ViewportOffset implements IChangeNotifier, IListenable {
    public constructor() {
        flutter.rendering.viewportOffset(this);
    }
    public static fixed(value: number): IViewportOffset {
        return flutter.rendering.viewportOffsetFixed(value);
    }
    public static zero(): IViewportOffset {
        return flutter.rendering.viewportOffsetZero();
    }
    private readonly _dart_getPixels: () => number = undefined as any;
    private readonly _dart_getHasPixels: () => boolean = undefined as any;
    private readonly _dart_applyViewportDimension: (
        viewportDimension: number
    ) => boolean = undefined as any;
    private readonly _dart_applyContentDimensions: (
        minScrollExtent: number,
        maxScrollExtent: number
    ) => boolean = undefined as any;
    private readonly _dart_correctBy: (correction: number) => void =
        undefined as any;
    private readonly _dart_jumpTo: (pixels: number) => void = undefined as any;
    private readonly _dart_animateTo: (
        to: number,
        props: { curve: ICurve; duration: IDuration }
    ) => IFuture<void> = undefined as any;
    private readonly _dart_moveTo: (
        to: number,
        props?: {
            clamp?: boolean | undefined;
            curve?: ICurve | undefined;
            duration?: IDuration | undefined;
        }
    ) => IFuture<void> = undefined as any;
    private readonly _dart_getUserScrollDirection: () => ScrollDirection =
        undefined as any;
    private readonly _dart_getAllowImplicitScrolling: () => boolean =
        undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_debugFillDescription: (
        description: IList<string>
    ) => void = undefined as any;
    private readonly _dart_addListener: (listener: () => void) => void =
        undefined as any;
    private readonly _dart_removeListener: (listener: () => void) => void =
        undefined as any;
    private readonly _dart_dispose: () => void = undefined as any;
    private readonly _dart_notifyListeners: () => void = undefined as any;
    private readonly _dart_getHasListeners: () => boolean = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public getPixels(): number {
        return this._dart_getPixels();
    }
    public getHasPixels(): boolean {
        return this._dart_getHasPixels();
    }
    public applyViewportDimension(viewportDimension: number): boolean {
        return this._dart_applyViewportDimension(viewportDimension);
    }
    public applyContentDimensions(
        minScrollExtent: number,
        maxScrollExtent: number
    ): boolean {
        return this._dart_applyContentDimensions(
            minScrollExtent,
            maxScrollExtent
        );
    }
    public correctBy(correction: number): void {
        return this._dart_correctBy(correction);
    }
    public jumpTo(pixels: number): void {
        return this._dart_jumpTo(pixels);
    }
    public animateTo(
        to: number,
        props: { curve: ICurve; duration: IDuration }
    ): IFuture<void> {
        return this._dart_animateTo(to, props);
    }
    public moveTo(
        to: number,
        props?: {
            clamp?: boolean | undefined;
            curve?: ICurve | undefined;
            duration?: IDuration | undefined;
        }
    ): IFuture<void> {
        return this._dart_moveTo(to, props);
    }
    public getUserScrollDirection(): ScrollDirection {
        return this._dart_getUserScrollDirection();
    }
    public getAllowImplicitScrolling(): boolean {
        return this._dart_getAllowImplicitScrolling();
    }
    public toString(): string {
        return this._dart_toString();
    }
    public debugFillDescription(description: IList<string>): void {
        return this._dart_debugFillDescription(description);
    }
    public addListener(listener: () => void): void {
        return this._dart_addListener(listener);
    }
    public removeListener(listener: () => void): void {
        return this._dart_removeListener(listener);
    }
    public dispose(): void {
        return this._dart_dispose();
    }
    public notifyListeners(): void {
        return this._dart_notifyListeners();
    }
    public getHasListeners(): boolean {
        return this._dart_getHasListeners();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
