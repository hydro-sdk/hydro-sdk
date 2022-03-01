
import { IRect } from "../../dart/ui/rect";
import { ISize } from "../../dart/ui/size";
import { IOffset } from "../../dart/ui/offset";
declare const flutter: {
rendering: {
relativeRectFromSize: (rect: IRect, container: ISize) => IRelativeRect;
relativeRectFromRect: (rect: IRect, container: IRect) => IRelativeRect;
relativeRectLerp: (a: IRelativeRect | undefined, b: IRelativeRect | undefined, t: number) => IRelativeRect | undefined
}
};
export interface IRelativeRect


{
left: number;
top: number;
right: number;
bottom: number;
getHasInsets: () => boolean;
shift: (offset: IOffset) => IRelativeRect;
inflate: (delta: number) => IRelativeRect;
deflate: (delta: number) => IRelativeRect;
intersect: (other: IRelativeRect) => IRelativeRect;
toRect: (container: IRect) => IRect;
toSize: (container: ISize) => ISize;
getHashCode: () => number;
toString: () => string;
}export class RelativeRect


{    public static fill = RelativeRect.fromLTRB(0.0, 0.0, 0.0, 0.0);
    public readonly left: number = undefined as any;
    public readonly top: number = undefined as any;
    public readonly right: number = undefined as any;
    public readonly bottom: number = undefined as any;
public static fromSize(rect: IRect, container: ISize) : IRelativeRect{
return flutter.rendering.relativeRectFromSize(rect, container);
}public static fromRect(rect: IRect, container: IRect) : IRelativeRect{
return flutter.rendering.relativeRectFromRect(rect, container);
}public static lerp(a: IRelativeRect | undefined, b: IRelativeRect | undefined, t: number) : IRelativeRect | undefined{
return flutter.rendering.relativeRectLerp(a, b, t);
}    private readonly _dart_getHasInsets: () => boolean = undefined as any;
    private readonly _dart_shift: (offset: IOffset) => IRelativeRect = undefined as any;
    private readonly _dart_inflate: (delta: number) => IRelativeRect = undefined as any;
    private readonly _dart_deflate: (delta: number) => IRelativeRect = undefined as any;
    private readonly _dart_intersect: (other: IRelativeRect) => IRelativeRect = undefined as any;
    private readonly _dart_toRect: (container: IRect) => IRect = undefined as any;
    private readonly _dart_toSize: (container: ISize) => ISize = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
public getHasInsets() : boolean {
    return this._dart_getHasInsets();
}
public shift(offset: IOffset) : IRelativeRect {
    return this._dart_shift(offset);
}
public inflate(delta: number) : IRelativeRect {
    return this._dart_inflate(delta);
}
public deflate(delta: number) : IRelativeRect {
    return this._dart_deflate(delta);
}
public intersect(other: IRelativeRect) : IRelativeRect {
    return this._dart_intersect(other);
}
public toRect(container: IRect) : IRect {
    return this._dart_toRect(container);
}
public toSize(container: ISize) : ISize {
    return this._dart_toSize(container);
}
public getHashCode() : number {
    return this._dart_getHashCode();
}
public toString() : string {
    return this._dart_toString();
}
}
