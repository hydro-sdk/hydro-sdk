import { IDuration } from "../../dart/core/duration";
import { IList } from "../../dart/core/list";
import { Brightness } from "../../dart/ui/brightness";
import { Clip } from "../../dart/ui/clip";
import { IColor } from "../../dart/ui/color";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import { IEdgeInsetsGeometry } from "../painting/edgeInsetsGeometry";
import { IShapeBorder } from "../painting/shapeBorder";
import { IMouseCursor } from "../services/mouseCursor";
import { IBuildContext } from "../widgets/buildContext";
import { IFocusNode } from "../widgets/focusNode";
import { IStatelessElement } from "../widgets/statelessElement";
import { IWidget } from "../widgets/widget";
import { ButtonTextTheme } from "./buttonTextTheme";
import { IFlatButton } from "./flatButton";
import { IMaterialButtonWithIconMixin } from "./materialButtonWithIconMixin";
import { MaterialTapTargetSize } from "./materialTapTargetSize";
import { IVisualDensity } from "./visualDensity";
declare const flutter: {
    material: {
        _flatButtonWithIcon: (
            this: void,
            _flatButtonWithIcon: I_FlatButtonWithIcon,
            props: {
                autofocus: boolean;
                clipBehavior: Clip;
                color?: IColor | undefined;
                colorBrightness?: Brightness | undefined;
                disabledColor?: IColor | undefined;
                disabledTextColor?: IColor | undefined;
                focusColor?: IColor | undefined;
                focusNode?: IFocusNode | undefined;
                height?: number | undefined;
                highlightColor?: IColor | undefined;
                hoverColor?: IColor | undefined;
                key?: IKey | undefined;
                materialTapTargetSize?: MaterialTapTargetSize | undefined;
                minWidth?: number | undefined;
                mouseCursor?: IMouseCursor | undefined;
                onHighlightChanged?: (value: boolean) => void | undefined;
                onLongPress?: () => void | undefined;
                padding?: IEdgeInsetsGeometry | undefined;
                shape?: IShapeBorder | undefined;
                splashColor?: IColor | undefined;
                textColor?: IColor | undefined;
                textTheme?: ButtonTextTheme | undefined;
                icon: IWidget;
                label: IWidget;
                onPressed?: () => void | undefined;
            }
        ) => I_FlatButtonWithIcon;
    };
};
export interface I_FlatButtonWithIcon {
    onPressed: () => void | undefined;
    onLongPress: () => void | undefined;
    onHighlightChanged: (value: boolean) => void | undefined;
    mouseCursor: IMouseCursor | undefined;
    textTheme: ButtonTextTheme | undefined;
    textColor: IColor | undefined;
    disabledTextColor: IColor | undefined;
    color: IColor | undefined;
    disabledColor: IColor | undefined;
    splashColor: IColor | undefined;
    focusColor: IColor | undefined;
    hoverColor: IColor | undefined;
    highlightColor: IColor | undefined;
    elevation: number | undefined;
    hoverElevation: number | undefined;
    focusElevation: number | undefined;
    highlightElevation: number | undefined;
    disabledElevation: number | undefined;
    colorBrightness: Brightness | undefined;
    child: IWidget | undefined;
    padding: IEdgeInsetsGeometry | undefined;
    visualDensity: IVisualDensity | undefined;
    shape: IShapeBorder | undefined;
    clipBehavior: Clip;
    focusNode: IFocusNode | undefined;
    autofocus: boolean;
    animationDuration: IDuration | undefined;
    materialTapTargetSize: MaterialTapTargetSize | undefined;
    minWidth: number | undefined;
    height: number | undefined;
    enableFeedback: boolean;
    key: IKey | undefined;
    build: (context: IBuildContext) => IWidget;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    getEnabled: () => boolean;
    createElement: () => IStatelessElement;
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
export class _FlatButtonWithIcon
    implements IFlatButton, IMaterialButtonWithIconMixin, IDiagnosticable
{
    public readonly onPressed: () => void | undefined = undefined as any;
    public readonly onLongPress: () => void | undefined = undefined as any;
    public readonly onHighlightChanged: (value: boolean) => void | undefined =
        undefined as any;
    public readonly mouseCursor: IMouseCursor | undefined = undefined as any;
    public readonly textTheme: ButtonTextTheme | undefined = undefined as any;
    public readonly textColor: IColor | undefined = undefined as any;
    public readonly disabledTextColor: IColor | undefined = undefined as any;
    public readonly color: IColor | undefined = undefined as any;
    public readonly disabledColor: IColor | undefined = undefined as any;
    public readonly splashColor: IColor | undefined = undefined as any;
    public readonly focusColor: IColor | undefined = undefined as any;
    public readonly hoverColor: IColor | undefined = undefined as any;
    public readonly highlightColor: IColor | undefined = undefined as any;
    public readonly elevation: number | undefined = undefined as any;
    public readonly hoverElevation: number | undefined = undefined as any;
    public readonly focusElevation: number | undefined = undefined as any;
    public readonly highlightElevation: number | undefined = undefined as any;
    public readonly disabledElevation: number | undefined = undefined as any;
    public readonly colorBrightness: Brightness | undefined = undefined as any;
    public readonly child: IWidget | undefined = undefined as any;
    public readonly padding: IEdgeInsetsGeometry | undefined = undefined as any;
    public readonly visualDensity: IVisualDensity | undefined =
        undefined as any;
    public readonly shape: IShapeBorder | undefined = undefined as any;
    public readonly clipBehavior: Clip = undefined as any;
    public readonly focusNode: IFocusNode | undefined = undefined as any;
    public readonly autofocus: boolean = undefined as any;
    public readonly animationDuration: IDuration | undefined = undefined as any;
    public readonly materialTapTargetSize: MaterialTapTargetSize | undefined =
        undefined as any;
    public readonly minWidth: number | undefined = undefined as any;
    public readonly height: number | undefined = undefined as any;
    public readonly enableFeedback: boolean = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        autofocus?: boolean;
        clipBehavior?: Clip;
        color?: IColor | undefined;
        colorBrightness?: Brightness | undefined;
        disabledColor?: IColor | undefined;
        disabledTextColor?: IColor | undefined;
        focusColor?: IColor | undefined;
        focusNode?: IFocusNode | undefined;
        height?: number | undefined;
        highlightColor?: IColor | undefined;
        hoverColor?: IColor | undefined;
        key?: IKey | undefined;
        materialTapTargetSize?: MaterialTapTargetSize | undefined;
        minWidth?: number | undefined;
        mouseCursor?: IMouseCursor | undefined;
        onHighlightChanged?: (value: boolean) => void | undefined;
        onLongPress?: () => void | undefined;
        padding?: IEdgeInsetsGeometry | undefined;
        shape?: IShapeBorder | undefined;
        splashColor?: IColor | undefined;
        textColor?: IColor | undefined;
        textTheme?: ButtonTextTheme | undefined;
        icon: IWidget;
        label: IWidget;
        onPressed?: () => void | undefined;
    }) {
        flutter.material._flatButtonWithIcon(this, {
            ..._flatButtonWithIconDefaultProps,
            ...props,
        });
    }
    private readonly _dart_build: (context: IBuildContext) => IWidget =
        undefined as any;
    private readonly _dart_debugFillProperties: (
        properties: IDiagnosticPropertiesBuilder
    ) => void = undefined as any;
    private readonly _dart_getEnabled: () => boolean = undefined as any;
    private readonly _dart_createElement: () => IStatelessElement =
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
    public build(context: IBuildContext): IWidget {
        return this._dart_build(context);
    }
    public debugFillProperties(properties: IDiagnosticPropertiesBuilder): void {
        return this._dart_debugFillProperties(properties);
    }
    public getEnabled(): boolean {
        return this._dart_getEnabled();
    }
    public createElement(): IStatelessElement {
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
const _flatButtonWithIconDefaultProps = {
    autofocus: false,
    clipBehavior: Clip.none,
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
