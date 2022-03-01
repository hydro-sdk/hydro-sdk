
import { IBorderRadiusGeometry } from "./borderRadiusGeometry";
import { TextDirection } from "../../dart/ui/textDirection";
import { IBorderRadius } from "./borderRadius";
import { IRadius,Radius } from "../../dart/ui/radius";
declare const flutter: {
painting: {
borderRadiusDirectionalLerp: (a: IBorderRadiusDirectional | undefined, b: IBorderRadiusDirectional | undefined, t: number) => IBorderRadiusDirectional | undefined
}
};
export interface IBorderRadiusDirectional


{
topStart: IRadius;
topEnd: IRadius;
bottomStart: IRadius;
bottomEnd: IRadius;
subtract: (other: IBorderRadiusGeometry) => IBorderRadiusGeometry;
add: (other: IBorderRadiusGeometry) => IBorderRadiusGeometry;
resolve: (direction?: TextDirection | undefined) => IBorderRadius;
toString: () => string;
getHashCode: () => number;
}export class BorderRadiusDirectional

 implements IBorderRadiusGeometry
{    public static zero = BorderRadiusDirectional.all(Radius.zero);
    public readonly topStart: IRadius = undefined as any;
    public readonly topEnd: IRadius = undefined as any;
    public readonly bottomStart: IRadius = undefined as any;
    public readonly bottomEnd: IRadius = undefined as any;
public static lerp(a: IBorderRadiusDirectional | undefined, b: IBorderRadiusDirectional | undefined, t: number) : IBorderRadiusDirectional | undefined{
return flutter.painting.borderRadiusDirectionalLerp(a, b, t);
}    private readonly _dart_subtract: (other: IBorderRadiusGeometry) => IBorderRadiusGeometry = undefined as any;
    private readonly _dart_add: (other: IBorderRadiusGeometry) => IBorderRadiusGeometry = undefined as any;
    private readonly _dart_resolve: (direction?: TextDirection | undefined) => IBorderRadius = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
public subtract(other: IBorderRadiusGeometry) : IBorderRadiusGeometry {
    return this._dart_subtract(other);
}
public add(other: IBorderRadiusGeometry) : IBorderRadiusGeometry {
    return this._dart_add(other);
}
public resolve(direction?: TextDirection | undefined) : IBorderRadius {
    return this._dart_resolve(direction);
}
public toString() : string {
    return this._dart_toString();
}
public getHashCode() : number {
    return this._dart_getHashCode();
}
}
