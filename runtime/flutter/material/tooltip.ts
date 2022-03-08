import { IDuration } from "../../dart/core/duration";
import { IList } from "../../dart/core/list";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import { IDecoration } from "../painting/decoration";
import { IEdgeInsetsGeometry } from "../painting/edgeInsetsGeometry";
import { IInlineSpan } from "../painting/inlineSpan";
import { ITextStyle } from "../painting/textStyle";
import { IState } from "../widgets/state";
import { IStatefulElement } from "../widgets/statefulElement";
import { IStatefulWidget } from "../widgets/statefulWidget";
import { IWidget } from "../widgets/widget";
import { TooltipTriggerMode } from "./tooltipTriggerMode";
declare const flutter: {
    material: {
        tooltip: (
            this: void,
            tooltip: ITooltip,
            props?: {
                child?: IWidget | undefined;
                decoration?: IDecoration | undefined;
                enableFeedback?: boolean | undefined;
                excludeFromSemantics?: boolean | undefined;
                height?: number | undefined;
                key?: IKey | undefined;
                margin?: IEdgeInsetsGeometry | undefined;
                message?: string | undefined;
                padding?: IEdgeInsetsGeometry | undefined;
                preferBelow?: boolean | undefined;
                richMessage?: IInlineSpan | undefined;
                showDuration?: IDuration | undefined;
                textStyle?: ITextStyle | undefined;
                triggerMode?: TooltipTriggerMode | undefined;
                verticalOffset?: number | undefined;
                waitDuration?: IDuration | undefined;
            }
        ) => ITooltip;
        tooltipDismissAllToolTips: () => boolean;
    };
};
export interface ITooltip {
    message: string | undefined;
    richMessage: IInlineSpan | undefined;
    height: number | undefined;
    padding: IEdgeInsetsGeometry | undefined;
    margin: IEdgeInsetsGeometry | undefined;
    verticalOffset: number | undefined;
    preferBelow: boolean | undefined;
    excludeFromSemantics: boolean | undefined;
    child: IWidget | undefined;
    decoration: IDecoration | undefined;
    textStyle: ITextStyle | undefined;
    waitDuration: IDuration | undefined;
    showDuration: IDuration | undefined;
    triggerMode: TooltipTriggerMode | undefined;
    enableFeedback: boolean | undefined;
    key: IKey | undefined;
    createState: () => IState<ITooltip>;
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
export class Tooltip implements IStatefulWidget, IDiagnosticable {
    public readonly message: string | undefined = undefined as any;
    public readonly richMessage: IInlineSpan | undefined = undefined as any;
    public readonly height: number | undefined = undefined as any;
    public readonly padding: IEdgeInsetsGeometry | undefined = undefined as any;
    public readonly margin: IEdgeInsetsGeometry | undefined = undefined as any;
    public readonly verticalOffset: number | undefined = undefined as any;
    public readonly preferBelow: boolean | undefined = undefined as any;
    public readonly excludeFromSemantics: boolean | undefined =
        undefined as any;
    public readonly child: IWidget | undefined = undefined as any;
    public readonly decoration: IDecoration | undefined = undefined as any;
    public readonly textStyle: ITextStyle | undefined = undefined as any;
    public readonly waitDuration: IDuration | undefined = undefined as any;
    public readonly showDuration: IDuration | undefined = undefined as any;
    public readonly triggerMode: TooltipTriggerMode | undefined =
        undefined as any;
    public readonly enableFeedback: boolean | undefined = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props?: {
        child?: IWidget | undefined;
        decoration?: IDecoration | undefined;
        enableFeedback?: boolean | undefined;
        excludeFromSemantics?: boolean | undefined;
        height?: number | undefined;
        key?: IKey | undefined;
        margin?: IEdgeInsetsGeometry | undefined;
        message?: string | undefined;
        padding?: IEdgeInsetsGeometry | undefined;
        preferBelow?: boolean | undefined;
        richMessage?: IInlineSpan | undefined;
        showDuration?: IDuration | undefined;
        textStyle?: ITextStyle | undefined;
        triggerMode?: TooltipTriggerMode | undefined;
        verticalOffset?: number | undefined;
        waitDuration?: IDuration | undefined;
    }) {
        flutter.material.tooltip(this, props);
    }
    public static dismissAllToolTips(): boolean {
        return flutter.material.tooltipDismissAllToolTips();
    }
    private readonly _dart_createState: () => IState<ITooltip> =
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
    public createState(): IState<ITooltip> {
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
