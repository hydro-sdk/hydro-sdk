
import { IListenable } from "../foundation/listenable";
import { ISize } from "../../dart/ui/size";
import { IRect } from "../../dart/ui/rect";
declare const flutter: {
rendering: {
customClipper: <T>(this: void, customClipper: ICustomClipper<T>, props? : {  reclip? : IListenable | undefined,}) => ICustomClipper<T>
}
};
export interface ICustomClipper
<T>

{
addListener: (listener : () => void) => void;
removeListener: (listener : () => void) => void;
getClip: (size: ISize) => T;
getApproximateClipRect: (size: ISize) => IRect;
shouldReclip: (oldClipper: unknown) => boolean;
toString: () => string;
getHashCode: () => number;
}export class CustomClipper
<T>
 implements IListenable
{public constructor( props? : {  reclip? : IListenable | undefined,}){
flutter.rendering.customClipper(this, props);}
    private readonly _dart_addListener: (listener : () => void) => void = undefined as any;
    private readonly _dart_removeListener: (listener : () => void) => void = undefined as any;
    private readonly _dart_getClip: (size: ISize) => T = undefined as any;
    private readonly _dart_getApproximateClipRect: (size: ISize) => IRect = undefined as any;
    private readonly _dart_shouldReclip: (oldClipper: any) => boolean = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
public addListener(listener : () => void) : void {
    return this._dart_addListener(listener);
}
public removeListener(listener : () => void) : void {
    return this._dart_removeListener(listener);
}
public getClip(size: ISize) : T {
    return this._dart_getClip(size);
}
public getApproximateClipRect(size: ISize) : IRect {
    return this._dart_getApproximateClipRect(size);
}
public shouldReclip(oldClipper: any) : boolean {
    return this._dart_shouldReclip(oldClipper);
}
public toString() : string {
    return this._dart_toString();
}
public getHashCode() : number {
    return this._dart_getHashCode();
}
}
