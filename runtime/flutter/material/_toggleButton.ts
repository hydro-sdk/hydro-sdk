import { IList } from "../../dart/core/list";
import { IColor } from "../../dart/ui/color";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import { Axis } from "../painting/axis";
import { IBorderRadius } from "../painting/borderRadius";
import { IBorderSide } from "../painting/borderSide";
import { ITextStyle } from "../painting/textStyle";
import { VerticalDirection } from "../painting/verticalDirection";
import { IBoxConstraints } from "../rendering/boxConstraints";
import { IMouseCursor } from "../services/mouseCursor";
import { IBuildContext } from "../widgets/buildContext";
import { IFocusNode } from "../widgets/focusNode";
import { IStatelessElement } from "../widgets/statelessElement";
import { IStatelessWidget } from "../widgets/statelessWidget";
import { IWidget } from "../widgets/widget";
declare const flutter: {
    material: {
        _toggleButton: (
            this: void,
            _toggleButton: I_ToggleButton,
            props: {
                color?: IColor | undefined;
                constraints?: IBoxConstraints | undefined;
                disabledColor?: IColor | undefined;
                focusNode?: IFocusNode | undefined;
                key?: IKey | undefined;
                mouseCursor?: IMouseCursor | undefined;
                onPressed?: () => void | undefined;
                selected: boolean;
                selectedColor?: IColor | undefined;
                textStyle?: ITextStyle | undefined;
                borderRadius: IBorderRadius;
                borderSide: IBorderSide;
                child: IWidget;
                clipRadius: IBorderRadius;
                direction: Axis;
                fillColor?: IColor | undefined;
                focusColor?: IColor | undefined;
                highlightColor?: IColor | undefined;
                hoverColor?: IColor | undefined;
                isFirstButton: boolean;
                isLastButton: boolean;
                leadingBorderSide: IBorderSide;
                splashColor?: IColor | undefined;
                trailingBorderSide: IBorderSide;
                verticalDirection: VerticalDirection;
            }
        ) => I_ToggleButton;
    };
};
export interface I_ToggleButton {
    selected: boolean;
    textStyle: ITextStyle | undefined;
    constraints: IBoxConstraints | undefined;
    color: IColor | undefined;
    selectedColor: IColor | undefined;
    disabledColor: IColor | undefined;
    fillColor: IColor | undefined;
    focusColor: IColor | undefined;
    hoverColor: IColor | undefined;
    highlightColor: IColor | undefined;
    splashColor: IColor | undefined;
    focusNode: IFocusNode | undefined;
    mouseCursor: IMouseCursor | undefined;
    leadingBorderSide: IBorderSide;
    borderSide: IBorderSide;
    trailingBorderSide: IBorderSide;
    borderRadius: IBorderRadius;
    clipRadius: IBorderRadius;
    isFirstButton: boolean;
    isLastButton: boolean;
    direction: Axis;
    verticalDirection: VerticalDirection;
    child: IWidget;
    key: IKey | undefined;
    build: (context: IBuildContext) => IWidget;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
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
export class _ToggleButton implements IStatelessWidget, IDiagnosticable {
    public readonly selected: boolean = undefined as any;
    public readonly textStyle: ITextStyle | undefined = undefined as any;
    public readonly constraints: IBoxConstraints | undefined = undefined as any;
    public readonly color: IColor | undefined = undefined as any;
    public readonly selectedColor: IColor | undefined = undefined as any;
    public readonly disabledColor: IColor | undefined = undefined as any;
    public readonly fillColor: IColor | undefined = undefined as any;
    public readonly focusColor: IColor | undefined = undefined as any;
    public readonly hoverColor: IColor | undefined = undefined as any;
    public readonly highlightColor: IColor | undefined = undefined as any;
    public readonly splashColor: IColor | undefined = undefined as any;
    public readonly focusNode: IFocusNode | undefined = undefined as any;
    public readonly mouseCursor: IMouseCursor | undefined = undefined as any;
    public readonly leadingBorderSide: IBorderSide = undefined as any;
    public readonly borderSide: IBorderSide = undefined as any;
    public readonly trailingBorderSide: IBorderSide = undefined as any;
    public readonly borderRadius: IBorderRadius = undefined as any;
    public readonly clipRadius: IBorderRadius = undefined as any;
    public readonly isFirstButton: boolean = undefined as any;
    public readonly isLastButton: boolean = undefined as any;
    public readonly direction: Axis = undefined as any;
    public readonly verticalDirection: VerticalDirection = undefined as any;
    public readonly child: IWidget = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        color?: IColor | undefined;
        constraints?: IBoxConstraints | undefined;
        disabledColor?: IColor | undefined;
        focusNode?: IFocusNode | undefined;
        key?: IKey | undefined;
        mouseCursor?: IMouseCursor | undefined;
        onPressed?: () => void | undefined;
        selected?: boolean;
        selectedColor?: IColor | undefined;
        textStyle?: ITextStyle | undefined;
        borderRadius: IBorderRadius;
        borderSide: IBorderSide;
        child: IWidget;
        clipRadius: IBorderRadius;
        direction: Axis;
        fillColor?: IColor | undefined;
        focusColor?: IColor | undefined;
        highlightColor?: IColor | undefined;
        hoverColor?: IColor | undefined;
        isFirstButton: boolean;
        isLastButton: boolean;
        leadingBorderSide: IBorderSide;
        splashColor?: IColor | undefined;
        trailingBorderSide: IBorderSide;
        verticalDirection: VerticalDirection;
    }) {
        flutter.material._toggleButton(this, {
            ..._toggleButtonDefaultProps,
            ...props,
        });
    }
    private readonly _dart_build: (context: IBuildContext) => IWidget =
        undefined as any;
    private readonly _dart_debugFillProperties: (
        properties: IDiagnosticPropertiesBuilder
    ) => void = undefined as any;
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
const _toggleButtonDefaultProps = {
    selected: false,
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
