import { IFuture } from "../../dart/async/future";
import { IList } from "../../dart/core/list";
import { IOffset } from "../../dart/ui/offset";
import { IRect } from "../../dart/ui/rect";
import { ISize } from "../../dart/ui/size";
import { ITextSelectionPoint } from "../rendering/textSelectionPoint";
import { ITextSelectionDelegate } from "../services/textSelectionDelegate";
import { IBuildContext } from "../widgets/buildContext";
import { IClipboardStatusNotifier } from "../widgets/clipboardStatusNotifier";
import { ITextSelectionControls } from "../widgets/textSelectionControls";
import { TextSelectionHandleType } from "../widgets/textSelectionHandleType";
import { IWidget } from "../widgets/widget";
declare const flutter: {
    material: {
        materialTextSelectionControls: (
            this: void,
            materialTextSelectionControls: IMaterialTextSelectionControls
        ) => IMaterialTextSelectionControls;
    };
};
export interface IMaterialTextSelectionControls {
    getHandleSize: (textLineHeight: number) => ISize;
    buildToolbar: (
        context: IBuildContext,
        globalEditableRegion: IRect,
        textLineHeight: number,
        selectionMidpoint: IOffset,
        endpoints: IList<ITextSelectionPoint>,
        delegate: ITextSelectionDelegate,
        clipboardStatus: IClipboardStatusNotifier,
        lastSecondaryTapDownPosition?: IOffset | undefined
    ) => IWidget;
    buildHandle: (
        context: IBuildContext,
        type: TextSelectionHandleType,
        textHeight: number,
        onTap?: () => void,
        startGlyphHeight?: number | undefined,
        endGlyphHeight?: number | undefined
    ) => IWidget;
    getHandleAnchor: (
        type: TextSelectionHandleType,
        textLineHeight: number,
        startGlyphHeight?: number | undefined,
        endGlyphHeight?: number | undefined
    ) => IOffset;
    canSelectAll: (delegate: ITextSelectionDelegate) => boolean;
    canCut: (delegate: ITextSelectionDelegate) => boolean;
    canCopy: (delegate: ITextSelectionDelegate) => boolean;
    canPaste: (delegate: ITextSelectionDelegate) => boolean;
    handleCut: (
        delegate: ITextSelectionDelegate,
        clipboardStatus?: IClipboardStatusNotifier | undefined
    ) => void;
    handleCopy: (
        delegate: ITextSelectionDelegate,
        clipboardStatus?: IClipboardStatusNotifier | undefined
    ) => void;
    handlePaste: (delegate: ITextSelectionDelegate) => IFuture<void>;
    handleSelectAll: (delegate: ITextSelectionDelegate) => void;
    toString: () => string;
    getHashCode: () => number;
}
export class MaterialTextSelectionControls implements ITextSelectionControls {
    public constructor() {
        flutter.material.materialTextSelectionControls(this);
    }
    private readonly _dart_getHandleSize: (textLineHeight: number) => ISize =
        undefined as any;
    private readonly _dart_buildToolbar: (
        context: IBuildContext,
        globalEditableRegion: IRect,
        textLineHeight: number,
        selectionMidpoint: IOffset,
        endpoints: IList<ITextSelectionPoint>,
        delegate: ITextSelectionDelegate,
        clipboardStatus: IClipboardStatusNotifier,
        lastSecondaryTapDownPosition?: IOffset | undefined
    ) => IWidget = undefined as any;
    private readonly _dart_buildHandle: (
        context: IBuildContext,
        type: TextSelectionHandleType,
        textHeight: number,
        onTap?: () => void,
        startGlyphHeight?: number | undefined,
        endGlyphHeight?: number | undefined
    ) => IWidget = undefined as any;
    private readonly _dart_getHandleAnchor: (
        type: TextSelectionHandleType,
        textLineHeight: number,
        startGlyphHeight?: number | undefined,
        endGlyphHeight?: number | undefined
    ) => IOffset = undefined as any;
    private readonly _dart_canSelectAll: (
        delegate: ITextSelectionDelegate
    ) => boolean = undefined as any;
    private readonly _dart_canCut: (
        delegate: ITextSelectionDelegate
    ) => boolean = undefined as any;
    private readonly _dart_canCopy: (
        delegate: ITextSelectionDelegate
    ) => boolean = undefined as any;
    private readonly _dart_canPaste: (
        delegate: ITextSelectionDelegate
    ) => boolean = undefined as any;
    private readonly _dart_handleCut: (
        delegate: ITextSelectionDelegate,
        clipboardStatus?: IClipboardStatusNotifier | undefined
    ) => void = undefined as any;
    private readonly _dart_handleCopy: (
        delegate: ITextSelectionDelegate,
        clipboardStatus?: IClipboardStatusNotifier | undefined
    ) => void = undefined as any;
    private readonly _dart_handlePaste: (
        delegate: ITextSelectionDelegate
    ) => IFuture<void> = undefined as any;
    private readonly _dart_handleSelectAll: (
        delegate: ITextSelectionDelegate
    ) => void = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public getHandleSize(textLineHeight: number): ISize {
        return this._dart_getHandleSize(textLineHeight);
    }
    public buildToolbar(
        context: IBuildContext,
        globalEditableRegion: IRect,
        textLineHeight: number,
        selectionMidpoint: IOffset,
        endpoints: IList<ITextSelectionPoint>,
        delegate: ITextSelectionDelegate,
        clipboardStatus: IClipboardStatusNotifier,
        lastSecondaryTapDownPosition?: IOffset | undefined
    ): IWidget {
        return this._dart_buildToolbar(
            context,
            globalEditableRegion,
            textLineHeight,
            selectionMidpoint,
            endpoints,
            delegate,
            clipboardStatus,
            lastSecondaryTapDownPosition
        );
    }
    public buildHandle(
        context: IBuildContext,
        type: TextSelectionHandleType,
        textHeight: number,
        onTap?: () => void,
        startGlyphHeight?: number | undefined,
        endGlyphHeight?: number | undefined
    ): IWidget {
        return this._dart_buildHandle(
            context,
            type,
            textHeight,
            onTap,
            startGlyphHeight,
            endGlyphHeight
        );
    }
    public getHandleAnchor(
        type: TextSelectionHandleType,
        textLineHeight: number,
        startGlyphHeight?: number | undefined,
        endGlyphHeight?: number | undefined
    ): IOffset {
        return this._dart_getHandleAnchor(
            type,
            textLineHeight,
            startGlyphHeight,
            endGlyphHeight
        );
    }
    public canSelectAll(delegate: ITextSelectionDelegate): boolean {
        return this._dart_canSelectAll(delegate);
    }
    public canCut(delegate: ITextSelectionDelegate): boolean {
        return this._dart_canCut(delegate);
    }
    public canCopy(delegate: ITextSelectionDelegate): boolean {
        return this._dart_canCopy(delegate);
    }
    public canPaste(delegate: ITextSelectionDelegate): boolean {
        return this._dart_canPaste(delegate);
    }
    public handleCut(
        delegate: ITextSelectionDelegate,
        clipboardStatus?: IClipboardStatusNotifier | undefined
    ): void {
        return this._dart_handleCut(delegate, clipboardStatus);
    }
    public handleCopy(
        delegate: ITextSelectionDelegate,
        clipboardStatus?: IClipboardStatusNotifier | undefined
    ): void {
        return this._dart_handleCopy(delegate, clipboardStatus);
    }
    public handlePaste(delegate: ITextSelectionDelegate): IFuture<void> {
        return this._dart_handlePaste(delegate);
    }
    public handleSelectAll(delegate: ITextSelectionDelegate): void {
        return this._dart_handleSelectAll(delegate);
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
