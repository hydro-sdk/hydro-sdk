
import { IOffset } from "../../dart/ui/offset";
import { TextDirection } from "../../dart/ui/textDirection";
declare const flutter: {
rendering: {
textSelectionPoint: (this: void, textSelectionPoint: ITextSelectionPoint, point: IOffset, direction?: TextDirection | undefined) => ITextSelectionPoint
}
};
export interface ITextSelectionPoint


{
point: IOffset;
direction: TextDirection | undefined;
toString: () => string;
}export class TextSelectionPoint


{    public readonly point: IOffset = undefined as any;
    public readonly direction: TextDirection | undefined = undefined as any;
public constructor(point: IOffset, direction?: TextDirection | undefined){
flutter.rendering.textSelectionPoint(this, point, direction);}
    private readonly _dart_toString: () => string = undefined as any;
public toString() : string {
    return this._dart_toString();
}
}
