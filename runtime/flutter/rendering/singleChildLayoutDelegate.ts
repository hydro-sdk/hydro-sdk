
import { IListenable } from "../foundation/listenable";
import { IBoxConstraints } from "./boxConstraints";
import { ISize } from "../../dart/ui/size";
import { IOffset } from "../../dart/ui/offset";
declare const flutter: {
rendering: {
singleChildLayoutDelegate: (this: void, singleChildLayoutDelegate: ISingleChildLayoutDelegate, props? : {  relayout? : IListenable | undefined,}) => ISingleChildLayoutDelegate
}
};
export interface ISingleChildLayoutDelegate


{
getSize: (constraints: IBoxConstraints) => ISize;
getConstraintsForChild: (constraints: IBoxConstraints) => IBoxConstraints;
getPositionForChild: (size: ISize, childSize: ISize) => IOffset;
shouldRelayout: (oldDelegate: unknown) => boolean;
}export class SingleChildLayoutDelegate


{public constructor( props? : {  relayout? : IListenable | undefined,}){
flutter.rendering.singleChildLayoutDelegate(this, props);}
    private readonly _dart_getSize: (constraints: IBoxConstraints) => ISize = undefined as any;
    private readonly _dart_getConstraintsForChild: (constraints: IBoxConstraints) => IBoxConstraints = undefined as any;
    private readonly _dart_getPositionForChild: (size: ISize, childSize: ISize) => IOffset = undefined as any;
    private readonly _dart_shouldRelayout: (oldDelegate: any) => boolean = undefined as any;
public getSize(constraints: IBoxConstraints) : ISize {
    return this._dart_getSize(constraints);
}
public getConstraintsForChild(constraints: IBoxConstraints) : IBoxConstraints {
    return this._dart_getConstraintsForChild(constraints);
}
public getPositionForChild(size: ISize, childSize: ISize) : IOffset {
    return this._dart_getPositionForChild(size, childSize);
}
public shouldRelayout(oldDelegate: any) : boolean {
    return this._dart_shouldRelayout(oldDelegate);
}
}
