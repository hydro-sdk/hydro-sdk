
import { IChangeNotifier } from "../foundation/changeNotifier";
import { IListenable } from "../foundation/listenable";
import { IIterable } from "../../dart/core/iterable";
import { IScrollPosition } from "./scrollPosition";
import { ICurve } from "../animation/curve";
import { IDuration } from "../../dart/core/duration";
import { IFuture } from "../../dart/async/future";
import { IScrollPhysics } from "./scrollPhysics";
import { IScrollContext } from "./scrollContext";
import { IList } from "../../dart/core/list";
declare const flutter: {
widgets: {
scrollController: (this: void, scrollController: IScrollController, props : {  debugLabel? : string | undefined, initialScrollOffset : number, keepScrollOffset : boolean,}) => IScrollController
}
};
export interface IScrollController


{
keepScrollOffset: boolean;
debugLabel: string | undefined;
getInitialScrollOffset: () => number;
getPositions: () => IIterable<IScrollPosition>;
getHasClients: () => boolean;
getPosition: () => IScrollPosition;
getOffset: () => number;
animateTo: (offset: number, props : {  curve : ICurve, duration : IDuration,}) => IFuture<void>;
jumpTo: (value: number) => void;
attach: (position: IScrollPosition) => void;
detach: (position: IScrollPosition) => void;
dispose: () => void;
createScrollPosition: (physics: IScrollPhysics, context: IScrollContext, oldPosition?: IScrollPosition | undefined) => IScrollPosition;
toString: () => string;
debugFillDescription: (description: IList<string>) => void;
addListener: (listener : () => void) => void;
removeListener: (listener : () => void) => void;
getHasListeners: () => boolean;
getHashCode: () => number;
}export class ScrollController

 implements IChangeNotifier, IListenable
{    public readonly keepScrollOffset: boolean = undefined as any;
    public readonly debugLabel: string | undefined = undefined as any;
public constructor( props : {  debugLabel? : string | undefined, initialScrollOffset? : number, keepScrollOffset? : boolean,}){
flutter.widgets.scrollController(this, {
...scrollControllerDefaultProps,
...props
});}
    private readonly _dart_getInitialScrollOffset: () => number = undefined as any;
    private readonly _dart_getPositions: () => IIterable<IScrollPosition> = undefined as any;
    private readonly _dart_getHasClients: () => boolean = undefined as any;
    private readonly _dart_getPosition: () => IScrollPosition = undefined as any;
    private readonly _dart_getOffset: () => number = undefined as any;
    private readonly _dart_animateTo: (offset: number, props : {  curve : ICurve, duration : IDuration,}) => IFuture<void> = undefined as any;
    private readonly _dart_jumpTo: (value: number) => void = undefined as any;
    private readonly _dart_attach: (position: IScrollPosition) => void = undefined as any;
    private readonly _dart_detach: (position: IScrollPosition) => void = undefined as any;
    private readonly _dart_dispose: () => void = undefined as any;
    private readonly _dart_createScrollPosition: (physics: IScrollPhysics, context: IScrollContext, oldPosition?: IScrollPosition | undefined) => IScrollPosition = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_debugFillDescription: (description: IList<string>) => void = undefined as any;
    private readonly _dart_addListener: (listener : () => void) => void = undefined as any;
    private readonly _dart_removeListener: (listener : () => void) => void = undefined as any;
    private readonly _dart_notifyListeners: () => void = undefined as any;
    private readonly _dart_getHasListeners: () => boolean = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
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
public createScrollPosition(physics: IScrollPhysics, context: IScrollContext, oldPosition?: IScrollPosition | undefined) : IScrollPosition {
    return this._dart_createScrollPosition(physics, context, oldPosition);
}
public toString() : string {
    return this._dart_toString();
}
public debugFillDescription(description: IList<string>) : void {
    return this._dart_debugFillDescription(description);
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
const scrollControllerDefaultProps = {
    initialScrollOffset: 0.0,
    keepScrollOffset: true,
};
