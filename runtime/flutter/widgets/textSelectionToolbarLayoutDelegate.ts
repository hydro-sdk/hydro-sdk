
import { IOffset } from "../../dart/ui/offset";
import { ISingleChildLayoutDelegate } from "../rendering/singleChildLayoutDelegate";
import { IBoxConstraints } from "../rendering/boxConstraints";
import { ISize } from "../../dart/ui/size";
declare const flutter: {
widgets: {
textSelectionToolbarLayoutDelegate: (this: void, textSelectionToolbarLayoutDelegate: ITextSelectionToolbarLayoutDelegate, props : {  fitsAbove? : boolean | undefined, anchorAbove : IOffset, anchorBelow : IOffset,}) => ITextSelectionToolbarLayoutDelegate
}
};
export interface ITextSelectionToolbarLayoutDelegate


{
anchorAbove: IOffset;
anchorBelow: IOffset;
fitsAbove: boolean | undefined;
getConstraintsForChild: (constraints: IBoxConstraints) => IBoxConstraints;
getPositionForChild: (size: ISize, childSize: ISize) => IOffset;
shouldRelayout: (oldDelegate: unknown) => boolean;
getSize: (constraints: IBoxConstraints) => ISize;
toString: () => string;
getHashCode: () => number;
}export class TextSelectionToolbarLayoutDelegate

 implements ISingleChildLayoutDelegate
{    public readonly anchorAbove: IOffset = undefined as any;
    public readonly anchorBelow: IOffset = undefined as any;
    public readonly fitsAbove: boolean | undefined = undefined as any;
public constructor( props : {  fitsAbove? : boolean | undefined, anchorAbove : IOffset, anchorBelow : IOffset,}){
flutter.widgets.textSelectionToolbarLayoutDelegate(this, props);}
    private readonly _dart_getConstraintsForChild: (constraints: IBoxConstraints) => IBoxConstraints = undefined as any;
    private readonly _dart_getPositionForChild: (size: ISize, childSize: ISize) => IOffset = undefined as any;
    private readonly _dart_shouldRelayout: (oldDelegate: any) => boolean = undefined as any;
    private readonly _dart_getSize: (constraints: IBoxConstraints) => ISize = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
public getConstraintsForChild(constraints: IBoxConstraints) : IBoxConstraints {
    return this._dart_getConstraintsForChild(constraints);
}
public getPositionForChild(size: ISize, childSize: ISize) : IOffset {
    return this._dart_getPositionForChild(size, childSize);
}
public shouldRelayout(oldDelegate: any) : boolean {
    return this._dart_shouldRelayout(oldDelegate);
}
public getSize(constraints: IBoxConstraints) : ISize {
    return this._dart_getSize(constraints);
}
public toString() : string {
    return this._dart_toString();
}
public getHashCode() : number {
    return this._dart_getHashCode();
}
}
