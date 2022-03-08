import { Duration, IDuration } from "../../dart/core/duration";
import { IList } from "../../dart/core/list";
import { Clip } from "../../dart/ui/clip";
import { IColor } from "../../dart/ui/color";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import { EdgeInsets } from "../painting/edgeInsets";
import { IEdgeInsetsGeometry } from "../painting/edgeInsetsGeometry";
import { RoundedRectangleBorder } from "../painting/roundedRectangleBorder";
import { IShapeBorder } from "../painting/shapeBorder";
import { ITextStyle } from "../painting/textStyle";
import { BoxConstraints, IBoxConstraints } from "../rendering/boxConstraints";
import { IMouseCursor } from "../services/mouseCursor";
import { IFocusNode } from "../widgets/focusNode";
import { IState } from "../widgets/state";
import { IStatefulElement } from "../widgets/statefulElement";
import { IStatefulWidget } from "../widgets/statefulWidget";
import { IWidget } from "../widgets/widget";
import { MaterialTapTargetSize } from "./materialTapTargetSize";
import { IVisualDensity, VisualDensity } from "./visualDensity";
declare const flutter: {
    material: {
        rawMaterialButton: (
            this: void,
            rawMaterialButton: IRawMaterialButton,
            props: {
                animationDuration: IDuration;
                autofocus: boolean;
                child?: IWidget | undefined;
                clipBehavior: Clip;
                constraints: IBoxConstraints;
                disabledElevation: number;
                elevation: number;
                enableFeedback: boolean;
                fillColor?: IColor | undefined;
                focusColor?: IColor | undefined;
                focusElevation: number;
                focusNode?: IFocusNode | undefined;
                highlightColor?: IColor | undefined;
                highlightElevation: number;
                hoverColor?: IColor | undefined;
                hoverElevation: number;
                key?: IKey | undefined;
                materialTapTargetSize?: MaterialTapTargetSize | undefined;
                mouseCursor?: IMouseCursor | undefined;
                onHighlightChanged?: (value: boolean) => void | undefined;
                onLongPress?: () => void | undefined;
                padding: IEdgeInsetsGeometry;
                shape: IShapeBorder;
                splashColor?: IColor | undefined;
                textStyle?: ITextStyle | undefined;
                visualDensity: IVisualDensity;
                onPressed?: () => void | undefined;
            }
        ) => IRawMaterialButton;
    };
};
export interface IRawMaterialButton {
    mouseCursor: IMouseCursor | undefined;
    textStyle: ITextStyle | undefined;
    fillColor: IColor | undefined;
    focusColor: IColor | undefined;
    hoverColor: IColor | undefined;
    highlightColor: IColor | undefined;
    splashColor: IColor | undefined;
    elevation: number;
    hoverElevation: number;
    focusElevation: number;
    highlightElevation: number;
    disabledElevation: number;
    padding: IEdgeInsetsGeometry;
    visualDensity: IVisualDensity;
    constraints: IBoxConstraints;
    shape: IShapeBorder;
    animationDuration: IDuration;
    child: IWidget | undefined;
    materialTapTargetSize: MaterialTapTargetSize;
    focusNode: IFocusNode | undefined;
    autofocus: boolean;
    clipBehavior: Clip;
    enableFeedback: boolean;
    key: IKey | undefined;
    getEnabled: () => boolean;
    createState: () => IState<IRawMaterialButton>;
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
export class RawMaterialButton implements IStatefulWidget, IDiagnosticable {
    public readonly mouseCursor: IMouseCursor | undefined = undefined as any;
    public readonly textStyle: ITextStyle | undefined = undefined as any;
    public readonly fillColor: IColor | undefined = undefined as any;
    public readonly focusColor: IColor | undefined = undefined as any;
    public readonly hoverColor: IColor | undefined = undefined as any;
    public readonly highlightColor: IColor | undefined = undefined as any;
    public readonly splashColor: IColor | undefined = undefined as any;
    public readonly elevation: number = undefined as any;
    public readonly hoverElevation: number = undefined as any;
    public readonly focusElevation: number = undefined as any;
    public readonly highlightElevation: number = undefined as any;
    public readonly disabledElevation: number = undefined as any;
    public readonly padding: IEdgeInsetsGeometry = undefined as any;
    public readonly visualDensity: IVisualDensity = undefined as any;
    public readonly constraints: IBoxConstraints = undefined as any;
    public readonly shape: IShapeBorder = undefined as any;
    public readonly animationDuration: IDuration = undefined as any;
    public readonly child: IWidget | undefined = undefined as any;
    public readonly materialTapTargetSize: MaterialTapTargetSize =
        undefined as any;
    public readonly focusNode: IFocusNode | undefined = undefined as any;
    public readonly autofocus: boolean = undefined as any;
    public readonly clipBehavior: Clip = undefined as any;
    public readonly enableFeedback: boolean = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        animationDuration?: IDuration;
        autofocus?: boolean;
        child?: IWidget | undefined;
        clipBehavior?: Clip;
        constraints?: IBoxConstraints;
        disabledElevation?: number;
        elevation?: number;
        enableFeedback?: boolean;
        fillColor?: IColor | undefined;
        focusColor?: IColor | undefined;
        focusElevation?: number;
        focusNode?: IFocusNode | undefined;
        highlightColor?: IColor | undefined;
        highlightElevation?: number;
        hoverColor?: IColor | undefined;
        hoverElevation?: number;
        key?: IKey | undefined;
        materialTapTargetSize?: MaterialTapTargetSize | undefined;
        mouseCursor?: IMouseCursor | undefined;
        onHighlightChanged?: (value: boolean) => void | undefined;
        onLongPress?: () => void | undefined;
        padding?: IEdgeInsetsGeometry;
        shape?: IShapeBorder;
        splashColor?: IColor | undefined;
        textStyle?: ITextStyle | undefined;
        visualDensity?: IVisualDensity;
        onPressed?: () => void | undefined;
    }) {
        flutter.material.rawMaterialButton(this, {
            ...rawMaterialButtonDefaultProps,
            ...props,
        });
    }
    private readonly _dart_getEnabled: () => boolean = undefined as any;
    private readonly _dart_createState: () => IState<IRawMaterialButton> =
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
    public createState(): IState<IRawMaterialButton> {
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
const rawMaterialButtonDefaultProps = {
    animationDuration: new Duration({ milliseconds: 200 }),
    autofocus: false,
    clipBehavior: Clip.none,
    constraints: new BoxConstraints(),
    disabledElevation: 0.0,
    elevation: 2.0,
    enableFeedback: true,
    focusElevation: 4.0,
    highlightElevation: 8.0,
    hoverElevation: 4.0,
    padding: EdgeInsets.zero,
    shape: new RoundedRectangleBorder(),
    visualDensity: VisualDensity.standard,
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
