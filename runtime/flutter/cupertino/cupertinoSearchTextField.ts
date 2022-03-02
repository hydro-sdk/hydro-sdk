import { IList } from "../../dart/core/list";
import { IColor } from "../../dart/ui/color";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import { IBorderRadius } from "../painting/borderRadius";
import { IBoxDecoration } from "../painting/boxDecoration";
import { EdgeInsetsDirectional } from "../painting/edgeInsetsDirectional";
import { IEdgeInsetsGeometry } from "../painting/edgeInsetsGeometry";
import { ITextStyle } from "../painting/textStyle";
import { IFocusNode } from "../widgets/focusNode";
import { IIcon, Icon } from "../widgets/icon";
import { IState } from "../widgets/state";
import { IStatefulElement } from "../widgets/statefulElement";
import { IStatefulWidget } from "../widgets/statefulWidget";
import { ITextEditingController } from "../widgets/textEditingController";
import { IWidget } from "../widgets/widget";
import { CupertinoColors } from "./cupertinoColors";
import { CupertinoIcons } from "./cupertinoIcons";
import { OverlayVisibilityMode } from "./overlayVisibilityMode";
declare const flutter: {
    cupertino: {
        cupertinoSearchTextField: (
            this: void,
            cupertinoSearchTextField: ICupertinoSearchTextField,
            props: {
                autocorrect: boolean;
                autofocus: boolean;
                backgroundColor?: IColor | undefined;
                borderRadius?: IBorderRadius | undefined;
                controller?: ITextEditingController | undefined;
                decoration?: IBoxDecoration | undefined;
                enabled?: boolean | undefined;
                focusNode?: IFocusNode | undefined;
                itemColor: IColor;
                itemSize: number;
                key?: IKey | undefined;
                onChanged?: (value: string) => void | undefined;
                onSubmitted?: (value: string) => void | undefined;
                onSuffixTap?: () => void | undefined;
                onTap?: () => void | undefined;
                padding: IEdgeInsetsGeometry;
                placeholder?: string | undefined;
                placeholderStyle?: ITextStyle | undefined;
                prefixIcon: IWidget;
                prefixInsets: IEdgeInsetsGeometry;
                restorationId?: string | undefined;
                style?: ITextStyle | undefined;
                suffixIcon: IIcon;
                suffixInsets: IEdgeInsetsGeometry;
                suffixMode: OverlayVisibilityMode;
            }
        ) => ICupertinoSearchTextField;
    };
};
export interface ICupertinoSearchTextField {
    controller: ITextEditingController | undefined;
    style: ITextStyle | undefined;
    placeholder: string | undefined;
    placeholderStyle: ITextStyle | undefined;
    decoration: IBoxDecoration | undefined;
    backgroundColor: IColor | undefined;
    borderRadius: IBorderRadius | undefined;
    padding: IEdgeInsetsGeometry;
    itemColor: IColor;
    itemSize: number;
    prefixInsets: IEdgeInsetsGeometry;
    prefixIcon: IWidget;
    suffixInsets: IEdgeInsetsGeometry;
    suffixIcon: IIcon;
    suffixMode: OverlayVisibilityMode;
    restorationId: string | undefined;
    focusNode: IFocusNode | undefined;
    autofocus: boolean;
    autocorrect: boolean;
    enabled: boolean | undefined;
    key: IKey | undefined;
    createState: () => IState<IStatefulWidget>;
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
export class CupertinoSearchTextField
    implements IStatefulWidget, IDiagnosticable
{
    public readonly controller: ITextEditingController | undefined =
        undefined as any;
    public readonly style: ITextStyle | undefined = undefined as any;
    public readonly placeholder: string | undefined = undefined as any;
    public readonly placeholderStyle: ITextStyle | undefined = undefined as any;
    public readonly decoration: IBoxDecoration | undefined = undefined as any;
    public readonly backgroundColor: IColor | undefined = undefined as any;
    public readonly borderRadius: IBorderRadius | undefined = undefined as any;
    public readonly padding: IEdgeInsetsGeometry = undefined as any;
    public readonly itemColor: IColor = undefined as any;
    public readonly itemSize: number = undefined as any;
    public readonly prefixInsets: IEdgeInsetsGeometry = undefined as any;
    public readonly prefixIcon: IWidget = undefined as any;
    public readonly suffixInsets: IEdgeInsetsGeometry = undefined as any;
    public readonly suffixIcon: IIcon = undefined as any;
    public readonly suffixMode: OverlayVisibilityMode = undefined as any;
    public readonly restorationId: string | undefined = undefined as any;
    public readonly focusNode: IFocusNode | undefined = undefined as any;
    public readonly autofocus: boolean = undefined as any;
    public readonly autocorrect: boolean = undefined as any;
    public readonly enabled: boolean | undefined = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        autocorrect?: boolean;
        autofocus?: boolean;
        backgroundColor?: IColor | undefined;
        borderRadius?: IBorderRadius | undefined;
        controller?: ITextEditingController | undefined;
        decoration?: IBoxDecoration | undefined;
        enabled?: boolean | undefined;
        focusNode?: IFocusNode | undefined;
        itemColor?: IColor;
        itemSize?: number;
        key?: IKey | undefined;
        onChanged?: (value: string) => void | undefined;
        onSubmitted?: (value: string) => void | undefined;
        onSuffixTap?: () => void | undefined;
        onTap?: () => void | undefined;
        padding?: IEdgeInsetsGeometry;
        placeholder?: string | undefined;
        placeholderStyle?: ITextStyle | undefined;
        prefixIcon?: IWidget;
        prefixInsets?: IEdgeInsetsGeometry;
        restorationId?: string | undefined;
        style?: ITextStyle | undefined;
        suffixIcon?: IIcon;
        suffixInsets?: IEdgeInsetsGeometry;
        suffixMode?: OverlayVisibilityMode;
    }) {
        flutter.cupertino.cupertinoSearchTextField(this, {
            ...cupertinoSearchTextFieldDefaultProps,
            ...props,
        });
    }
    private readonly _dart_createState: () => IState<IStatefulWidget> =
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
    public createState(): IState<IStatefulWidget> {
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
const cupertinoSearchTextFieldDefaultProps = {
    autocorrect: true,
    autofocus: false,
    itemColor: CupertinoColors.secondaryLabel,
    itemSize: 20.0,
    padding: EdgeInsetsDirectional.fromSTEB(3.8, 8, 5, 8),
    prefixIcon: new Icon(CupertinoIcons.search),
    prefixInsets: EdgeInsetsDirectional.fromSTEB(6, 0, 0, 4),
    suffixIcon: new Icon(CupertinoIcons.xmark_circle_fill),
    suffixInsets: EdgeInsetsDirectional.fromSTEB(0, 0, 5, 2),
    suffixMode: OverlayVisibilityMode.editing,
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
