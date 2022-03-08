import { IList } from "../../dart/core/list";
import { ICanvas } from "../../dart/ui/canvas";
import { IColor } from "../../dart/ui/color";
import { IOffset } from "../../dart/ui/offset";
import { ISize } from "../../dart/ui/size";
import { ICustomPainter } from "../rendering/customPainter";
import { ICustomPainterSemantics } from "../rendering/customPainterSemantics";
declare const flutter: {
    material: {
        _circularProgressIndicatorPainter: (
            this: void,
            _circularProgressIndicatorPainter: I_CircularProgressIndicatorPainter,
            props: {
                backgroundColor?: IColor | undefined;
                headValue: number;
                offsetValue: number;
                rotationValue: number;
                strokeWidth: number;
                tailValue: number;
                value?: number | undefined;
                valueColor: IColor;
            }
        ) => I_CircularProgressIndicatorPainter;
    };
};
export interface I_CircularProgressIndicatorPainter {
    backgroundColor: IColor | undefined;
    valueColor: IColor;
    value: number | undefined;
    headValue: number;
    tailValue: number;
    offsetValue: number;
    rotationValue: number;
    strokeWidth: number;
    arcStart: number;
    arcSweep: number;
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
export class _CircularProgressIndicatorPainter implements ICustomPainter {
    public static _epsilon = 0.001;
    public readonly backgroundColor: IColor | undefined = undefined as any;
    public readonly valueColor: IColor = undefined as any;
    public readonly value: number | undefined = undefined as any;
    public readonly headValue: number = undefined as any;
    public readonly tailValue: number = undefined as any;
    public readonly offsetValue: number = undefined as any;
    public readonly rotationValue: number = undefined as any;
    public readonly strokeWidth: number = undefined as any;
    public readonly arcStart: number = undefined as any;
    public readonly arcSweep: number = undefined as any;
    public constructor(props: {
        backgroundColor?: IColor | undefined;
        headValue: number;
        offsetValue: number;
        rotationValue: number;
        strokeWidth: number;
        tailValue: number;
        value?: number | undefined;
        valueColor: IColor;
    }) {
        flutter.material._circularProgressIndicatorPainter(this, props);
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
