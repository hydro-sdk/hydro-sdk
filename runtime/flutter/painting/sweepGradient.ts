
import { IAlignmentGeometry } from "./alignmentGeometry";
import { IList } from "../../dart/core/list";
import { TileMode } from "../../dart/ui/tileMode";
import { IGradientTransform } from "./gradientTransform";
import { IColor } from "../../dart/ui/color";
import { IGradient } from "./gradient";
import { TextDirection } from "../../dart/ui/textDirection";
import { IRect } from "../../dart/ui/rect";
import { IShader } from "../../dart/ui/shader";
import { Alignment } from "./alignment";
import { pi } from "../../dart/math/pi";
declare const flutter: {
painting: {
sweepGradient: (this: void, sweepGradient: ISweepGradient, props : {  center : IAlignmentGeometry, endAngle : number, startAngle : number, stops? : IList<number> | undefined, tileMode : TileMode, transform? : IGradientTransform | undefined, colors : IList<IColor>,}) => ISweepGradient;
sweepGradientLerp: (a: ISweepGradient | undefined, b: ISweepGradient | undefined, t: number) => ISweepGradient | undefined
}
};
export interface ISweepGradient


{
center: IAlignmentGeometry;
startAngle: number;
endAngle: number;
tileMode: TileMode;
colors: IList<IColor>;
stops: IList<number> | undefined;
transform: IGradientTransform | undefined;
createShader: (rect: IRect, props? : {  textDirection? : TextDirection | undefined,}) => IShader;
scale: (factor: number) => ISweepGradient;
lerpFrom: (a: IGradient | undefined, t: number) => IGradient | undefined;
lerpTo: (b: IGradient | undefined, t: number) => IGradient | undefined;
getHashCode: () => number;
toString: () => string;
}export class SweepGradient

 implements IGradient
{    public readonly center: IAlignmentGeometry = undefined as any;
    public readonly startAngle: number = undefined as any;
    public readonly endAngle: number = undefined as any;
    public readonly tileMode: TileMode = undefined as any;
    public readonly colors: IList<IColor> = undefined as any;
    public readonly stops: IList<number> | undefined = undefined as any;
    public readonly transform: IGradientTransform | undefined = undefined as any;
public constructor( props : {  center? : IAlignmentGeometry, endAngle? : number, startAngle? : number, stops? : IList<number> | undefined, tileMode? : TileMode, transform? : IGradientTransform | undefined, colors : IList<IColor>,}){
flutter.painting.sweepGradient(this, {
...sweepGradientDefaultProps,
...props
});}
public static lerp(a: ISweepGradient | undefined, b: ISweepGradient | undefined, t: number) : ISweepGradient | undefined{
return flutter.painting.sweepGradientLerp(a, b, t);
}    private readonly _dart_createShader: (rect: IRect, props? : {  textDirection? : TextDirection | undefined,}) => IShader = undefined as any;
    private readonly _dart_scale: (factor: number) => ISweepGradient = undefined as any;
    private readonly _dart_lerpFrom: (a: IGradient | undefined, t: number) => IGradient | undefined = undefined as any;
    private readonly _dart_lerpTo: (b: IGradient | undefined, t: number) => IGradient | undefined = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
public createShader(rect: IRect, props? : {  textDirection? : TextDirection | undefined,}) : IShader {
    return this._dart_createShader(rect, props);
}
public scale(factor: number) : ISweepGradient {
    return this._dart_scale(factor);
}
public lerpFrom(a: IGradient | undefined, t: number) : IGradient | undefined {
    return this._dart_lerpFrom(a, t);
}
public lerpTo(b: IGradient | undefined, t: number) : IGradient | undefined {
    return this._dart_lerpTo(b, t);
}
public getHashCode() : number {
    return this._dart_getHashCode();
}
public toString() : string {
    return this._dart_toString();
}
}
const sweepGradientDefaultProps = {
    center: Alignment.center,
    endAngle: pi*2,
    startAngle: 0.0,
    tileMode: TileMode.clamp,
};
