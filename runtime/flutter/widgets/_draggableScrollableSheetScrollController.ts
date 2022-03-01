
import { I_DraggableSheetExtent } from "./_draggableSheetExtent";
import { IScrollController } from "./scrollController";
import { ICurve } from "../animation/curve";
import { IDuration } from "../../dart/core/duration";
import { IFuture } from "../../dart/async/future";
import { IScrollPosition } from "./scrollPosition";
import { IScrollPhysics } from "./scrollPhysics";
import { IScrollContext } from "./scrollContext";
import { IList } from "../../dart/core/list";
import { IIterable } from "../../dart/core/iterable";
import { IListenable } from "../foundation/listenable";
import { I_DraggableScrollableSheetScrollPosition } from "./_draggableScrollableSheetScrollPosition";
declare const flutter: {
widgets: {
_draggableScrollableSheetScrollController: (this: void, _draggableScrollableSheetScrollController: I_DraggableScrollableSheetScrollController, props : {  debugLabel? : string | undefined, initialScrollOffset : number, extent : I_DraggableSheetExtent,}) => I_DraggableScrollableSheetScrollController
}
};
export interface I_DraggableScrollableSheetScrollController


{
extent: I_DraggableSheetExtent;
keepScrollOffset: boolean;
debugLabel: string | undefined;
createScrollPosition: (physics: IScrollPhysics, context: IScrollContext, oldPosition?: IScrollPosition | undefined) => I_DraggableScrollableSheetScrollPosition;
debugFillDescription: (description: IList<string>) => void;
getPosition: () => I_DraggableScrollableSheetScrollPosition;
animateTo: (offset: number, props : {  curve : ICurve, duration : IDuration,}) => IFuture<void>;
jumpTo: (value: number) => void;
attach: (position: IScrollPosition) => void;
detach: (position: IScrollPosition) => void;
dispose: () => void;
toString: () => string;
getInitialScrollOffset: () => number;
getPositions: () => IIterable<IScrollPosition>;
getHasClients: () => boolean;
getOffset: () => number;
addListener: (listener : () => void) => void;
removeListener: (listener : () => void) => void;
getHasListeners: () => boolean;
getHashCode: () => number;
}export class _DraggableScrollableSheetScrollController

 implements IScrollController, IListenable
{    public readonly extent: I_DraggableSheetExtent = undefined as any;
    public readonly keepScrollOffset: boolean = undefined as any;
    public readonly debugLabel: string | undefined = undefined as any;
public constructor( props : {  debugLabel? : string | undefined, initialScrollOffset? : number, extent : I_DraggableSheetExtent,}){
flutter.widgets._draggableScrollableSheetScrollController(this, {
..._draggableScrollableSheetScrollControllerDefaultProps,
...props
});}
    private readonly _dart_createScrollPosition: (physics: IScrollPhysics, context: IScrollContext, oldPosition?: IScrollPosition | undefined) => I_DraggableScrollableSheetScrollPosition = undefined as any;
    private readonly _dart_debugFillDescription: (description: IList<string>) => void = undefined as any;
    private readonly _dart_getPosition: () => I_DraggableScrollableSheetScrollPosition = undefined as any;
    private readonly _dart_animateTo: (offset: number, props : {  curve : ICurve, duration : IDuration,}) => IFuture<void> = undefined as any;
    private readonly _dart_jumpTo: (value: number) => void = undefined as any;
    private readonly _dart_attach: (position: IScrollPosition) => void = undefined as any;
    private readonly _dart_detach: (position: IScrollPosition) => void = undefined as any;
    private readonly _dart_dispose: () => void = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getInitialScrollOffset: () => number = undefined as any;
    private readonly _dart_getPositions: () => IIterable<IScrollPosition> = undefined as any;
    private readonly _dart_getHasClients: () => boolean = undefined as any;
    private readonly _dart_getOffset: () => number = undefined as any;
    private readonly _dart_addListener: (listener : () => void) => void = undefined as any;
    private readonly _dart_removeListener: (listener : () => void) => void = undefined as any;
    private readonly _dart_notifyListeners: () => void = undefined as any;
    private readonly _dart_getHasListeners: () => boolean = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
public createScrollPosition(physics: IScrollPhysics, context: IScrollContext, oldPosition?: IScrollPosition | undefined) : I_DraggableScrollableSheetScrollPosition {
    return this._dart_createScrollPosition(physics, context, oldPosition);
}
public debugFillDescription(description: IList<string>) : void {
    return this._dart_debugFillDescription(description);
}
public getPosition() : I_DraggableScrollableSheetScrollPosition {
    return this._dart_getPosition();
}
public animateTo(offset: number, props : {  curve : ICurve, duration : IDuration,}) : IFuture<void> {
    return this._dart_animateTo(offset, props);
}
public jumpTo(value: number) : void {
    return this._dart_jumpTo(value);
}
public attach(position: IScrollPosition) : void {
    return this._dart_attach(position);
}
public detach(position: IScrollPosition) : void {
    return this._dart_detach(position);
}
public dispose() : void {
    return this._dart_dispose();
}
public toString() : string {
    return this._dart_toString();
}
public getInitialScrollOffset() : number {
    return this._dart_getInitialScrollOffset();
}
public getPositions() : IIterable<IScrollPosition> {
    return this._dart_getPositions();
}
public getHasClients() : boolean {
    return this._dart_getHasClients();
}
public getOffset() : number {
    return this._dart_getOffset();
}
public addListener(listener : () => void) : void {
    return this._dart_addListener(listener);
}
public removeListener(listener : () => void) : void {
    return this._dart_removeListener(listener);
}
public notifyListeners() : void {
    return this._dart_notifyListeners();
}
public getHasListeners() : boolean {
    return this._dart_getHasListeners();
}
public getHashCode() : number {
    return this._dart_getHashCode();
}
}
const _draggableScrollableSheetScrollControllerDefaultProps = {
    initialScrollOffset: 0.0,
};
