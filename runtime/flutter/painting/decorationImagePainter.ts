
import { ICanvas } from "../../dart/ui/canvas";
import { IRect } from "../../dart/ui/rect";
import { IPath } from "../../dart/ui/path";
import { IImageConfiguration } from "./imageConfiguration";
export interface IDecorationImagePainter


{
paint: (canvas: ICanvas, rect: IRect, clipPath: IPath | undefined, configuration: IImageConfiguration) => void;
dispose: () => void;
toString: () => string;
}