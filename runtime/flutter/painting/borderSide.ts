
import { IColor,Color } from "../../dart/ui/color";
import { BorderStyle } from "./borderStyle";
import { IPaint } from "../../dart/ui/paint";
declare const flutter: {
painting: {
borderSide: (this: void, borderSide: IBorderSide, props : {  color : IColor, style : BorderStyle, width : number,}) => IBorderSide;
borderSideMerge: (a: IBorderSide, b: IBorderSide) => IBorderSide;
borderSideCanMerge: (a: IBorderSide, b: IBorderSide) => boolean;
borderSideLerp: (a: IBorderSide, b: IBorderSide, t: number) => IBorderSide
}
};
export interface IBorderSide


{
color: IColor;
width: number;
style: BorderStyle;
copyWith: ( props? : {  color? : IColor | undefined, style? : BorderStyle | undefined, width? : number | undefined,}) => IBorderSide;
scale: (t: number) => IBorderSide;
toPaint: () => IPaint;
getHashCode: () => number;
toString: () => string;
}export class BorderSide


{    public static none = new BorderSide();
    public readonly color: IColor = undefined as any;
    public readonly width: number = undefined as any;
    public readonly style: BorderStyle = undefined as any;
public constructor( props : {  color? : IColor, style? : BorderStyle, width? : number,}){
flutter.painting.borderSide(this, {
...borderSideDefaultProps,
...props
});}
public static merge(a: IBorderSide, b: IBorderSide) : IBorderSide{
return flutter.painting.borderSideMerge(a, b);
}public static canMerge(a: IBorderSide, b: IBorderSide) : boolean{
return flutter.painting.borderSideCanMerge(a, b);
}public static lerp(a: IBorderSide, b: IBorderSide, t: number) : IBorderSide{
return flutter.painting.borderSideLerp(a, b, t);
}    private readonly _dart_copyWith: ( props? : {  color? : IColor | undefined, style? : BorderStyle | undefined, width? : number | undefined,}) => IBorderSide = undefined as any;
    private readonly _dart_scale: (t: number) => IBorderSide = undefined as any;
    private readonly _dart_toPaint: () => IPaint = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
public copyWith( props? : {  color? : IColor | undefined, style? : BorderStyle | undefined, width? : number | undefined,}) : IBorderSide {
    return this._dart_copyWith(props);
}
public scale(t: number) : IBorderSide {
    return this._dart_scale(t);
}
public toPaint() : IPaint {
    return this._dart_toPaint();
}
public getHashCode() : number {
    return this._dart_getHashCode();
}
public toString() : string {
    return this._dart_toString();
}
}
const borderSideDefaultProps = {
    color: new Color(0xFF000000),
    style: BorderStyle.solid,
    width: 1.0,
};
