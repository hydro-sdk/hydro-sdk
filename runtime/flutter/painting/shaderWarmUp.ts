
import { ISize } from "../../dart/ui/size";
import { ICanvas } from "../../dart/ui/canvas";
import { IFuture } from "../../dart/async/future";
declare const flutter: {
painting: {
shaderWarmUp: (this: void, shaderWarmUp: IShaderWarmUp) => IShaderWarmUp
}
};
export interface IShaderWarmUp


{
getSize: () => ISize;
warmUpOnCanvas: (canvas: ICanvas) => IFuture<void>;
execute: () => IFuture<void>;
}export class ShaderWarmUp


{public constructor(){
flutter.painting.shaderWarmUp(this);}
    private readonly _dart_getSize: () => ISize = undefined as any;
    private readonly _dart_warmUpOnCanvas: (canvas: ICanvas) => IFuture<void> = undefined as any;
    private readonly _dart_execute: () => IFuture<void> = undefined as any;
public getSize() : ISize {
    return this._dart_getSize();
}
public warmUpOnCanvas(canvas: ICanvas) : IFuture<void> {
    return this._dart_warmUpOnCanvas(canvas);
}
public execute() : IFuture<void> {
    return this._dart_execute();
}
}
