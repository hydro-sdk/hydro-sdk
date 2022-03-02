import { IList } from "../../dart/core/list";
import { ICanvas } from "../../dart/ui/canvas";
import { IColor } from "../../dart/ui/color";
import { IRect } from "../../dart/ui/rect";
import { IBoxShadow } from "../painting/boxShadow";
import { CupertinoColors } from "./cupertinoColors";
declare const flutter: {
    cupertino: {
        cupertinoThumbPainter: (
            this: void,
            cupertinoThumbPainter: ICupertinoThumbPainter,
            props: { color: IColor; shadows: IList<IBoxShadow> }
        ) => ICupertinoThumbPainter;
    };
};
export interface ICupertinoThumbPainter {
    color: IColor;
    shadows: IList<IBoxShadow>;
    paint: (canvas: ICanvas, rect: IRect) => void;
}
export class CupertinoThumbPainter {
    public static radius = 14.0;
    public static extension = 7.0;
    public readonly color: IColor = undefined as any;
    public readonly shadows: IList<IBoxShadow> = undefined as any;
    public constructor(props: { color?: IColor; shadows: IList<IBoxShadow> }) {
        flutter.cupertino.cupertinoThumbPainter(this, {
            ...cupertinoThumbPainterDefaultProps,
            ...props,
        });
    }
    private readonly _dart_paint: (canvas: ICanvas, rect: IRect) => void =
        undefined as any;
    public paint(canvas: ICanvas, rect: IRect): void {
        return this._dart_paint(canvas, rect);
    }
}
const cupertinoThumbPainterDefaultProps = {
    color: CupertinoColors.white,
};
