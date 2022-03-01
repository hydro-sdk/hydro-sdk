
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
declare const flutter: {
widgets: {
fixedExtentScrollController: (this: void, fixedExtentScrollController: IFixedExtentScrollController, props : {  initialItem : number,}) => IFixedExtentScrollController
}
};
export interface IFixedExtentScrollController


{
initialItem: number;
keepScrollOffset: boolean;
debugLabel: string | undefined;
getSelectedItem: () => number;
animateToItem: (itemIndex: number, props : {  curve : ICurve, duration : IDuration,}) => IFuture<void>;
jumpToItem: (itemIndex: number) => void;
createScrollPosition: (physics: IScrollPhysics, context: IScrollContext, oldPosition?: IScrollPosition | undefined) => IScrollPosition;
animateTo: (offset: number, props : {  curve : ICurve, duration : IDuration,}) => IFuture<void>;
jumpTo: (value: number) => void;
attach: (position: IScrollPosition) => void;
detach: (position: IScrollPosition) => void;
dispose: () => void;
toString: () => string;
debugFillDescription: (description: IList<string>) => void;
getInitialScrollOffset: () => number;
getPositions: () => IIterable<IScrollPosition>;
getHasClients: () => boolean;
getPosition: () => IScrollPosition;
getOffset: () => number;
addListener: (listener : () => void) => void;
removeListener: (listener : () => void) => void;
getHasListeners: () => boolean;
getHashCode: () => number;
}export class FixedExtentScrollController

 implements IScrollController, IListenable
{    public readonly initialItem: number = undefined as any;
    public readonly keepScrollOffset: boolean = undefined as any;
    public readonly debugLabel: string | undefined = undefined as any;
public constructor( props : {  initialItem? : number,}){
flutter.widgets.fixedExtentScrollController(this, {
...fixedExtentScrollControllerDefaultProps,
...props
});}
    private readonly _dart_getSelectedItem: () => number = undefined as any;
    private readonly _dart_animateToItem: (itemIndex: number, props : {  curve : ICurve, duration : IDuration,}) => IFuture<void> = undefined as any;
    private readonly _dart_jumpToItem: (itemIndex: number) => void = undefined as any;
    private readonly _dart_createScrollPosition: (physics: IScrollPhysics, context: IScrollContext, oldPosition?: IScrollPosition | undefined) => IScrollPosition = undefined as any;
    private readonly _dart_animateTo: (offset: number, props : {  curve : ICurve, duration : IDuration,}) => IFuture<void> = undefined as any;
    private readonly _dart_jumpTo: (value: number) => void = undefined as any;
    private readonly _dart_attach: (position: IScrollPosition) => void = undefined as any;
    private readonly _dart_detach: (position: IScrollPosition) => void = undefined as any;
    private readonly _dart_dispose: () => void = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_debugFillDescription: (description: IList<string>) => void = undefined as any;
    private readonly _dart_getInitialScrollOffset: () => number = undefined as any;
    private readonly _dart_getPositions: () => IIterable<IScrollPosition> = undefined as any;
    private readonly _dart_getHasClients: () => boolean = undefined as any;
    private readonly _dart_getPosition: () => IScrollPosition = undefined as any;
    private readonly _dart_getOffset: () => number = undefined as any;
    private readonly _dart_addListener: (listener : () => void) => void = undefined as any;
    private readonly _dart_removeListener: (listener : () => void) => void = undefined as any;
    private readonly _dart_notifyListeners: () => void = undefined as any;
    private readonly _dart_getHasListeners: () => boolean = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
public getSelectedItem() : number {
    return this._dart_getSelectedItem();
}
public animateToItem(itemIndex: number, props : {  curve : ICurve, duration : IDuration,}) : IFuture<void> {
    return this._dart_animateToItem(itemIndex, props);
}
public jumpToItem(itemIndex: number) : void {
    return this._dart_jumpToItem(itemIndex);
}
public createScrollPosition(physics: IScrollPhysics, context: IScrollContext, oldPosition?: IScrollPosition | undefined) : IScrollPosition {
    return this._dart_createScrollPosition(physics, context, oldPosition);
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
public debugFillDescription(description: IList<string>) : void {
    return this._dart_debugFillDescription(description);
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
public getPosition() : IScrollPosition {
    return this._dart_getPosition();
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
const fixedExtentScrollControllerDefaultProps = {
    initialItem: 0,
};
