import { IList } from "../../dart/core/list";
import { IOffset } from "../../dart/ui/offset";
import { IRect } from "../../dart/ui/rect";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import { ITextSelectionPoint } from "../rendering/textSelectionPoint";
import { IClipboardStatusNotifier } from "../widgets/clipboardStatusNotifier";
import { IState } from "../widgets/state";
import { IStatefulElement } from "../widgets/statefulElement";
import { IStatefulWidget } from "../widgets/statefulWidget";
import { I_DesktopTextSelectionControlsToolbarState } from "./_desktopTextSelectionControlsToolbarState";
declare const flutter: {
    material: {
        _desktopTextSelectionControlsToolbar: (
            this: void,
            _desktopTextSelectionControlsToolbar: I_DesktopTextSelectionControlsToolbar,
            props: {
                key?: IKey | undefined;
                clipboardStatus?: IClipboardStatusNotifier | undefined;
                endpoints: IList<ITextSelectionPoint>;
                globalEditableRegion: IRect;
                handleCopy?: () => void | undefined;
                handleCut?: () => void | undefined;
                handlePaste?: () => void | undefined;
                handleSelectAll?: () => void | undefined;
                lastSecondaryTapDownPosition?: IOffset | undefined;
                selectionMidpoint: IOffset;
                textLineHeight: number;
            }
        ) => I_DesktopTextSelectionControlsToolbar;
    };
};
export interface I_DesktopTextSelectionControlsToolbar {
    clipboardStatus: IClipboardStatusNotifier | undefined;
    endpoints: IList<ITextSelectionPoint>;
    globalEditableRegion: IRect;
    lastSecondaryTapDownPosition: IOffset | undefined;
    selectionMidpoint: IOffset;
    textLineHeight: number;
    key: IKey | undefined;
    createState: () => I_DesktopTextSelectionControlsToolbarState;
    createElement: () => IStatefulElement;
    toStringShort: () => string;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    getHashCode: () => number;
    toStringShallow: (props: {
        joiner: string;
        minLevel: DiagnosticLevel;
    }) => string;
    toStringDeep: (props: {
        minLevel: DiagnosticLevel;
        prefixLineOne: string;
        prefixOtherLines?: string | undefined;
    }) => string;
    toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode;
    debugDescribeChildren: () => IList<IDiagnosticsNode>;
    toString: (props: { minLevel: DiagnosticLevel }) => string;
}
export class _DesktopTextSelectionControlsToolbar
    implements IStatefulWidget, IDiagnosticable
{
    public readonly clipboardStatus: IClipboardStatusNotifier | undefined =
        undefined as any;
    public readonly endpoints: IList<ITextSelectionPoint> = undefined as any;
    public readonly globalEditableRegion: IRect = undefined as any;
    public readonly lastSecondaryTapDownPosition: IOffset | undefined =
        undefined as any;
    public readonly selectionMidpoint: IOffset = undefined as any;
    public readonly textLineHeight: number = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        key?: IKey | undefined;
        clipboardStatus?: IClipboardStatusNotifier | undefined;
        endpoints: IList<ITextSelectionPoint>;
        globalEditableRegion: IRect;
        handleCopy?: () => void | undefined;
        handleCut?: () => void | undefined;
        handlePaste?: () => void | undefined;
        handleSelectAll?: () => void | undefined;
        lastSecondaryTapDownPosition?: IOffset | undefined;
        selectionMidpoint: IOffset;
        textLineHeight: number;
    }) {
        flutter.material._desktopTextSelectionControlsToolbar(this, props);
    }
    private readonly _dart_createState: () => I_DesktopTextSelectionControlsToolbarState =
        undefined as any;
    private readonly _dart_createElement: () => IStatefulElement =
        undefined as any;
    private readonly _dart_toStringShort: () => string = undefined as any;
    private readonly _dart_debugFillProperties: (
        properties: IDiagnosticPropertiesBuilder
    ) => void = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_toStringShallow: (props: {
        joiner: string;
        minLevel: DiagnosticLevel;
    }) => string = undefined as any;
    private readonly _dart_toStringDeep: (props: {
        minLevel: DiagnosticLevel;
        prefixLineOne: string;
        prefixOtherLines?: string | undefined;
    }) => string = undefined as any;
    private readonly _dart_toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode = undefined as any;
    private readonly _dart_debugDescribeChildren: () => IList<IDiagnosticsNode> =
        undefined as any;
    private readonly _dart_toString: (props: {
        minLevel: DiagnosticLevel;
    }) => string = undefined as any;
    public createState(): I_DesktopTextSelectionControlsToolbarState {
        return this._dart_createState();
    }
    public createElement(): IStatefulElement {
        return this._dart_createElement();
    }
    public toStringShort(): string {
        return this._dart_toStringShort();
    }
    public debugFillProperties(properties: IDiagnosticPropertiesBuilder): void {
        return this._dart_debugFillProperties(properties);
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
    public toStringShallow(props: {
        joiner?: string;
        minLevel?: DiagnosticLevel;
    }): string {
        return this._dart_toStringShallow({
            ...toStringShallowDefaultProps,
            ...props,
        });
    }
    public toStringDeep(props: {
        minLevel?: DiagnosticLevel;
        prefixLineOne?: string;
        prefixOtherLines?: string | undefined;
    }): string {
        return this._dart_toStringDeep({
            ...toStringDeepDefaultProps,
            ...props,
        });
    }
    public toDiagnosticsNode(props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }): IDiagnosticsNode {
        return this._dart_toDiagnosticsNode(props);
    }
    public debugDescribeChildren(): IList<IDiagnosticsNode> {
        return this._dart_debugDescribeChildren();
    }
    public toString(props: { minLevel?: DiagnosticLevel }): string {
        return this._dart_toString({
            ...toStringDefaultProps,
            ...props,
        });
    }
}
const toStringShallowDefaultProps = {
    joiner: ", ",
    minLevel: DiagnosticLevel.debug,
};
const toStringDeepDefaultProps = {
    minLevel: DiagnosticLevel.debug,
    prefixLineOne: "",
};
const toStringDefaultProps = {
    minLevel: DiagnosticLevel.info,
};
