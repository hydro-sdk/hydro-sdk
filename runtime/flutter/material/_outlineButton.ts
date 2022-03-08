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
import { IBorderSide } from "../painting/borderSide";
import { IEdgeInsetsGeometry } from "../painting/edgeInsetsGeometry";
import { IShapeBorder } from "../painting/shapeBorder";
import { IMouseCursor } from "../services/mouseCursor";
import { IFocusNode } from "../widgets/focusNode";
import { IState } from "../widgets/state";
import { IStatefulElement } from "../widgets/statefulElement";
import { IStatefulWidget } from "../widgets/statefulWidget";
import { IWidget } from "../widgets/widget";
import { I_OutlineButtonState } from "./_outlineButtonState";
import { ButtonTextTheme } from "./buttonTextTheme";
import { MaterialTapTargetSize } from "./materialTapTargetSize";
import { IVisualDensity } from "./visualDensity";
declare const flutter: {
    material: {
        _outlineButton: (
            this: void,
            _outlineButton: I_OutlineButton,
            props: {
                autofocus: boolean;
                borderSide?: IBorderSide | undefined;
                child?: IWidget | undefined;
                clipBehavior: Clip;
                color?: IColor | undefined;
                disabledBorderColor?: IColor | undefined;
                focusNode?: IFocusNode | undefined;
                key?: IKey | undefined;
                materialTapTargetSize?: MaterialTapTargetSize | undefined;
                mouseCursor?: IMouseCursor | undefined;
                onLongPress?: () => void | undefined;
                textTheme?: ButtonTextTheme | undefined;
                visualDensity?: IVisualDensity | undefined;
                brightness: Brightness;
                disabledTextColor: IColor;
                focusColor: IColor;
                highlightColor: IColor;
                highlightElevation: number;
                highlightedBorderColor: IColor;
                hoverColor: IColor;
                onPressed?: () => void | undefined;
                padding: IEdgeInsetsGeometry;
                shape: IShapeBorder;
                splashColor: IColor;
                textColor: IColor;
            }
        ) => I_OutlineButton;
    };
};
export interface I_OutlineButton {
    mouseCursor: IMouseCursor | undefined;
    brightness: Brightness;
    textTheme: ButtonTextTheme | undefined;
    textColor: IColor;
    disabledTextColor: IColor;
    color: IColor | undefined;
    splashColor: IColor;
    focusColor: IColor;
    hoverColor: IColor;
    highlightColor: IColor;
    highlightElevation: number;
    borderSide: IBorderSide | undefined;
    disabledBorderColor: IColor | undefined;
    highlightedBorderColor: IColor;
    padding: IEdgeInsetsGeometry;
    visualDensity: IVisualDensity | undefined;
    shape: IShapeBorder;
    clipBehavior: Clip;
    focusNode: IFocusNode | undefined;
    autofocus: boolean;
    child: IWidget | undefined;
    materialTapTargetSize: MaterialTapTargetSize | undefined;
    key: IKey | undefined;
    getEnabled: () => boolean;
    createState: () => I_OutlineButtonState;
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
export class _OutlineButton implements IStatefulWidget, IDiagnosticable {
    public readonly mouseCursor: IMouseCursor | undefined = undefined as any;
    public readonly brightness: Brightness = undefined as any;
    public readonly textTheme: ButtonTextTheme | undefined = undefined as any;
    public readonly textColor: IColor = undefined as any;
    public readonly disabledTextColor: IColor = undefined as any;
    public readonly color: IColor | undefined = undefined as any;
    public readonly splashColor: IColor = undefined as any;
    public readonly focusColor: IColor = undefined as any;
    public readonly hoverColor: IColor = undefined as any;
    public readonly highlightColor: IColor = undefined as any;
    public readonly highlightElevation: number = undefined as any;
    public readonly borderSide: IBorderSide | undefined = undefined as any;
    public readonly disabledBorderColor: IColor | undefined = undefined as any;
    public readonly highlightedBorderColor: IColor = undefined as any;
    public readonly padding: IEdgeInsetsGeometry = undefined as any;
    public readonly visualDensity: IVisualDensity | undefined =
        undefined as any;
    public readonly shape: IShapeBorder = undefined as any;
    public readonly clipBehavior: Clip = undefined as any;
    public readonly focusNode: IFocusNode | undefined = undefined as any;
    public readonly autofocus: boolean = undefined as any;
    public readonly child: IWidget | undefined = undefined as any;
    public readonly materialTapTargetSize: MaterialTapTargetSize | undefined =
        undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        autofocus?: boolean;
        borderSide?: IBorderSide | undefined;
        child?: IWidget | undefined;
        clipBehavior?: Clip;
        color?: IColor | undefined;
        disabledBorderColor?: IColor | undefined;
        focusNode?: IFocusNode | undefined;
        key?: IKey | undefined;
        materialTapTargetSize?: MaterialTapTargetSize | undefined;
        mouseCursor?: IMouseCursor | undefined;
        onLongPress?: () => void | undefined;
        textTheme?: ButtonTextTheme | undefined;
        visualDensity?: IVisualDensity | undefined;
        brightness: Brightness;
        disabledTextColor: IColor;
        focusColor: IColor;
        highlightColor: IColor;
        highlightElevation: number;
        highlightedBorderColor: IColor;
        hoverColor: IColor;
        onPressed?: () => void | undefined;
        padding: IEdgeInsetsGeometry;
        shape: IShapeBorder;
        splashColor: IColor;
        textColor: IColor;
    }) {
        flutter.material._outlineButton(this, {
            ..._outlineButtonDefaultProps,
            ...props,
        });
    }
    private readonly _dart_getEnabled: () => boolean = undefined as any;
    private readonly _dart_createState: () => I_OutlineButtonState =
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
    public getEnabled(): boolean {
        return this._dart_getEnabled();
    }
    public createState(): I_OutlineButtonState {
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
const _outlineButtonDefaultProps = {
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
