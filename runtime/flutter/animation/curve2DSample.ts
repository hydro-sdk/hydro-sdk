
import { IOffset } from "../../dart/ui/offset";
declare const flutter: {
animation: {
curve2DSample: (this: void, curve2DSample: ICurve2DSample, t: number, value: IOffset) => ICurve2DSample
}
};
export interface ICurve2DSample


{
t: number;
value: IOffset;
toString: () => string;
}export class Curve2DSample


{    public readonly t: number = undefined as any;
    public readonly value: IOffset = undefined as any;
public constructor(t: number, value: IOffset){
flutter.animation.curve2DSample(this, t, value);}
    private readonly _dart_toString: () => string = undefined as any;
public toString() : string {
    return this._dart_toString();
}
}
