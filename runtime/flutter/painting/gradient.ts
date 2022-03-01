
import { IList } from "../../dart/core/list";
import { IGradientTransform } from "./gradientTransform";
import { IColor } from "../../dart/ui/color";
import { TextDirection } from "../../dart/ui/textDirection";
import { IRect } from "../../dart/ui/rect";
import { IShader } from "../../dart/ui/shader";
declare const flutter: {
painting: {
gradient: (this: void, gradient: IGradient, props : {  stops? : IList<number> | undefined, transform? : IGradientTransform | undefined, colors : IList<IColor>,}) => IGradient;
gradientLerp: (a: IGradient | undefined, b: IGradient | undefined, t: number) => IGradient | undefined
}
};
export interface IGradient


{
colors: IList<IColor>;
stops: IList<number> | undefined;
transform: IGradientTransform | undefined;
createShader: (rect: IRect, props? : {  textDirection? : TextDirection | undefined,}) => IShader;
scale: (factor: number) => IGradient;
lerpFrom: (a: IGradient | undefined, t: number) => IGradient | undefined;
lerpTo: (b: IGradient | undefined, t: number) => IGradient | undefined;
}export class Gradient


{    public readonly colors: IList<IColor> = undefined as any;
    public readonly stops: IList<number> | undefined = undefined as any;
    public readonly transform: IGradientTransform | undefined = undefined as any;
public constructor( props : {  stops? : IList<number> | undefined, transform? : IGradientTransform | undefined, colors : IList<IColor>,}){
flutter.painting.gradient(this, props);}
public static lerp(a: IGradient | undefined, b: IGradient | undefined, t: number) : IGradient | undefined{
return flutter.painting.gradientLerp(a, b, t);
}    private readonly _dart_createShader: (rect: IRect, props? : {  textDirection? : TextDirection | undefined,}) => IShader = undefined as any;
    private readonly _dart_scale: (factor: number) => IGradient = undefined as any;
    private readonly _dart_lerpFrom: (a: IGradient | undefined, t: number) => IGradient | undefined = undefined as any;
    private readonly _dart_lerpTo: (b: IGradient | undefined, t: number) => IGradient | undefined = undefined as any;
public createShader(rect: IRect, props? : {  textDirection? : TextDirection | undefined,}) : IShader {
    return this._dart_createShader(rect, props);
}
public scale(factor: number) : IGradient {
    return this._dart_scale(factor);
}
public lerpFrom(a: IGradient | undefined, t: number) : IGradient | undefined {
    return this._dart_lerpFrom(a, t);
}
public lerpTo(b: IGradient | undefined, t: number) : IGradient | undefined {
    return this._dart_lerpTo(b, t);
}
}
