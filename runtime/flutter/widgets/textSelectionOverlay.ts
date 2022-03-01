
import { IClipboardStatusNotifier } from "./clipboardStatusNotifier";
import { IWidget } from "./widget";
import { DragStartBehavior } from "../gestures/dragStartBehavior";
import { ITextSelectionControls } from "./textSelectionControls";
import { ITextSelectionDelegate } from "../services/textSelectionDelegate";
import { IBuildContext } from "./buildContext";
import { ILayerLink } from "../rendering/layerLink";
import { IRenderEditable } from "../rendering/renderEditable";
import { ITextEditingValue } from "../services/textEditingValue";
import { Duration } from "../../dart/core/duration";
declare const flutter: {
widgets: {
textSelectionOverlay: (this: void, textSelectionOverlay: ITextSelectionOverlay, props : {  clipboardStatus? : IClipboardStatusNotifier | undefined, debugRequiredFor? : IWidget | undefined, dragStartBehavior : DragStartBehavior, handlesVisible : boolean, onSelectionHandleTapped? : () => void | undefined, selectionControls? : ITextSelectionControls | undefined, selectionDelegate? : ITextSelectionDelegate | undefined, context : IBuildContext, endHandleLayerLink : ILayerLink, renderObject : IRenderEditable, startHandleLayerLink : ILayerLink, toolbarLayerLink : ILayerLink, value : ITextEditingValue,}) => ITextSelectionOverlay
}
};
export interface ITextSelectionOverlay


{
context: IBuildContext;
debugRequiredFor: IWidget | undefined;
toolbarLayerLink: ILayerLink;
startHandleLayerLink: ILayerLink;
endHandleLayerLink: ILayerLink;
renderObject: IRenderEditable;
selectionControls: ITextSelectionControls | undefined;
selectionDelegate: ITextSelectionDelegate | undefined;
dragStartBehavior: DragStartBehavior;
clipboardStatus: IClipboardStatusNotifier | undefined;
getHandlesVisible: () => boolean;
setHandlesVisible: (visible: boolean) => void;
showHandles: () => void;
hideHandles: () => void;
showToolbar: () => void;
update: (newValue: ITextEditingValue) => void;
updateForScroll: () => void;
getHandlesAreVisible: () => boolean;
getToolbarIsVisible: () => boolean;
hide: () => void;
hideToolbar: () => void;
dispose: () => void;
}export class TextSelectionOverlay


{    public static fadeDuration = new Duration({ milliseconds: 150 });
    public readonly context: IBuildContext = undefined as any;
    public readonly debugRequiredFor: IWidget | undefined = undefined as any;
    public readonly toolbarLayerLink: ILayerLink = undefined as any;
    public readonly startHandleLayerLink: ILayerLink = undefined as any;
    public readonly endHandleLayerLink: ILayerLink = undefined as any;
    public readonly renderObject: IRenderEditable = undefined as any;
    public readonly selectionControls: ITextSelectionControls | undefined = undefined as any;
    public readonly selectionDelegate: ITextSelectionDelegate | undefined = undefined as any;
    public readonly dragStartBehavior: DragStartBehavior = undefined as any;
    public readonly clipboardStatus: IClipboardStatusNotifier | undefined = undefined as any;
public constructor( props : {  clipboardStatus? : IClipboardStatusNotifier | undefined, debugRequiredFor? : IWidget | undefined, dragStartBehavior? : DragStartBehavior, handlesVisible? : boolean, onSelectionHandleTapped? : () => void | undefined, selectionControls? : ITextSelectionControls | undefined, selectionDelegate? : ITextSelectionDelegate | undefined, context : IBuildContext, endHandleLayerLink : ILayerLink, renderObject : IRenderEditable, startHandleLayerLink : ILayerLink, toolbarLayerLink : ILayerLink, value : ITextEditingValue,}){
flutter.widgets.textSelectionOverlay(this, {
...textSelectionOverlayDefaultProps,
...props
});}
    private readonly _dart_getHandlesVisible: () => boolean = undefined as any;
    private readonly _dart_setHandlesVisible: (visible: boolean) => void = undefined as any;
    private readonly _dart_showHandles: () => void = undefined as any;
    private readonly _dart_hideHandles: () => void = undefined as any;
    private readonly _dart_showToolbar: () => void = undefined as any;
    private readonly _dart_update: (newValue: ITextEditingValue) => void = undefined as any;
    private readonly _dart_updateForScroll: () => void = undefined as any;
    private readonly _dart_getHandlesAreVisible: () => boolean = undefined as any;
    private readonly _dart_getToolbarIsVisible: () => boolean = undefined as any;
    private readonly _dart_hide: () => void = undefined as any;
    private readonly _dart_hideToolbar: () => void = undefined as any;
    private readonly _dart_dispose: () => void = undefined as any;
public getHandlesVisible() : boolean {
    return this._dart_getHandlesVisible();
}
public setHandlesVisible(visible: boolean) : void {
    return this._dart_setHandlesVisible(visible);
}
public showHandles() : void {
    return this._dart_showHandles();
}
public hideHandles() : void {
    return this._dart_hideHandles();
}
public showToolbar() : void {
    return this._dart_showToolbar();
}
public update(newValue: ITextEditingValue) : void {
    return this._dart_update(newValue);
}
public updateForScroll() : void {
    return this._dart_updateForScroll();
}
public getHandlesAreVisible() : boolean {
    return this._dart_getHandlesAreVisible();
}
public getToolbarIsVisible() : boolean {
    return this._dart_getToolbarIsVisible();
}
public hide() : void {
    return this._dart_hide();
}
public hideToolbar() : void {
    return this._dart_hideToolbar();
}
public dispose() : void {
    return this._dart_dispose();
}
}
const textSelectionOverlayDefaultProps = {
    dragStartBehavior: DragStartBehavior.start,
    handlesVisible: false,
};
