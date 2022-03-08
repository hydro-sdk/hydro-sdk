import { ICanvas } from "../../dart/ui/canvas";
import { IColor } from "../../dart/ui/color";
import { IOffset } from "../../dart/ui/offset";
import { IPaint } from "../../dart/ui/paint";
import { IRect } from "../../dart/ui/rect";
import { TextDirection } from "../../dart/ui/textDirection";
import { IMatrix4 } from "../../vector_math/matrix4";
import { BorderRadius, IBorderRadius } from "../painting/borderRadius";
import { IShapeBorder } from "../painting/shapeBorder";
import { IRenderBox } from "../rendering/renderBox";
import { IInkFeature } from "./inkFeature";
import { IMaterialInkController } from "./materialInkController";
declare const flutter: {
    material: {
        interactiveInkFeature: (
            this: void,
            interactiveInkFeature: IInteractiveInkFeature,
            props: {
                onRemoved?: () => void | undefined;
                color: IColor;
                controller: IMaterialInkController;
                referenceBox: IRenderBox;
            }
        ) => IInteractiveInkFeature;
    };
};
export interface IInteractiveInkFeature {
    referenceBox: IRenderBox;
    onRemoved: () => void | undefined;
    confirm: () => void;
    cancel: () => void;
    getColor: () => IColor;
    setColor: (value: IColor) => void;
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
    dispose: () => void;
    paintFeature: (canvas: ICanvas, transform: IMatrix4) => void;
    toString: () => string;
    getController: () => IMaterialInkController;
    getHashCode: () => number;
}
export class InteractiveInkFeature implements IInkFeature {
    public readonly referenceBox: IRenderBox = undefined as any;
    public readonly onRemoved: () => void | undefined = undefined as any;
    public constructor(props: {
        onRemoved?: () => void | undefined;
        color: IColor;
        controller: IMaterialInkController;
        referenceBox: IRenderBox;
    }) {
        flutter.material.interactiveInkFeature(this, props);
    }
    private readonly _dart_confirm: () => void = undefined as any;
    private readonly _dart_cancel: () => void = undefined as any;
    private readonly _dart_getColor: () => IColor = undefined as any;
    private readonly _dart_setColor: (value: IColor) => void = undefined as any;
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
    private readonly _dart_dispose: () => void = undefined as any;
    private readonly _dart_paintFeature: (
        canvas: ICanvas,
        transform: IMatrix4
    ) => void = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getController: () => IMaterialInkController =
        undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public confirm(): void {
        return this._dart_confirm();
    }
    public cancel(): void {
        return this._dart_cancel();
    }
    public getColor(): IColor {
        return this._dart_getColor();
    }
    public setColor(value: IColor): void {
        return this._dart_setColor(value);
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
    public dispose(): void {
        return this._dart_dispose();
    }
    public paintFeature(canvas: ICanvas, transform: IMatrix4): void {
        return this._dart_paintFeature(canvas, transform);
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
const paintInkCircleDefaultProps = {
    borderRadius: BorderRadius.zero,
};
