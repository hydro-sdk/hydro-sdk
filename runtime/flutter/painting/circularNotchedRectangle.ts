
import { INotchedShape } from "./notchedShape";
import { IRect } from "../../dart/ui/rect";
import { IPath } from "../../dart/ui/path";
declare const flutter: {
painting: {
circularNotchedRectangle: (this: void, circularNotchedRectangle: ICircularNotchedRectangle) => ICircularNotchedRectangle
}
};
export interface ICircularNotchedRectangle


{
getOuterPath: (host: IRect, guest?: IRect | undefined) => IPath;
toString: () => string;
getHashCode: () => number;
}export class CircularNotchedRectangle

 implements INotchedShape
{public constructor(){
flutter.painting.circularNotchedRectangle(this);}
    private readonly _dart_getOuterPath: (host: IRect, guest?: IRect | undefined) => IPath = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
public getOuterPath(host: IRect, guest?: IRect | undefined) : IPath {
    return this._dart_getOuterPath(host, guest);
}
public toString() : string {
    return this._dart_toString();
}
public getHashCode() : number {
    return this._dart_getHashCode();
}
}
