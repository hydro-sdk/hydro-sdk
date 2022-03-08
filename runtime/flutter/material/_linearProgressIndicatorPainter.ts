import { IList } from "../../dart/core/list";
import { ICanvas } from "../../dart/ui/canvas";
import { IColor } from "../../dart/ui/color";
import { IOffset } from "../../dart/ui/offset";
import { ISize } from "../../dart/ui/size";
import { TextDirection } from "../../dart/ui/textDirection";
import { Interval } from "../animation/interval";
import { ICustomPainter } from "../rendering/customPainter";
import { ICustomPainterSemantics } from "../rendering/customPainterSemantics";
declare const flutter: {
    material: {
        _linearProgressIndicatorPainter: (
            this: void,
            _linearProgressIndicatorPainter: I_LinearProgressIndicatorPainter,
            props: {
                value?: number | undefined;
                animationValue: number;
                backgroundColor: IColor;
                textDirection: TextDirection;
                valueColor: IColor;
            }
        ) => I_LinearProgressIndicatorPainter;
    };
};
export interface I_LinearProgressIndicatorPainter {
    backgroundColor: IColor;
    valueColor: IColor;
    value: number | undefined;
    animationValue: number;
    textDirection: TextDirection;
    paint: (canvas: ICanvas, size: ISize) => void;
    shouldRepaint: (oldPainter: unknown) => boolean;
    addListener: (listener: () => void) => void;
    removeListener: (listener: () => void) => void;
    shouldRebuildSemantics: (oldDelegate: unknown) => boolean;
    hitTest: (position: IOffset) => boolean | undefined;
    toString: () => string;
    getSemanticsBuilder: () => (
        size: ISize
    ) => IList<ICustomPainterSemantics> | undefined;
    getHashCode: () => number;
}
export class _LinearProgressIndicatorPainter implements ICustomPainter {
    public static line1Head = new Interval(0.0, 750.0 / Unknown);
    public static line1Tail = new Interval(333.0 / Unknown, Unknown / Unknown);
    public static line2Head = new Interval(1000.0 / Unknown, Unknown / Unknown);
    public static line2Tail = new Interval(1267.0 / Unknown, Unknown / Unknown);
    public readonly backgroundColor: IColor = undefined as any;
    public readonly valueColor: IColor = undefined as any;
    public readonly value: number | undefined = undefined as any;
    public readonly animationValue: number = undefined as any;
    public readonly textDirection: TextDirection = undefined as any;
    public constructor(props: {
        value?: number | undefined;
        animationValue: number;
        backgroundColor: IColor;
        textDirection: TextDirection;
        valueColor: IColor;
    }) {
        flutter.material._linearProgressIndicatorPainter(this, props);
    }
    private readonly _dart_paint: (canvas: ICanvas, size: ISize) => void =
        undefined as any;
    private readonly _dart_shouldRepaint: (oldPainter: any) => boolean =
        undefined as any;
    private readonly _dart_addListener: (listener: () => void) => void =
        undefined as any;
    private readonly _dart_removeListener: (listener: () => void) => void =
        undefined as any;
    private readonly _dart_shouldRebuildSemantics: (
        oldDelegate: any
    ) => boolean = undefined as any;
    private readonly _dart_hitTest: (position: IOffset) => boolean | undefined =
        undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getSemanticsBuilder: () => (
        size: ISize
    ) => IList<ICustomPainterSemantics> | undefined = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public paint(canvas: ICanvas, size: ISize): void {
        return this._dart_paint(canvas, size);
    }
    public shouldRepaint(oldPainter: any): boolean {
        return this._dart_shouldRepaint(oldPainter);
    }
    public addListener(listener: () => void): void {
        return this._dart_addListener(listener);
    }
    public removeListener(listener: () => void): void {
        return this._dart_removeListener(listener);
    }
    public shouldRebuildSemantics(oldDelegate: any): boolean {
        return this._dart_shouldRebuildSemantics(oldDelegate);
    }
    public hitTest(position: IOffset): boolean | undefined {
        return this._dart_hitTest(position);
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getSemanticsBuilder(): (
        size: ISize
    ) => IList<ICustomPainterSemantics> | undefined {
        return this._dart_getSemanticsBuilder();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
