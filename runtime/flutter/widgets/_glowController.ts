import { Duration } from "../../dart/core/duration";
import { ICanvas } from "../../dart/ui/canvas";
import { IColor } from "../../dart/ui/color";
import { ISize } from "../../dart/ui/size";
import { IChangeNotifier } from "../foundation/changeNotifier";
import { IListenable } from "../foundation/listenable";
import { Axis } from "../painting/axis";
import { ITickerProvider } from "../scheduler/tickerProvider";
declare const flutter: {
    widgets: {
        _glowController: (
            this: void,
            _glowController: I_GlowController,
            props: { axis: Axis; color: IColor; vsync: ITickerProvider }
        ) => I_GlowController;
    };
};
export interface I_GlowController {
    getColor: () => IColor;
    setColor: (value: IColor) => void;
    getAxis: () => Axis;
    setAxis: (value: Axis) => void;
    dispose: () => void;
    absorbImpact: (velocity: number) => void;
    pull: (
        overscroll: number,
        extent: number,
        crossAxisOffset: number,
        crossExtent: number
    ) => void;
    scrollEnd: () => void;
    paint: (canvas: ICanvas, size: ISize) => void;
    addListener: (listener: () => void) => void;
    removeListener: (listener: () => void) => void;
    getHasListeners: () => boolean;
    toString: () => string;
    getHashCode: () => number;
}
export class _GlowController implements IChangeNotifier, IListenable {
    public static _recedeTime = new Duration({ milliseconds: 600 });
    public static _pullTime = new Duration({ milliseconds: 167 });
    public static _pullHoldTime = new Duration({ milliseconds: 167 });
    public static _pullDecayTime = new Duration({ milliseconds: 2000 });
    public static _maxOpacity = 0.5;
    public static _pullOpacityGlowFactor = 0.8;
    public static _velocityGlowFactor = 0.00006;
    public static _sqrt3 = 1.73205080757;
    public static _widthToHeightFactor = Unknown * Unknown;
    public static _minVelocity = 100.0;
    public static _maxVelocity = 10000.0;
    public constructor(props: {
        axis: Axis;
        color: IColor;
        vsync: ITickerProvider;
    }) {
        flutter.widgets._glowController(this, props);
    }
    private readonly _dart_getColor: () => IColor = undefined as any;
    private readonly _dart_setColor: (value: IColor) => void = undefined as any;
    private readonly _dart_getAxis: () => Axis = undefined as any;
    private readonly _dart_setAxis: (value: Axis) => void = undefined as any;
    private readonly _dart_dispose: () => void = undefined as any;
    private readonly _dart_absorbImpact: (velocity: number) => void =
        undefined as any;
    private readonly _dart_pull: (
        overscroll: number,
        extent: number,
        crossAxisOffset: number,
        crossExtent: number
    ) => void = undefined as any;
    private readonly _dart_scrollEnd: () => void = undefined as any;
    private readonly _dart_paint: (canvas: ICanvas, size: ISize) => void =
        undefined as any;
    private readonly _dart_addListener: (listener: () => void) => void =
        undefined as any;
    private readonly _dart_removeListener: (listener: () => void) => void =
        undefined as any;
    private readonly _dart_notifyListeners: () => void = undefined as any;
    private readonly _dart_getHasListeners: () => boolean = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public getColor(): IColor {
        return this._dart_getColor();
    }
    public setColor(value: IColor): void {
        return this._dart_setColor(value);
    }
    public getAxis(): Axis {
        return this._dart_getAxis();
    }
    public setAxis(value: Axis): void {
        return this._dart_setAxis(value);
    }
    public dispose(): void {
        return this._dart_dispose();
    }
    public absorbImpact(velocity: number): void {
        return this._dart_absorbImpact(velocity);
    }
    public pull(
        overscroll: number,
        extent: number,
        crossAxisOffset: number,
        crossExtent: number
    ): void {
        return this._dart_pull(
            overscroll,
            extent,
            crossAxisOffset,
            crossExtent
        );
    }
    public scrollEnd(): void {
        return this._dart_scrollEnd();
    }
    public paint(canvas: ICanvas, size: ISize): void {
        return this._dart_paint(canvas, size);
    }
    public addListener(listener: () => void): void {
        return this._dart_addListener(listener);
    }
    public removeListener(listener: () => void): void {
        return this._dart_removeListener(listener);
    }
    public notifyListeners(): void {
        return this._dart_notifyListeners();
    }
    public getHasListeners(): boolean {
        return this._dart_getHasListeners();
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
