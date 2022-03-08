import { IList } from "../../dart/core/list";
import { BoxHeightStyle } from "../../dart/ui/boxHeightStyle";
import { BoxWidthStyle } from "../../dart/ui/boxWidthStyle";
import { IColor } from "../../dart/ui/color";
import { IRadius } from "../../dart/ui/radius";
import { TextAlign } from "../../dart/ui/textAlign";
import { TextDirection } from "../../dart/ui/textDirection";
import { ITextHeightBehavior } from "../../dart/ui/textHeightBehavior";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import { DragStartBehavior } from "../gestures/dragStartBehavior";
import { IStrutStyle } from "../painting/strutStyle";
import { ITextSpan } from "../painting/textSpan";
import { ITextStyle } from "../painting/textStyle";
import { TextWidthBasis } from "../painting/textWidthBasis";
import { SelectionChangedCause } from "../services/selectionChangedCause";
import { ITextSelection } from "../services/textSelection";
import { IFocusNode } from "../widgets/focusNode";
import { IScrollPhysics } from "../widgets/scrollPhysics";
import { IState } from "../widgets/state";
import { IStatefulElement } from "../widgets/statefulElement";
import { IStatefulWidget } from "../widgets/statefulWidget";
import { ITextSelectionControls } from "../widgets/textSelectionControls";
import { IToolbarOptions } from "../widgets/toolbarOptions";
declare const flutter: {
    material: {
        selectableText: (
            this: void,
            selectableText: ISelectableText,
            data: string,
            props: {
                autofocus: boolean;
                cursorColor?: IColor | undefined;
                cursorHeight?: number | undefined;
                cursorRadius?: IRadius | undefined;
                cursorWidth: number;
                dragStartBehavior: DragStartBehavior;
                enableInteractiveSelection: boolean;
                focusNode?: IFocusNode | undefined;
                key?: IKey | undefined;
                maxLines?: number | undefined;
                minLines?: number | undefined;
                onSelectionChanged?: (
                    selection: ITextSelection,
                    cause?: SelectionChangedCause | undefined
                ) => void | undefined;
                onTap?: () => void | undefined;
                scrollPhysics?: IScrollPhysics | undefined;
                selectionControls?: ITextSelectionControls | undefined;
                selectionHeightStyle: BoxHeightStyle;
                selectionWidthStyle: BoxWidthStyle;
                semanticsLabel?: string | undefined;
                showCursor: boolean;
                strutStyle?: IStrutStyle | undefined;
                style?: ITextStyle | undefined;
                textAlign?: TextAlign | undefined;
                textDirection?: TextDirection | undefined;
                textHeightBehavior?: ITextHeightBehavior | undefined;
                textScaleFactor?: number | undefined;
                textWidthBasis?: TextWidthBasis | undefined;
                toolbarOptions?: IToolbarOptions | undefined;
            }
        ) => ISelectableText;
    };
};
export interface ISelectableText {
    data: string | undefined;
    textSpan: ITextSpan | undefined;
    focusNode: IFocusNode | undefined;
    style: ITextStyle | undefined;
    strutStyle: IStrutStyle | undefined;
    textAlign: TextAlign | undefined;
    textDirection: TextDirection | undefined;
    textScaleFactor: number | undefined;
    autofocus: boolean;
    minLines: number | undefined;
    maxLines: number | undefined;
    showCursor: boolean;
    cursorWidth: number;
    cursorHeight: number | undefined;
    cursorRadius: IRadius | undefined;
    cursorColor: IColor | undefined;
    selectionHeightStyle: BoxHeightStyle;
    selectionWidthStyle: BoxWidthStyle;
    enableInteractiveSelection: boolean;
    selectionControls: ITextSelectionControls | undefined;
    dragStartBehavior: DragStartBehavior;
    toolbarOptions: IToolbarOptions;
    scrollPhysics: IScrollPhysics | undefined;
    semanticsLabel: string | undefined;
    textHeightBehavior: ITextHeightBehavior | undefined;
    textWidthBasis: TextWidthBasis | undefined;
    key: IKey | undefined;
    getSelectionEnabled: () => boolean;
    createState: () => IState<ISelectableText>;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    createElement: () => IStatefulElement;
    toStringShort: () => string;
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
export class SelectableText implements IStatefulWidget, IDiagnosticable {
    public readonly data: string | undefined = undefined as any;
    public readonly textSpan: ITextSpan | undefined = undefined as any;
    public readonly focusNode: IFocusNode | undefined = undefined as any;
    public readonly style: ITextStyle | undefined = undefined as any;
    public readonly strutStyle: IStrutStyle | undefined = undefined as any;
    public readonly textAlign: TextAlign | undefined = undefined as any;
    public readonly textDirection: TextDirection | undefined = undefined as any;
    public readonly textScaleFactor: number | undefined = undefined as any;
    public readonly autofocus: boolean = undefined as any;
    public readonly minLines: number | undefined = undefined as any;
    public readonly maxLines: number | undefined = undefined as any;
    public readonly showCursor: boolean = undefined as any;
    public readonly cursorWidth: number = undefined as any;
    public readonly cursorHeight: number | undefined = undefined as any;
    public readonly cursorRadius: IRadius | undefined = undefined as any;
    public readonly cursorColor: IColor | undefined = undefined as any;
    public readonly selectionHeightStyle: BoxHeightStyle = undefined as any;
    public readonly selectionWidthStyle: BoxWidthStyle = undefined as any;
    public readonly enableInteractiveSelection: boolean = undefined as any;
    public readonly selectionControls: ITextSelectionControls | undefined =
        undefined as any;
    public readonly dragStartBehavior: DragStartBehavior = undefined as any;
    public readonly toolbarOptions: IToolbarOptions = undefined as any;
    public readonly scrollPhysics: IScrollPhysics | undefined =
        undefined as any;
    public readonly semanticsLabel: string | undefined = undefined as any;
    public readonly textHeightBehavior: ITextHeightBehavior | undefined =
        undefined as any;
    public readonly textWidthBasis: TextWidthBasis | undefined =
        undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(
        data: string,
        props: {
            autofocus?: boolean;
            cursorColor?: IColor | undefined;
            cursorHeight?: number | undefined;
            cursorRadius?: IRadius | undefined;
            cursorWidth?: number;
            dragStartBehavior?: DragStartBehavior;
            enableInteractiveSelection?: boolean;
            focusNode?: IFocusNode | undefined;
            key?: IKey | undefined;
            maxLines?: number | undefined;
            minLines?: number | undefined;
            onSelectionChanged?: (
                selection: ITextSelection,
                cause?: SelectionChangedCause | undefined
            ) => void | undefined;
            onTap?: () => void | undefined;
            scrollPhysics?: IScrollPhysics | undefined;
            selectionControls?: ITextSelectionControls | undefined;
            selectionHeightStyle?: BoxHeightStyle;
            selectionWidthStyle?: BoxWidthStyle;
            semanticsLabel?: string | undefined;
            showCursor?: boolean;
            strutStyle?: IStrutStyle | undefined;
            style?: ITextStyle | undefined;
            textAlign?: TextAlign | undefined;
            textDirection?: TextDirection | undefined;
            textHeightBehavior?: ITextHeightBehavior | undefined;
            textScaleFactor?: number | undefined;
            textWidthBasis?: TextWidthBasis | undefined;
            toolbarOptions?: IToolbarOptions | undefined;
        }
    ) {
        flutter.material.selectableText(this, data, {
            ...selectableTextDefaultProps,
            ...props,
        });
    }
    private readonly _dart_getSelectionEnabled: () => boolean =
        undefined as any;
    private readonly _dart_createState: () => IState<ISelectableText> =
        undefined as any;
    private readonly _dart_debugFillProperties: (
        properties: IDiagnosticPropertiesBuilder
    ) => void = undefined as any;
    private readonly _dart_createElement: () => IStatefulElement =
        undefined as any;
    private readonly _dart_toStringShort: () => string = undefined as any;
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
    public getSelectionEnabled(): boolean {
        return this._dart_getSelectionEnabled();
    }
    public createState(): IState<ISelectableText> {
        return this._dart_createState();
    }
    public debugFillProperties(properties: IDiagnosticPropertiesBuilder): void {
        return this._dart_debugFillProperties(properties);
    }
    public createElement(): IStatefulElement {
        return this._dart_createElement();
    }
    public toStringShort(): string {
        return this._dart_toStringShort();
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
const selectableTextDefaultProps = {
    autofocus: false,
    cursorWidth: 2.0,
    dragStartBehavior: DragStartBehavior.start,
    enableInteractiveSelection: true,
    selectionHeightStyle: BoxHeightStyle.tight,
    selectionWidthStyle: BoxWidthStyle.tight,
    showCursor: false,
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
