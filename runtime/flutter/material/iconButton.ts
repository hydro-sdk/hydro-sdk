import { IList } from "../../dart/core/list";
import { IColor } from "../../dart/ui/color";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import { Alignment } from "../painting/alignment";
import { IAlignmentGeometry } from "../painting/alignmentGeometry";
import { EdgeInsets } from "../painting/edgeInsets";
import { IEdgeInsetsGeometry } from "../painting/edgeInsetsGeometry";
import { IBoxConstraints } from "../rendering/boxConstraints";
import { IMouseCursor } from "../services/mouseCursor";
import { IBuildContext } from "../widgets/buildContext";
import { IFocusNode } from "../widgets/focusNode";
import { IStatelessElement } from "../widgets/statelessElement";
import { IStatelessWidget } from "../widgets/statelessWidget";
import { IWidget } from "../widgets/widget";
import { IVisualDensity } from "./visualDensity";
declare const flutter: {
    material: {
        iconButton: (
            this: void,
            iconButton: IIconButton,
            props: {
                alignment: IAlignmentGeometry;
                autofocus: boolean;
                color?: IColor | undefined;
                constraints?: IBoxConstraints | undefined;
                disabledColor?: IColor | undefined;
                enableFeedback: boolean;
                focusColor?: IColor | undefined;
                focusNode?: IFocusNode | undefined;
                highlightColor?: IColor | undefined;
                hoverColor?: IColor | undefined;
                iconSize: number;
                key?: IKey | undefined;
                mouseCursor?: IMouseCursor | undefined;
                padding: IEdgeInsetsGeometry;
                splashColor?: IColor | undefined;
                splashRadius?: number | undefined;
                tooltip?: string | undefined;
                visualDensity?: IVisualDensity | undefined;
                icon: IWidget;
                onPressed?: () => void | undefined;
            }
        ) => IIconButton;
    };
};
export interface IIconButton {
    iconSize: number;
    visualDensity: IVisualDensity | undefined;
    padding: IEdgeInsetsGeometry;
    alignment: IAlignmentGeometry;
    splashRadius: number | undefined;
    icon: IWidget;
    focusColor: IColor | undefined;
    hoverColor: IColor | undefined;
    color: IColor | undefined;
    splashColor: IColor | undefined;
    highlightColor: IColor | undefined;
    disabledColor: IColor | undefined;
    mouseCursor: IMouseCursor | undefined;
    focusNode: IFocusNode | undefined;
    autofocus: boolean;
    tooltip: string | undefined;
    enableFeedback: boolean;
    constraints: IBoxConstraints | undefined;
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
export class IconButton implements IStatelessWidget, IDiagnosticable {
    public readonly iconSize: number = undefined as any;
    public readonly visualDensity: IVisualDensity | undefined =
        undefined as any;
    public readonly padding: IEdgeInsetsGeometry = undefined as any;
    public readonly alignment: IAlignmentGeometry = undefined as any;
    public readonly splashRadius: number | undefined = undefined as any;
    public readonly icon: IWidget = undefined as any;
    public readonly focusColor: IColor | undefined = undefined as any;
    public readonly hoverColor: IColor | undefined = undefined as any;
    public readonly color: IColor | undefined = undefined as any;
    public readonly splashColor: IColor | undefined = undefined as any;
    public readonly highlightColor: IColor | undefined = undefined as any;
    public readonly disabledColor: IColor | undefined = undefined as any;
    public readonly mouseCursor: IMouseCursor | undefined = undefined as any;
    public readonly focusNode: IFocusNode | undefined = undefined as any;
    public readonly autofocus: boolean = undefined as any;
    public readonly tooltip: string | undefined = undefined as any;
    public readonly enableFeedback: boolean = undefined as any;
    public readonly constraints: IBoxConstraints | undefined = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        alignment?: IAlignmentGeometry;
        autofocus?: boolean;
        color?: IColor | undefined;
        constraints?: IBoxConstraints | undefined;
        disabledColor?: IColor | undefined;
        enableFeedback?: boolean;
        focusColor?: IColor | undefined;
        focusNode?: IFocusNode | undefined;
        highlightColor?: IColor | undefined;
        hoverColor?: IColor | undefined;
        iconSize?: number;
        key?: IKey | undefined;
        mouseCursor?: IMouseCursor | undefined;
        padding?: IEdgeInsetsGeometry;
        splashColor?: IColor | undefined;
        splashRadius?: number | undefined;
        tooltip?: string | undefined;
        visualDensity?: IVisualDensity | undefined;
        icon: IWidget;
        onPressed?: () => void | undefined;
    }) {
        flutter.material.iconButton(this, {
            ...iconButtonDefaultProps,
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
const iconButtonDefaultProps = {
    alignment: Alignment.center,
    autofocus: false,
    enableFeedback: true,
    iconSize: 24.0,
    padding: EdgeInsets.all(8.0),
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
