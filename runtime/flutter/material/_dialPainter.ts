import { IList } from "../../dart/core/list";
import { ICanvas } from "../../dart/ui/canvas";
import { IColor } from "../../dart/ui/color";
import { IOffset } from "../../dart/ui/offset";
import { ISize } from "../../dart/ui/size";
import { TextDirection } from "../../dart/ui/textDirection";
import { ICustomPainter } from "../rendering/customPainter";
import { ICustomPainterSemantics } from "../rendering/customPainterSemantics";
import { I_TappableLabel } from "./_tappableLabel";
declare const flutter: {
    material: {
        _dialPainter: (
            this: void,
            _dialPainter: I_DialPainter,
            props: {
                accentColor: IColor;
                backgroundColor: IColor;
                dotColor: IColor;
                primaryLabels: IList<I_TappableLabel>;
                secondaryLabels: IList<I_TappableLabel>;
                selectedValue: number;
                textDirection: TextDirection;
                theta: number;
            }
        ) => I_DialPainter;
    };
};
export interface I_DialPainter {
    primaryLabels: IList<I_TappableLabel>;
    secondaryLabels: IList<I_TappableLabel>;
    backgroundColor: IColor;
    accentColor: IColor;
    dotColor: IColor;
    theta: number;
    textDirection: TextDirection;
    selectedValue: number;
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
export class _DialPainter implements ICustomPainter {
    public static _labelPadding = 28.0;
    public readonly primaryLabels: IList<I_TappableLabel> = undefined as any;
    public readonly secondaryLabels: IList<I_TappableLabel> = undefined as any;
    public readonly backgroundColor: IColor = undefined as any;
    public readonly accentColor: IColor = undefined as any;
    public readonly dotColor: IColor = undefined as any;
    public readonly theta: number = undefined as any;
    public readonly textDirection: TextDirection = undefined as any;
    public readonly selectedValue: number = undefined as any;
    public constructor(props: {
        accentColor: IColor;
        backgroundColor: IColor;
        dotColor: IColor;
        primaryLabels: IList<I_TappableLabel>;
        secondaryLabels: IList<I_TappableLabel>;
        selectedValue: number;
        textDirection: TextDirection;
        theta: number;
    }) {
        flutter.material._dialPainter(this, props);
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
