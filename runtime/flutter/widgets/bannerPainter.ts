import { IList } from "../../dart/core/list";
import { ICanvas } from "../../dart/ui/canvas";
import { Color, IColor } from "../../dart/ui/color";
import { IOffset } from "../../dart/ui/offset";
import { ISize } from "../../dart/ui/size";
import { TextDirection } from "../../dart/ui/textDirection";
import { BoxShadow } from "../painting/boxShadow";
import { ITextStyle, TextStyle } from "../painting/textStyle";
import { ICustomPainter } from "../rendering/customPainter";
import { ICustomPainterSemantics } from "../rendering/customPainterSemantics";
import { BannerLocation } from "./bannerLocation";
declare const flutter: {
    widgets: {
        bannerPainter: (
            this: void,
            bannerPainter: IBannerPainter,
            props: {
                color: IColor;
                textStyle: ITextStyle;
                layoutDirection: TextDirection;
                location: BannerLocation;
                message: string;
                textDirection: TextDirection;
            }
        ) => IBannerPainter;
    };
};
export interface IBannerPainter {
    message: string;
    textDirection: TextDirection;
    location: BannerLocation;
    layoutDirection: TextDirection;
    color: IColor;
    textStyle: ITextStyle;
    paint: (canvas: ICanvas, size: ISize) => void;
    shouldRepaint: (oldDelegate: unknown) => boolean;
    hitTest: (position: IOffset) => boolean;
    addListener: (listener: () => void) => void;
    removeListener: (listener: () => void) => void;
    shouldRebuildSemantics: (oldDelegate: unknown) => boolean;
    toString: () => string;
    getSemanticsBuilder: () => (
        size: ISize
    ) => IList<ICustomPainterSemantics> | undefined;
    getHashCode: () => number;
}
export class BannerPainter implements ICustomPainter {
    public static _shadow = new BoxShadow();
    public readonly message: string = undefined as any;
    public readonly textDirection: TextDirection = undefined as any;
    public readonly location: BannerLocation = undefined as any;
    public readonly layoutDirection: TextDirection = undefined as any;
    public readonly color: IColor = undefined as any;
    public readonly textStyle: ITextStyle = undefined as any;
    public constructor(props: {
        color?: IColor;
        textStyle?: ITextStyle;
        layoutDirection: TextDirection;
        location: BannerLocation;
        message: string;
        textDirection: TextDirection;
    }) {
        flutter.widgets.bannerPainter(this, {
            ...bannerPainterDefaultProps,
            ...props,
        });
    }
    private readonly _dart_paint: (canvas: ICanvas, size: ISize) => void =
        undefined as any;
    private readonly _dart_shouldRepaint: (oldDelegate: any) => boolean =
        undefined as any;
    private readonly _dart_hitTest: (position: IOffset) => boolean =
        undefined as any;
    private readonly _dart_addListener: (listener: () => void) => void =
        undefined as any;
    private readonly _dart_removeListener: (listener: () => void) => void =
        undefined as any;
    private readonly _dart_shouldRebuildSemantics: (
        oldDelegate: any
    ) => boolean = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getSemanticsBuilder: () => (
        size: ISize
    ) => IList<ICustomPainterSemantics> | undefined = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public paint(canvas: ICanvas, size: ISize): void {
        return this._dart_paint(canvas, size);
    }
    public shouldRepaint(oldDelegate: any): boolean {
        return this._dart_shouldRepaint(oldDelegate);
    }
    public hitTest(position: IOffset): boolean {
        return this._dart_hitTest(position);
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
const bannerPainterDefaultProps = {
    color: new Color(0xa0b71c1c),
    textStyle: new TextStyle(),
};
