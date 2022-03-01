
import { IBuildContext } from "./buildContext";
import { TextSelectionHandleType } from "./textSelectionHandleType";
import { IWidget } from "./widget";
import { IOffset } from "../../dart/ui/offset";
import { IRect } from "../../dart/ui/rect";
import { IList } from "../../dart/core/list";
import { ITextSelectionPoint } from "../rendering/textSelectionPoint";
import { ITextSelectionDelegate } from "../services/textSelectionDelegate";
import { IClipboardStatusNotifier } from "./clipboardStatusNotifier";
import { ISize } from "../../dart/ui/size";
import { IFuture } from "../../dart/async/future";
declare const flutter: {
widgets: {
textSelectionControls: (this: void, textSelectionControls: ITextSelectionControls) => ITextSelectionControls
}
};
export interface ITextSelectionControls


{
buildHandle: (context: IBuildContext, type: TextSelectionHandleType, textLineHeight: number, onTap? : () => void, startGlyphHeight?: number | undefined, endGlyphHeight?: number | undefined) => IWidget;
getHandleAnchor: (type: TextSelectionHandleType, textLineHeight: number, startGlyphHeight?: number | undefined, endGlyphHeight?: number | undefined) => IOffset;
buildToolbar: (context: IBuildContext, globalEditableRegion: IRect, textLineHeight: number, position: IOffset, endpoints: IList<ITextSelectionPoint>, delegate: ITextSelectionDelegate, clipboardStatus: IClipboardStatusNotifier, lastSecondaryTapDownPosition?: IOffset | undefined) => IWidget;
getHandleSize: (textLineHeight: number) => ISize;
canCut: (delegate: ITextSelectionDelegate) => boolean;
canCopy: (delegate: ITextSelectionDelegate) => boolean;
canPaste: (delegate: ITextSelectionDelegate) => boolean;
canSelectAll: (delegate: ITextSelectionDelegate) => boolean;
handleCut: (delegate: ITextSelectionDelegate, clipboardStatus?: IClipboardStatusNotifier | undefined) => void;
handleCopy: (delegate: ITextSelectionDelegate, clipboardStatus?: IClipboardStatusNotifier | undefined) => void;
handlePaste: (delegate: ITextSelectionDelegate) => IFuture<void>;
handleSelectAll: (delegate: ITextSelectionDelegate) => void;
}export class TextSelectionControls


{public constructor(){
flutter.widgets.textSelectionControls(this);}
    private readonly _dart_buildHandle: (context: IBuildContext, type: TextSelectionHandleType, textLineHeight: number, onTap? : () => void, startGlyphHeight?: number | undefined, endGlyphHeight?: number | undefined) => IWidget = undefined as any;
    private readonly _dart_getHandleAnchor: (type: TextSelectionHandleType, textLineHeight: number, startGlyphHeight?: number | undefined, endGlyphHeight?: number | undefined) => IOffset = undefined as any;
    private readonly _dart_buildToolbar: (context: IBuildContext, globalEditableRegion: IRect, textLineHeight: number, position: IOffset, endpoints: IList<ITextSelectionPoint>, delegate: ITextSelectionDelegate, clipboardStatus: IClipboardStatusNotifier, lastSecondaryTapDownPosition?: IOffset | undefined) => IWidget = undefined as any;
    private readonly _dart_getHandleSize: (textLineHeight: number) => ISize = undefined as any;
    private readonly _dart_canCut: (delegate: ITextSelectionDelegate) => boolean = undefined as any;
    private readonly _dart_canCopy: (delegate: ITextSelectionDelegate) => boolean = undefined as any;
    private readonly _dart_canPaste: (delegate: ITextSelectionDelegate) => boolean = undefined as any;
    private readonly _dart_canSelectAll: (delegate: ITextSelectionDelegate) => boolean = undefined as any;
    private readonly _dart_handleCut: (delegate: ITextSelectionDelegate, clipboardStatus?: IClipboardStatusNotifier | undefined) => void = undefined as any;
    private readonly _dart_handleCopy: (delegate: ITextSelectionDelegate, clipboardStatus?: IClipboardStatusNotifier | undefined) => void = undefined as any;
    private readonly _dart_handlePaste: (delegate: ITextSelectionDelegate) => IFuture<void> = undefined as any;
    private readonly _dart_handleSelectAll: (delegate: ITextSelectionDelegate) => void = undefined as any;
public buildHandle(context: IBuildContext, type: TextSelectionHandleType, textLineHeight: number, onTap? : () => void, startGlyphHeight?: number | undefined, endGlyphHeight?: number | undefined) : IWidget {
    return this._dart_buildHandle(context, type, textLineHeight, onTap, startGlyphHeight, endGlyphHeight);
}
public getHandleAnchor(type: TextSelectionHandleType, textLineHeight: number, startGlyphHeight?: number | undefined, endGlyphHeight?: number | undefined) : IOffset {
    return this._dart_getHandleAnchor(type, textLineHeight, startGlyphHeight, endGlyphHeight);
}
public buildToolbar(context: IBuildContext, globalEditableRegion: IRect, textLineHeight: number, position: IOffset, endpoints: IList<ITextSelectionPoint>, delegate: ITextSelectionDelegate, clipboardStatus: IClipboardStatusNotifier, lastSecondaryTapDownPosition?: IOffset | undefined) : IWidget {
    return this._dart_buildToolbar(context, globalEditableRegion, textLineHeight, position, endpoints, delegate, clipboardStatus, lastSecondaryTapDownPosition);
}
public getHandleSize(textLineHeight: number) : ISize {
    return this._dart_getHandleSize(textLineHeight);
}
public canCut(delegate: ITextSelectionDelegate) : boolean {
    return this._dart_canCut(delegate);
}
public canCopy(delegate: ITextSelectionDelegate) : boolean {
    return this._dart_canCopy(delegate);
}
public canPaste(delegate: ITextSelectionDelegate) : boolean {
    return this._dart_canPaste(delegate);
}
public canSelectAll(delegate: ITextSelectionDelegate) : boolean {
    return this._dart_canSelectAll(delegate);
}
public handleCut(delegate: ITextSelectionDelegate, clipboardStatus?: IClipboardStatusNotifier | undefined) : void {
    return this._dart_handleCut(delegate, clipboardStatus);
}
public handleCopy(delegate: ITextSelectionDelegate, clipboardStatus?: IClipboardStatusNotifier | undefined) : void {
    return this._dart_handleCopy(delegate, clipboardStatus);
}
public handlePaste(delegate: ITextSelectionDelegate) : IFuture<void> {
    return this._dart_handlePaste(delegate);
}
public handleSelectAll(delegate: ITextSelectionDelegate) : void {
    return this._dart_handleSelectAll(delegate);
}
}
