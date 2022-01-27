import { ICanvas } from "../../dart/ui/canvas";
import { IPath } from "../../dart/ui/path";
import { IRect } from "../../dart/ui/rect";
import { IImageConfiguration } from "./imageConfiguration";
export interface IDecorationImagePainter {
    paint: (
        canvas: ICanvas,
        rect: IRect,
        clipPath: IPath | undefined,
        configuration: IImageConfiguration
    ) => void;
    dispose: () => void;
    toString: () => string;
}
