import { IList } from "../../dart/core/list";
import { IColor } from "../../dart/ui/color";
import { IRect } from "../../dart/ui/rect";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import { ITapDownDetails } from "../gestures/tapDownDetails";
import { IBorderRadius } from "../painting/borderRadius";
import { BoxShape } from "../painting/boxShape";
import { IShapeBorder } from "../painting/shapeBorder";
import { IRenderBox } from "../rendering/renderBox";
import { IMouseCursor } from "../services/mouseCursor";
import { IBuildContext } from "../widgets/buildContext";
import { IFocusNode } from "../widgets/focusNode";
import { IState } from "../widgets/state";
import { IStatefulElement } from "../widgets/statefulElement";
import { IStatefulWidget } from "../widgets/statefulWidget";
import { IWidget } from "../widgets/widget";
import { I_InkResponseState } from "./_inkResponseState";
import { I_ParentInkResponseState } from "./_parentInkResponseState";
import { IInteractiveInkFeatureFactory } from "./interactiveInkFeatureFactory";
import { IMaterialStateProperty } from "./materialStateProperty";
declare const flutter: {
    material: {
        _inkResponseStateWidget: (
            this: void,
            _inkResponseStateWidget: I_InkResponseStateWidget,
            props: {
                autofocus: boolean;
                borderRadius?: IBorderRadius | undefined;
                canRequestFocus: boolean;
                child?: IWidget | undefined;
                containedInkWell: boolean;
                customBorder?: IShapeBorder | undefined;
                enableFeedback: boolean;
                excludeFromSemantics: boolean;
                focusColor?: IColor | undefined;
                focusNode?: IFocusNode | undefined;
                getRectCallback?: (
                    referenceBox: IRenderBox
                ) => () => IRect | undefined | undefined;
                highlightColor?: IColor | undefined;
                highlightShape: BoxShape;
                hoverColor?: IColor | undefined;
                mouseCursor?: IMouseCursor | undefined;
                onDoubleTap?: () => void | undefined;
                onFocusChange?: (value: boolean) => void | undefined;
                onHighlightChanged?: (value: boolean) => void | undefined;
                onHover?: (value: boolean) => void | undefined;
                onLongPress?: () => void | undefined;
                onTap?: () => void | undefined;
                onTapCancel?: () => void | undefined;
                onTapDown?: (details: ITapDownDetails) => void | undefined;
                overlayColor?:
                    | IMaterialStateProperty<IColor | undefined>
                    | undefined;
                parentState?: I_ParentInkResponseState | undefined;
                radius?: number | undefined;
                splashColor?: IColor | undefined;
                splashFactory?: IInteractiveInkFeatureFactory | undefined;
                debugCheckContext: (context: IBuildContext) => boolean;
            }
        ) => I_InkResponseStateWidget;
    };
};
export interface I_InkResponseStateWidget {
    child: IWidget | undefined;
    mouseCursor: IMouseCursor | undefined;
    containedInkWell: boolean;
    highlightShape: BoxShape;
    radius: number | undefined;
    borderRadius: IBorderRadius | undefined;
    customBorder: IShapeBorder | undefined;
    focusColor: IColor | undefined;
    hoverColor: IColor | undefined;
    highlightColor: IColor | undefined;
    overlayColor: IMaterialStateProperty<IColor | undefined> | undefined;
    splashColor: IColor | undefined;
    splashFactory: IInteractiveInkFeatureFactory | undefined;
    enableFeedback: boolean;
    excludeFromSemantics: boolean;
    autofocus: boolean;
    focusNode: IFocusNode | undefined;
    canRequestFocus: boolean;
    parentState: I_ParentInkResponseState | undefined;
    key: IKey | undefined;
    createState: () => I_InkResponseState;
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
export class _InkResponseStateWidget
    implements IStatefulWidget, IDiagnosticable
{
    public readonly child: IWidget | undefined = undefined as any;
    public readonly mouseCursor: IMouseCursor | undefined = undefined as any;
    public readonly containedInkWell: boolean = undefined as any;
    public readonly highlightShape: BoxShape = undefined as any;
    public readonly radius: number | undefined = undefined as any;
    public readonly borderRadius: IBorderRadius | undefined = undefined as any;
    public readonly customBorder: IShapeBorder | undefined = undefined as any;
    public readonly focusColor: IColor | undefined = undefined as any;
    public readonly hoverColor: IColor | undefined = undefined as any;
    public readonly highlightColor: IColor | undefined = undefined as any;
    public readonly overlayColor:
        | IMaterialStateProperty<IColor | undefined>
        | undefined = undefined as any;
    public readonly splashColor: IColor | undefined = undefined as any;
    public readonly splashFactory: IInteractiveInkFeatureFactory | undefined =
        undefined as any;
    public readonly enableFeedback: boolean = undefined as any;
    public readonly excludeFromSemantics: boolean = undefined as any;
    public readonly autofocus: boolean = undefined as any;
    public readonly focusNode: IFocusNode | undefined = undefined as any;
    public readonly canRequestFocus: boolean = undefined as any;
    public readonly parentState: I_ParentInkResponseState | undefined =
        undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        autofocus?: boolean;
        borderRadius?: IBorderRadius | undefined;
        canRequestFocus?: boolean;
        child?: IWidget | undefined;
        containedInkWell?: boolean;
        customBorder?: IShapeBorder | undefined;
        enableFeedback?: boolean;
        excludeFromSemantics?: boolean;
        focusColor?: IColor | undefined;
        focusNode?: IFocusNode | undefined;
        getRectCallback?: (
            referenceBox: IRenderBox
        ) => () => IRect | undefined | undefined;
        highlightColor?: IColor | undefined;
        highlightShape?: BoxShape;
        hoverColor?: IColor | undefined;
        mouseCursor?: IMouseCursor | undefined;
        onDoubleTap?: () => void | undefined;
        onFocusChange?: (value: boolean) => void | undefined;
        onHighlightChanged?: (value: boolean) => void | undefined;
        onHover?: (value: boolean) => void | undefined;
        onLongPress?: () => void | undefined;
        onTap?: () => void | undefined;
        onTapCancel?: () => void | undefined;
        onTapDown?: (details: ITapDownDetails) => void | undefined;
        overlayColor?: IMaterialStateProperty<IColor | undefined> | undefined;
        parentState?: I_ParentInkResponseState | undefined;
        radius?: number | undefined;
        splashColor?: IColor | undefined;
        splashFactory?: IInteractiveInkFeatureFactory | undefined;
        debugCheckContext: (context: IBuildContext) => boolean;
    }) {
        flutter.material._inkResponseStateWidget(this, {
            ..._inkResponseStateWidgetDefaultProps,
            ...props,
        });
    }
    private readonly _dart_createState: () => I_InkResponseState =
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
    public createState(): I_InkResponseState {
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
const _inkResponseStateWidgetDefaultProps = {
    autofocus: false,
    canRequestFocus: true,
    containedInkWell: false,
    enableFeedback: true,
    excludeFromSemantics: false,
    highlightShape: BoxShape.circle,
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
