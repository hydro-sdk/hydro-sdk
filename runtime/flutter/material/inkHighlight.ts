import { Duration, IDuration } from "../../dart/core/duration";
import { ICanvas } from "../../dart/ui/canvas";
import { IColor } from "../../dart/ui/color";
import { IOffset } from "../../dart/ui/offset";
import { IPaint } from "../../dart/ui/paint";
import { IRect } from "../../dart/ui/rect";
import { TextDirection } from "../../dart/ui/textDirection";
import { IMatrix4 } from "../../vector_math/matrix4";
import { BorderRadius, IBorderRadius } from "../painting/borderRadius";
import { BoxShape } from "../painting/boxShape";
import { IShapeBorder } from "../painting/shapeBorder";
import { IRenderBox } from "../rendering/renderBox";
import { IInteractiveInkFeature } from "./interactiveInkFeature";
import { IMaterialInkController } from "./materialInkController";
declare const flutter: {
    material: {
        inkHighlight: (
            this: void,
            inkHighlight: IInkHighlight,
            props: {
                borderRadius?: IBorderRadius | undefined;
                customBorder?: IShapeBorder | undefined;
                fadeDuration: IDuration;
                onRemoved?: () => void | undefined;
                radius?: number | undefined;
                rectCallback?: () => IRect | undefined;
                shape: BoxShape;
                color: IColor;
                controller: IMaterialInkController;
                referenceBox: IRenderBox;
                textDirection: TextDirection;
            }
        ) => IInkHighlight;
    };
};
export interface IInkHighlight {
    referenceBox: IRenderBox;
    onRemoved: () => void | undefined;
    getActive: () => boolean;
    activate: () => void;
    deactivate: () => void;
    dispose: () => void;
    paintFeature: (canvas: ICanvas, transform: IMatrix4) => void;
    confirm: () => void;
    cancel: () => void;
    paintInkCircle: (props: {
        borderRadius: IBorderRadius;
        clipCallback?: () => IRect | undefined;
        customBorder?: IShapeBorder | undefined;
        textDirection?: TextDirection | undefined;
        canvas: ICanvas;
        center: IOffset;
        paint: IPaint;
        radius: number;
        transform: IMatrix4;
    }) => void;
    getColor: () => IColor;
    setColor: (value: IColor) => void;
    toString: () => string;
    getController: () => IMaterialInkController;
    getHashCode: () => number;
}
export class InkHighlight implements IInteractiveInkFeature {
    public readonly referenceBox: IRenderBox = undefined as any;
    public readonly onRemoved: () => void | undefined = undefined as any;
    public constructor(props: {
        borderRadius?: IBorderRadius | undefined;
        customBorder?: IShapeBorder | undefined;
        fadeDuration?: IDuration;
        onRemoved?: () => void | undefined;
        radius?: number | undefined;
        rectCallback?: () => IRect | undefined;
        shape?: BoxShape;
        color: IColor;
        controller: IMaterialInkController;
        referenceBox: IRenderBox;
        textDirection: TextDirection;
    }) {
        flutter.material.inkHighlight(this, {
            ...inkHighlightDefaultProps,
            ...props,
        });
    }
    private readonly _dart_getActive: () => boolean = undefined as any;
    private readonly _dart_activate: () => void = undefined as any;
    private readonly _dart_deactivate: () => void = undefined as any;
    private readonly _dart_dispose: () => void = undefined as any;
    private readonly _dart_paintFeature: (
        canvas: ICanvas,
        transform: IMatrix4
    ) => void = undefined as any;
    private readonly _dart_confirm: () => void = undefined as any;
    private readonly _dart_cancel: () => void = undefined as any;
    private readonly _dart_paintInkCircle: (props: {
        borderRadius: IBorderRadius;
        clipCallback?: () => IRect | undefined;
        customBorder?: IShapeBorder | undefined;
        textDirection?: TextDirection | undefined;
        canvas: ICanvas;
        center: IOffset;
        paint: IPaint;
        radius: number;
        transform: IMatrix4;
    }) => void = undefined as any;
    private readonly _dart_getColor: () => IColor = undefined as any;
    private readonly _dart_setColor: (value: IColor) => void = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getController: () => IMaterialInkController =
        undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public getActive(): boolean {
        return this._dart_getActive();
    }
    public activate(): void {
        return this._dart_activate();
    }
    public deactivate(): void {
        return this._dart_deactivate();
    }
    public dispose(): void {
        return this._dart_dispose();
    }
    public paintFeature(canvas: ICanvas, transform: IMatrix4): void {
        return this._dart_paintFeature(canvas, transform);
    }
    public confirm(): void {
        return this._dart_confirm();
    }
    public cancel(): void {
        return this._dart_cancel();
    }
    public paintInkCircle(props: {
        borderRadius?: IBorderRadius;
        clipCallback?: () => IRect | undefined;
        customBorder?: IShapeBorder | undefined;
        textDirection?: TextDirection | undefined;
        canvas: ICanvas;
        center: IOffset;
        paint: IPaint;
        radius: number;
        transform: IMatrix4;
    }): void {
        return this._dart_paintInkCircle({
            ...paintInkCircleDefaultProps,
            ...props,
        });
    }
    public getColor(): IColor {
        return this._dart_getColor();
    }
    public setColor(value: IColor): void {
        return this._dart_setColor(value);
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getController(): IMaterialInkController {
        return this._dart_getController();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
const inkHighlightDefaultProps = {
    fadeDuration: new Duration({ milliseconds: 200 }),
    shape: BoxShape.rectangle,
};
const paintInkCircleDefaultProps = {
    borderRadius: BorderRadius.zero,
};
