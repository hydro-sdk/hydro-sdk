
import { IHitTestResult } from "../gestures/hitTestResult";
import { IHitTestEntry } from "../gestures/hitTestEntry";
import { IMatrix4 } from "../../vector_math/matrix4";
import { IOffset } from "../../dart/ui/offset";
import { IIterable } from "../../dart/core/iterable";
declare const flutter: {
rendering: {
boxHitTestResult: (this: void, boxHitTestResult: IBoxHitTestResult) => IBoxHitTestResult
}
};
export interface IBoxHitTestResult


{
addWithPaintTransform: ( props : {  hitTest : (result: IBoxHitTestResult, position: IOffset) => boolean, position : IOffset, transform? : IMatrix4 | undefined,}) => boolean;
addWithPaintOffset: ( props : {  hitTest : (result: IBoxHitTestResult, position: IOffset) => boolean, offset? : IOffset | undefined, position : IOffset,}) => boolean;
addWithRawTransform: ( props : {  hitTest : (result: IBoxHitTestResult, position: IOffset) => boolean, position : IOffset, transform? : IMatrix4 | undefined,}) => boolean;
addWithOutOfBandPosition: ( props : {  paintOffset? : IOffset | undefined, paintTransform? : IMatrix4 | undefined, rawTransform? : IMatrix4 | undefined, hitTest : (result: IBoxHitTestResult) => boolean,}) => boolean;
add: (entry: IHitTestEntry) => void;
pushTransform: (transform: IMatrix4) => void;
pushOffset: (offset: IOffset) => void;
popTransform: () => void;
toString: () => string;
getPath: () => IIterable<IHitTestEntry>;
getHashCode: () => number;
}export class BoxHitTestResult

 implements IHitTestResult
{public constructor(){
flutter.rendering.boxHitTestResult(this);}
    private readonly _dart_addWithPaintTransform: ( props : {  hitTest : (result: IBoxHitTestResult, position: IOffset) => boolean, position : IOffset, transform? : IMatrix4 | undefined,}) => boolean = undefined as any;
    private readonly _dart_addWithPaintOffset: ( props : {  hitTest : (result: IBoxHitTestResult, position: IOffset) => boolean, offset? : IOffset | undefined, position : IOffset,}) => boolean = undefined as any;
    private readonly _dart_addWithRawTransform: ( props : {  hitTest : (result: IBoxHitTestResult, position: IOffset) => boolean, position : IOffset, transform? : IMatrix4 | undefined,}) => boolean = undefined as any;
    private readonly _dart_addWithOutOfBandPosition: ( props : {  paintOffset? : IOffset | undefined, paintTransform? : IMatrix4 | undefined, rawTransform? : IMatrix4 | undefined, hitTest : (result: IBoxHitTestResult) => boolean,}) => boolean = undefined as any;
    private readonly _dart_add: (entry: IHitTestEntry) => void = undefined as any;
    private readonly _dart_pushTransform: (transform: IMatrix4) => void = undefined as any;
    private readonly _dart_pushOffset: (offset: IOffset) => void = undefined as any;
    private readonly _dart_popTransform: () => void = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getPath: () => IIterable<IHitTestEntry> = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
public addWithPaintTransform( props : {  hitTest : (result: IBoxHitTestResult, position: IOffset) => boolean, position : IOffset, transform? : IMatrix4 | undefined,}) : boolean {
    return this._dart_addWithPaintTransform(props);
}
public addWithPaintOffset( props : {  hitTest : (result: IBoxHitTestResult, position: IOffset) => boolean, offset? : IOffset | undefined, position : IOffset,}) : boolean {
    return this._dart_addWithPaintOffset(props);
}
public addWithRawTransform( props : {  hitTest : (result: IBoxHitTestResult, position: IOffset) => boolean, position : IOffset, transform? : IMatrix4 | undefined,}) : boolean {
    return this._dart_addWithRawTransform(props);
}
public addWithOutOfBandPosition( props : {  paintOffset? : IOffset | undefined, paintTransform? : IMatrix4 | undefined, rawTransform? : IMatrix4 | undefined, hitTest : (result: IBoxHitTestResult) => boolean,}) : boolean {
    return this._dart_addWithOutOfBandPosition(props);
}
public add(entry: IHitTestEntry) : void {
    return this._dart_add(entry);
}
public pushTransform(transform: IMatrix4) : void {
    return this._dart_pushTransform(transform);
}
public pushOffset(offset: IOffset) : void {
    return this._dart_pushOffset(offset);
}
public popTransform() : void {
    return this._dart_popTransform();
}
public toString() : string {
    return this._dart_toString();
}
public getPath() : IIterable<IHitTestEntry> {
    return this._dart_getPath();
}
public getHashCode() : number {
    return this._dart_getHashCode();
}
}
