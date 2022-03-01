
import { IRadius } from "../../dart/ui/radius";
import { IBorderRadiusGeometry } from "./borderRadiusGeometry";
import { TextDirection } from "../../dart/ui/textDirection";
import { IBorderRadius } from "./borderRadius";
declare const flutter: {
painting: {
_mixedBorderRadius: (this: void, _mixedBorderRadius: I_MixedBorderRadius, _topLeft: IRadius, _topRight: IRadius, _bottomLeft: IRadius, _bottomRight: IRadius, _topStart: IRadius, _topEnd: IRadius, _bottomStart: IRadius, _bottomEnd: IRadius) => I_MixedBorderRadius
}
};
export interface I_MixedBorderRadius


{
resolve: (direction?: TextDirection | undefined) => IBorderRadius;
subtract: (other: IBorderRadiusGeometry) => IBorderRadiusGeometry;
add: (other: IBorderRadiusGeometry) => IBorderRadiusGeometry;
toString: () => string;
getHashCode: () => number;
}export class _MixedBorderRadius

 implements IBorderRadiusGeometry
{public constructor(_topLeft: IRadius, _topRight: IRadius, _bottomLeft: IRadius, _bottomRight: IRadius, _topStart: IRadius, _topEnd: IRadius, _bottomStart: IRadius, _bottomEnd: IRadius){
flutter.painting._mixedBorderRadius(this, _topLeft, _topRight, _bottomLeft, _bottomRight, _topStart, _topEnd, _bottomStart, _bottomEnd);}
    private readonly _dart_resolve: (direction?: TextDirection | undefined) => IBorderRadius = undefined as any;
    private readonly _dart_subtract: (other: IBorderRadiusGeometry) => IBorderRadiusGeometry = undefined as any;
    private readonly _dart_add: (other: IBorderRadiusGeometry) => IBorderRadiusGeometry = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
public resolve(direction?: TextDirection | undefined) : IBorderRadius {
    return this._dart_resolve(direction);
}
public subtract(other: IBorderRadiusGeometry) : IBorderRadiusGeometry {
    return this._dart_subtract(other);
}
public add(other: IBorderRadiusGeometry) : IBorderRadiusGeometry {
    return this._dart_add(other);
}
public toString() : string {
    return this._dart_toString();
}
public getHashCode() : number {
    return this._dart_getHashCode();
}
}
