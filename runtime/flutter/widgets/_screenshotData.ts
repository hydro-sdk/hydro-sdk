
import { IRenderObject } from "../rendering/renderObject";
import { IOffset } from "../../dart/ui/offset";
import { IOffsetLayer } from "../rendering/offsetLayer";
declare const flutter: {
widgets: {
_screenshotData: (this: void, _screenshotData: I_ScreenshotData, props : {  target : IRenderObject,}) => I_ScreenshotData
}
};
export interface I_ScreenshotData


{
target: IRenderObject;
containerLayer: IOffsetLayer;
foundTarget: boolean;
includeInScreenshot: boolean;
includeInRegularContext: boolean;
getScreenshotOffset: () => IOffset;
setScreenshotOffset: (offset: IOffset) => void;
}export class _ScreenshotData


{    public readonly target: IRenderObject = undefined as any;
    public readonly containerLayer: IOffsetLayer = undefined as any;
    public readonly foundTarget: boolean = undefined as any;
    public readonly includeInScreenshot: boolean = undefined as any;
    public readonly includeInRegularContext: boolean = undefined as any;
public constructor( props : {  target : IRenderObject,}){
flutter.widgets._screenshotData(this, props);}
    private readonly _dart_getScreenshotOffset: () => IOffset = undefined as any;
    private readonly _dart_setScreenshotOffset: (offset: IOffset) => void = undefined as any;
public getScreenshotOffset() : IOffset {
    return this._dart_getScreenshotOffset();
}
public setScreenshotOffset(offset: IOffset) : void {
    return this._dart_setScreenshotOffset(offset);
}
}
