import { IList } from "../../dart/core/list";
import { IOffset } from "../../dart/ui/offset";
import { IAnimation } from "../animation/animation";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import { IPointerEnterEvent } from "../gestures/pointerEnterEvent";
import { IPointerExitEvent } from "../gestures/pointerExitEvent";
import { IDecoration } from "../painting/decoration";
import { IEdgeInsetsGeometry } from "../painting/edgeInsetsGeometry";
import { IInlineSpan } from "../painting/inlineSpan";
import { ITextStyle } from "../painting/textStyle";
import { IBuildContext } from "../widgets/buildContext";
import { IStatelessElement } from "../widgets/statelessElement";
import { IStatelessWidget } from "../widgets/statelessWidget";
import { IWidget } from "../widgets/widget";
declare const flutter: {
    material: {
        _tooltipOverlay: (
            this: void,
            _tooltipOverlay: I_TooltipOverlay,
            props: {
                decoration?: IDecoration | undefined;
                key?: IKey | undefined;
                margin?: IEdgeInsetsGeometry | undefined;
                onEnter?: (event: IPointerEnterEvent) => void | undefined;
                onExit?: (event: IPointerExitEvent) => void | undefined;
                padding?: IEdgeInsetsGeometry | undefined;
                textStyle?: ITextStyle | undefined;
                animation: IAnimation<number>;
                height: number;
                preferBelow: boolean;
                richMessage: IInlineSpan;
                target: IOffset;
                verticalOffset: number;
            }
        ) => I_TooltipOverlay;
    };
};
export interface I_TooltipOverlay {
    richMessage: IInlineSpan;
    height: number;
    padding: IEdgeInsetsGeometry | undefined;
    margin: IEdgeInsetsGeometry | undefined;
    decoration: IDecoration | undefined;
    textStyle: ITextStyle | undefined;
    animation: IAnimation<number>;
    target: IOffset;
    verticalOffset: number;
    preferBelow: boolean;
    key: IKey | undefined;
    build: (context: IBuildContext) => IWidget;
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
export class _TooltipOverlay implements IStatelessWidget, IDiagnosticable {
    public readonly richMessage: IInlineSpan = undefined as any;
    public readonly height: number = undefined as any;
    public readonly padding: IEdgeInsetsGeometry | undefined = undefined as any;
    public readonly margin: IEdgeInsetsGeometry | undefined = undefined as any;
    public readonly decoration: IDecoration | undefined = undefined as any;
    public readonly textStyle: ITextStyle | undefined = undefined as any;
    public readonly animation: IAnimation<number> = undefined as any;
    public readonly target: IOffset = undefined as any;
    public readonly verticalOffset: number = undefined as any;
    public readonly preferBelow: boolean = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        decoration?: IDecoration | undefined;
        key?: IKey | undefined;
        margin?: IEdgeInsetsGeometry | undefined;
        onEnter?: (event: IPointerEnterEvent) => void | undefined;
        onExit?: (event: IPointerExitEvent) => void | undefined;
        padding?: IEdgeInsetsGeometry | undefined;
        textStyle?: ITextStyle | undefined;
        animation: IAnimation<number>;
        height: number;
        preferBelow: boolean;
        richMessage: IInlineSpan;
        target: IOffset;
        verticalOffset: number;
    }) {
        flutter.material._tooltipOverlay(this, props);
    }
    private readonly _dart_build: (context: IBuildContext) => IWidget =
        undefined as any;
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
    public build(context: IBuildContext): IWidget {
        return this._dart_build(context);
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
