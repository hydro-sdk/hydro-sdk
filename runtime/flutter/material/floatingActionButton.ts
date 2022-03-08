import { IList } from "../../dart/core/list";
import { Clip } from "../../dart/ui/clip";
import { IColor } from "../../dart/ui/color";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import { CircleBorder } from "../painting/circleBorder";
import { IEdgeInsetsGeometry } from "../painting/edgeInsetsGeometry";
import { IShapeBorder } from "../painting/shapeBorder";
import { StadiumBorder } from "../painting/stadiumBorder";
import { ITextStyle } from "../painting/textStyle";
import { IMouseCursor } from "../services/mouseCursor";
import { IBuildContext } from "../widgets/buildContext";
import { IFocusNode } from "../widgets/focusNode";
import { IStatelessElement } from "../widgets/statelessElement";
import { IStatelessWidget } from "../widgets/statelessWidget";
import { IWidget } from "../widgets/widget";
import { MaterialTapTargetSize } from "./materialTapTargetSize";
declare const flutter: {
    material: {
        floatingActionButton: (
            this: void,
            floatingActionButton: IFloatingActionButton,
            props: {
                autofocus: boolean;
                backgroundColor?: IColor | undefined;
                child?: IWidget | undefined;
                clipBehavior: Clip;
                disabledElevation?: number | undefined;
                elevation?: number | undefined;
                enableFeedback?: boolean | undefined;
                focusColor?: IColor | undefined;
                focusElevation?: number | undefined;
                focusNode?: IFocusNode | undefined;
                foregroundColor?: IColor | undefined;
                heroTag?: Object | undefined;
                highlightElevation?: number | undefined;
                hoverColor?: IColor | undefined;
                hoverElevation?: number | undefined;
                isExtended: boolean;
                key?: IKey | undefined;
                materialTapTargetSize?: MaterialTapTargetSize | undefined;
                mini: boolean;
                mouseCursor?: IMouseCursor | undefined;
                shape?: IShapeBorder | undefined;
                splashColor?: IColor | undefined;
                tooltip?: string | undefined;
                onPressed?: () => void | undefined;
            }
        ) => IFloatingActionButton;
    };
};
export interface IFloatingActionButton {
    child: IWidget | undefined;
    tooltip: string | undefined;
    foregroundColor: IColor | undefined;
    backgroundColor: IColor | undefined;
    focusColor: IColor | undefined;
    hoverColor: IColor | undefined;
    splashColor: IColor | undefined;
    heroTag: Object | undefined;
    mouseCursor: IMouseCursor | undefined;
    elevation: number | undefined;
    focusElevation: number | undefined;
    hoverElevation: number | undefined;
    highlightElevation: number | undefined;
    disabledElevation: number | undefined;
    mini: boolean;
    shape: IShapeBorder | undefined;
    clipBehavior: Clip;
    isExtended: boolean;
    focusNode: IFocusNode | undefined;
    autofocus: boolean;
    materialTapTargetSize: MaterialTapTargetSize | undefined;
    enableFeedback: boolean | undefined;
    extendedIconLabelSpacing: number | undefined;
    extendedPadding: IEdgeInsetsGeometry | undefined;
    extendedTextStyle: ITextStyle | undefined;
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
export class FloatingActionButton implements IStatelessWidget, IDiagnosticable {
    public static _defaultElevation = 6;
    public static _defaultFocusElevation = 6;
    public static _defaultHoverElevation = 8;
    public static _defaultHighlightElevation = 12;
    public static _defaultShape = new CircleBorder();
    public static _defaultExtendedShape = new StadiumBorder();
    public readonly child: IWidget | undefined = undefined as any;
    public readonly tooltip: string | undefined = undefined as any;
    public readonly foregroundColor: IColor | undefined = undefined as any;
    public readonly backgroundColor: IColor | undefined = undefined as any;
    public readonly focusColor: IColor | undefined = undefined as any;
    public readonly hoverColor: IColor | undefined = undefined as any;
    public readonly splashColor: IColor | undefined = undefined as any;
    public readonly heroTag: Object | undefined = undefined as any;
    public readonly mouseCursor: IMouseCursor | undefined = undefined as any;
    public readonly elevation: number | undefined = undefined as any;
    public readonly focusElevation: number | undefined = undefined as any;
    public readonly hoverElevation: number | undefined = undefined as any;
    public readonly highlightElevation: number | undefined = undefined as any;
    public readonly disabledElevation: number | undefined = undefined as any;
    public readonly mini: boolean = undefined as any;
    public readonly shape: IShapeBorder | undefined = undefined as any;
    public readonly clipBehavior: Clip = undefined as any;
    public readonly isExtended: boolean = undefined as any;
    public readonly focusNode: IFocusNode | undefined = undefined as any;
    public readonly autofocus: boolean = undefined as any;
    public readonly materialTapTargetSize: MaterialTapTargetSize | undefined =
        undefined as any;
    public readonly enableFeedback: boolean | undefined = undefined as any;
    public readonly extendedIconLabelSpacing: number | undefined =
        undefined as any;
    public readonly extendedPadding: IEdgeInsetsGeometry | undefined =
        undefined as any;
    public readonly extendedTextStyle: ITextStyle | undefined =
        undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        autofocus?: boolean;
        backgroundColor?: IColor | undefined;
        child?: IWidget | undefined;
        clipBehavior?: Clip;
        disabledElevation?: number | undefined;
        elevation?: number | undefined;
        enableFeedback?: boolean | undefined;
        focusColor?: IColor | undefined;
        focusElevation?: number | undefined;
        focusNode?: IFocusNode | undefined;
        foregroundColor?: IColor | undefined;
        heroTag?: Object | undefined;
        highlightElevation?: number | undefined;
        hoverColor?: IColor | undefined;
        hoverElevation?: number | undefined;
        isExtended?: boolean;
        key?: IKey | undefined;
        materialTapTargetSize?: MaterialTapTargetSize | undefined;
        mini?: boolean;
        mouseCursor?: IMouseCursor | undefined;
        shape?: IShapeBorder | undefined;
        splashColor?: IColor | undefined;
        tooltip?: string | undefined;
        onPressed?: () => void | undefined;
    }) {
        flutter.material.floatingActionButton(this, {
            ...floatingActionButtonDefaultProps,
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
const floatingActionButtonDefaultProps = {
    autofocus: false,
    clipBehavior: Clip.none,

    isExtended: false,
    mini: false,
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
