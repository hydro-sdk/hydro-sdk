
import { TextDirection } from "../../dart/ui/textDirection";
import { IMultiChildLayoutDelegate } from "../rendering/multiChildLayoutDelegate";
import { IBoxConstraints } from "../rendering/boxConstraints";
import { ISize } from "../../dart/ui/size";
import { IOffset } from "../../dart/ui/offset";
declare const flutter: {
widgets: {
_toolbarLayout: (this: void, _toolbarLayout: I_ToolbarLayout, props : {  centerMiddle : boolean, middleSpacing : number, textDirection : TextDirection,}) => I_ToolbarLayout
}
};
export interface I_ToolbarLayout


{
centerMiddle: boolean;
middleSpacing: number;
textDirection: TextDirection;
performLayout: (size: ISize) => void;
shouldRelayout: (oldDelegate: unknown) => boolean;
hasChild: (childId: Object) => boolean;
layoutChild: (childId: Object, constraints: IBoxConstraints) => ISize;
positionChild: (childId: Object, offset: IOffset) => void;
getSize: (constraints: IBoxConstraints) => ISize;
toString: () => string;
getHashCode: () => number;
}export class _ToolbarLayout

 implements IMultiChildLayoutDelegate
{    public readonly centerMiddle: boolean = undefined as any;
    public readonly middleSpacing: number = undefined as any;
    public readonly textDirection: TextDirection = undefined as any;
public constructor( props : {  centerMiddle : boolean, middleSpacing : number, textDirection : TextDirection,}){
flutter.widgets._toolbarLayout(this, props);}
    private readonly _dart_performLayout: (size: ISize) => void = undefined as any;
    private readonly _dart_shouldRelayout: (oldDelegate: any) => boolean = undefined as any;
    private readonly _dart_hasChild: (childId: Object) => boolean = undefined as any;
    private readonly _dart_layoutChild: (childId: Object, constraints: IBoxConstraints) => ISize = undefined as any;
    private readonly _dart_positionChild: (childId: Object, offset: IOffset) => void = undefined as any;
    private readonly _dart_getSize: (constraints: IBoxConstraints) => ISize = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
public performLayout(size: ISize) : void {
    return this._dart_performLayout(size);
}
public shouldRelayout(oldDelegate: any) : boolean {
    return this._dart_shouldRelayout(oldDelegate);
}
public hasChild(childId: Object) : boolean {
    return this._dart_hasChild(childId);
}
public layoutChild(childId: Object, constraints: IBoxConstraints) : ISize {
    return this._dart_layoutChild(childId, constraints);
}
public positionChild(childId: Object, offset: IOffset) : void {
    return this._dart_positionChild(childId, offset);
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
