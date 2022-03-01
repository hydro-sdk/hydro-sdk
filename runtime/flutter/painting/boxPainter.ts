
import { ICanvas } from "../../dart/ui/canvas";
import { IOffset } from "../../dart/ui/offset";
import { IImageConfiguration } from "./imageConfiguration";
declare const flutter: {
painting: {
boxPainter: (this: void, boxPainter: IBoxPainter, onChanged? : () => void) => IBoxPainter
}
};
export interface IBoxPainter


{
paint: (canvas: ICanvas, offset: IOffset, configuration: IImageConfiguration) => void;
dispose: () => void;
}export class BoxPainter


{public constructor(onChanged? : () => void){
flutter.painting.boxPainter(this, onChanged);}
    private readonly _dart_paint: (canvas: ICanvas, offset: IOffset, configuration: IImageConfiguration) => void = undefined as any;
    private readonly _dart_dispose: () => void = undefined as any;
public paint(canvas: ICanvas, offset: IOffset, configuration: IImageConfiguration) : void {
    return this._dart_paint(canvas, offset, configuration);
}
public dispose() : void {
    return this._dart_dispose();
}
}
