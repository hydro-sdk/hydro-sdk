
import { IList } from "../../dart/core/list";
import { IOffset } from "../../dart/ui/offset";
import { ICurve } from "./curve";
declare const flutter: {
animation: {
catmullRomCurve: (this: void, catmullRomCurve: ICatmullRomCurve, controlPoints: IList<IOffset>, props : {  tension : number,}) => ICatmullRomCurve;
catmullRomCurveValidateControlPoints: (controlPoints?: IList<IOffset> | undefined, props : {  reasons? : IList<string> | undefined, tension : number,}) => boolean
}
};
export interface ICatmullRomCurve


{
controlPoints: IList<IOffset>;
tension: number;
transformInternal: (t: number) => number;
transform: (t: number) => number;
getFlipped: () => ICurve;
toString: () => string;
getHashCode: () => number;
}export class CatmullRomCurve

 implements ICurve
{    public readonly controlPoints: IList<IOffset> = undefined as any;
    public readonly tension: number = undefined as any;
public constructor(controlPoints: IList<IOffset>, props : {  tension? : number,}){
flutter.animation.catmullRomCurve(this, controlPoints, {
...catmullRomCurveDefaultProps,
...props
});}
public static validateControlPoints(controlPoints?: IList<IOffset> | undefined, props : {  reasons? : IList<string> | undefined, tension? : number,}) : boolean{
return flutter.animation.catmullRomCurveValidateControlPoints(controlPoints, {
...validateControlPointsDefaultProps,
...props
});
}    private readonly _dart_transformInternal: (t: number) => number = undefined as any;
    private readonly _dart_transform: (t: number) => number = undefined as any;
    private readonly _dart_getFlipped: () => ICurve = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
public transformInternal(t: number) : number {
    return this._dart_transformInternal(t);
}
public transform(t: number) : number {
    return this._dart_transform(t);
}
public getFlipped() : ICurve {
    return this._dart_getFlipped();
}
public toString() : string {
    return this._dart_toString();
}
public getHashCode() : number {
    return this._dart_getHashCode();
}
}
const catmullRomCurveDefaultProps = {
    tension: 0.0,
};
const validateControlPointsDefaultProps = {
    tension: 0.0,
};
