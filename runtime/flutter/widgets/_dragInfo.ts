
import { IOffset,Offset } from "../../dart/ui/offset";
import { IWidget } from "./widget";
import { IAnimation } from "../animation/animation";
import { Axis } from "../painting/axis";
import { I_ReorderableItemState } from "./_reorderableItemState";
import { ITickerProvider } from "../scheduler/tickerProvider";
import { IDrag } from "../gestures/drag";
import { IDragUpdateDetails } from "../gestures/dragUpdateDetails";
import { IDragEndDetails } from "../gestures/dragEndDetails";
import { IBuildContext } from "./buildContext";
import { ISliverReorderableListState } from "./sliverReorderableListState";
import { ISize } from "../../dart/ui/size";
import { ICapturedThemes } from "./capturedThemes";
import { IScrollableState } from "./scrollableState";
declare const flutter: {
widgets: {
_dragInfo: (this: void, _dragInfo: I_DragInfo, props : {  initialPosition : IOffset, onCancel? : (item: I_DragInfo) => void | undefined, onDropCompleted? : () => void | undefined, onEnd? : (item: I_DragInfo) => void | undefined, onUpdate? : (item: I_DragInfo, position: IOffset, delta: IOffset) => void | undefined, proxyDecorator? : (child: IWidget, index: number, animation: IAnimation<number>) => IWidget | undefined, scrollDirection : Axis, item : I_ReorderableItemState, tickerProvider : ITickerProvider,}) => I_DragInfo
}
};
export interface I_DragInfo


{
scrollDirection: Axis;
tickerProvider: ITickerProvider;
listState: ISliverReorderableListState;
index: number;
child: IWidget;
dragPosition: IOffset;
dragOffset: IOffset;
itemSize: ISize;
itemExtent: number;
capturedThemes: ICapturedThemes;
scrollable: IScrollableState | undefined;
dispose: () => void;
startDrag: () => void;
update: (details: IDragUpdateDetails) => void;
end: (details: IDragEndDetails) => void;
cancel: () => void;
createProxy: (context: IBuildContext) => IWidget;
toString: () => string;
getHashCode: () => number;
}export class _DragInfo

 implements IDrag
{    public readonly scrollDirection: Axis = undefined as any;
    public readonly tickerProvider: ITickerProvider = undefined as any;
    public readonly listState: ISliverReorderableListState = undefined as any;
    public readonly index: number = undefined as any;
    public readonly child: IWidget = undefined as any;
    public readonly dragPosition: IOffset = undefined as any;
    public readonly dragOffset: IOffset = undefined as any;
    public readonly itemSize: ISize = undefined as any;
    public readonly itemExtent: number = undefined as any;
    public readonly capturedThemes: ICapturedThemes = undefined as any;
    public readonly scrollable: IScrollableState | undefined = undefined as any;
public constructor( props : {  initialPosition? : IOffset, onCancel? : (item: I_DragInfo) => void | undefined, onDropCompleted? : () => void | undefined, onEnd? : (item: I_DragInfo) => void | undefined, onUpdate? : (item: I_DragInfo, position: IOffset, delta: IOffset) => void | undefined, proxyDecorator? : (child: IWidget, index: number, animation: IAnimation<number>) => IWidget | undefined, scrollDirection? : Axis, item : I_ReorderableItemState, tickerProvider : ITickerProvider,}){
flutter.widgets._dragInfo(this, {
..._dragInfoDefaultProps,
...props
});}
    private readonly _dart_dispose: () => void = undefined as any;
    private readonly _dart_startDrag: () => void = undefined as any;
    private readonly _dart_update: (details: IDragUpdateDetails) => void = undefined as any;
    private readonly _dart_end: (details: IDragEndDetails) => void = undefined as any;
    private readonly _dart_cancel: () => void = undefined as any;
    private readonly _dart_createProxy: (context: IBuildContext) => IWidget = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
public dispose() : void {
    return this._dart_dispose();
}
public startDrag() : void {
    return this._dart_startDrag();
}
public update(details: IDragUpdateDetails) : void {
    return this._dart_update(details);
}
public end(details: IDragEndDetails) : void {
    return this._dart_end(details);
}
public cancel() : void {
    return this._dart_cancel();
}
public createProxy(context: IBuildContext) : IWidget {
    return this._dart_createProxy(context);
}
public toString() : string {
    return this._dart_toString();
}
public getHashCode() : number {
    return this._dart_getHashCode();
}
}
const _dragInfoDefaultProps = {
    initialPosition: Offset.zero,
    scrollDirection: Axis.vertical,
};
