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
import { IStatelessElement } from "../widgets/statelessElement";
import { IStatelessWidget } from "../widgets/statelessWidget";
import { IWidget } from "../widgets/widget";
import { IInteractiveInkFeatureFactory } from "./interactiveInkFeatureFactory";
import { IMaterialStateProperty } from "./materialStateProperty";
declare const flutter: {
    material: {
        inkResponse: (
            this: void,
            inkResponse: IInkResponse,
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
                highlightColor?: IColor | undefined;
                highlightShape: BoxShape;
                hoverColor?: IColor | undefined;
                key?: IKey | undefined;
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
                radius?: number | undefined;
                splashColor?: IColor | undefined;
                splashFactory?: IInteractiveInkFeatureFactory | undefined;
            }
        ) => IInkResponse;
    };
};
export interface IInkResponse {
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
    key: IKey | undefined;
    getRectCallback: (referenceBox: IRenderBox) => () => IRect | undefined;
    build: (context: IBuildContext) => IWidget;
    debugCheckContext: (context: IBuildContext) => boolean;
    createElement: () => IStatelessElement;
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
export class InkResponse implements IStatelessWidget, IDiagnosticable {
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
        highlightColor?: IColor | undefined;
        highlightShape?: BoxShape;
        hoverColor?: IColor | undefined;
        key?: IKey | undefined;
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
        radius?: number | undefined;
        splashColor?: IColor | undefined;
        splashFactory?: IInteractiveInkFeatureFactory | undefined;
    }) {
        flutter.material.inkResponse(this, {
            ...inkResponseDefaultProps,
            ...props,
        });
    }
    private readonly _dart_getRectCallback: (
        referenceBox: IRenderBox
    ) => () => IRect | undefined = undefined as any;
    private readonly _dart_build: (context: IBuildContext) => IWidget =
        undefined as any;
    private readonly _dart_debugCheckContext: (
        context: IBuildContext
    ) => boolean = undefined as any;
    private readonly _dart_createElement: () => IStatelessElement =
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
    public getRectCallback(referenceBox: IRenderBox): () => IRect | undefined {
        return this._dart_getRectCallback(referenceBox);
    }
    public build(context: IBuildContext): IWidget {
        return this._dart_build(context);
    }
    public debugCheckContext(context: IBuildContext): boolean {
        return this._dart_debugCheckContext(context);
    }
    public createElement(): IStatelessElement {
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
const inkResponseDefaultProps = {
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
