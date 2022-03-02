import { IList } from "../../dart/core/list";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import { DragStartBehavior } from "../gestures/dragStartBehavior";
import { ILayerLink } from "../rendering/layerLink";
import { IRenderEditable } from "../rendering/renderEditable";
import { ITextSelection } from "../services/textSelection";
import { ITextSelectionDelegate } from "../services/textSelectionDelegate";
import { I_TextSelectionHandleOverlayState } from "./_textSelectionHandleOverlayState";
import { _TextSelectionHandlePosition } from "./_textSelectionHandlePosition";
import { IState } from "./state";
import { IStatefulElement } from "./statefulElement";
import { IStatefulWidget } from "./statefulWidget";
import { ITextSelectionControls } from "./textSelectionControls";
declare const flutter: {
    widgets: {
        _textSelectionHandleOverlay: (
            this: void,
            _textSelectionHandleOverlay: I_TextSelectionHandleOverlay,
            props: {
                dragStartBehavior: DragStartBehavior;
                key?: IKey | undefined;
                endHandleLayerLink: ILayerLink;
                onSelectionHandleChanged: (value: ITextSelection) => void;
                onSelectionHandleTapped?: () => void | undefined;
                position: _TextSelectionHandlePosition;
                renderObject: IRenderEditable;
                selection: ITextSelection;
                selectionControls: ITextSelectionControls;
                selectionDelegate: ITextSelectionDelegate;
                startHandleLayerLink: ILayerLink;
            }
        ) => I_TextSelectionHandleOverlay;
    };
};
export interface I_TextSelectionHandleOverlay {
    selection: ITextSelection;
    position: _TextSelectionHandlePosition;
    startHandleLayerLink: ILayerLink;
    endHandleLayerLink: ILayerLink;
    renderObject: IRenderEditable;
    selectionControls: ITextSelectionControls;
    dragStartBehavior: DragStartBehavior;
    selectionDelegate: ITextSelectionDelegate;
    key: IKey | undefined;
    createState: () => I_TextSelectionHandleOverlayState;
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
export class _TextSelectionHandleOverlay
    implements IStatefulWidget, IDiagnosticable
{
    public readonly selection: ITextSelection = undefined as any;
    public readonly position: _TextSelectionHandlePosition = undefined as any;
    public readonly startHandleLayerLink: ILayerLink = undefined as any;
    public readonly endHandleLayerLink: ILayerLink = undefined as any;
    public readonly renderObject: IRenderEditable = undefined as any;
    public readonly selectionControls: ITextSelectionControls =
        undefined as any;
    public readonly dragStartBehavior: DragStartBehavior = undefined as any;
    public readonly selectionDelegate: ITextSelectionDelegate =
        undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        dragStartBehavior?: DragStartBehavior;
        key?: IKey | undefined;
        endHandleLayerLink: ILayerLink;
        onSelectionHandleChanged: (value: ITextSelection) => void;
        onSelectionHandleTapped?: () => void | undefined;
        position: _TextSelectionHandlePosition;
        renderObject: IRenderEditable;
        selection: ITextSelection;
        selectionControls: ITextSelectionControls;
        selectionDelegate: ITextSelectionDelegate;
        startHandleLayerLink: ILayerLink;
    }) {
        flutter.widgets._textSelectionHandleOverlay(this, {
            ..._textSelectionHandleOverlayDefaultProps,
            ...props,
        });
    }
    private readonly _dart_createState: () => I_TextSelectionHandleOverlayState =
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
    public createState(): I_TextSelectionHandleOverlayState {
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
const _textSelectionHandleOverlayDefaultProps = {
    dragStartBehavior: DragStartBehavior.start,
};
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
