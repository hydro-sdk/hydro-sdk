import { IDuration } from "../../dart/core/duration";
import { IList } from "../../dart/core/list";
import { TextAlign } from "../../dart/ui/textAlign";
import { ITextHeightBehavior } from "../../dart/ui/textHeightBehavior";
import { ICurve } from "../animation/curve";
import { Curves } from "../animation/curves";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import { TextOverflow } from "../painting/textOverflow";
import { ITextStyle } from "../painting/textStyle";
import { TextWidthBasis } from "../painting/textWidthBasis";
import { IAnimatedWidgetBaseState } from "./animatedWidgetBaseState";
import { IImplicitlyAnimatedWidget } from "./implicitlyAnimatedWidget";
import { IImplicitlyAnimatedWidgetState } from "./implicitlyAnimatedWidgetState";
import { IStatefulElement } from "./statefulElement";
import { IWidget } from "./widget";
declare const flutter: {
    widgets: {
        animatedDefaultTextStyle: (
            this: void,
            animatedDefaultTextStyle: IAnimatedDefaultTextStyle,
            props: {
                curve: ICurve;
                key?: IKey | undefined;
                maxLines?: number | undefined;
                onEnd?: () => void | undefined;
                overflow: TextOverflow;
                softWrap: boolean;
                textAlign?: TextAlign | undefined;
                textHeightBehavior?: ITextHeightBehavior | undefined;
                textWidthBasis: TextWidthBasis;
                child: IWidget;
                duration: IDuration;
                style: ITextStyle;
            }
        ) => IAnimatedDefaultTextStyle;
    };
};
export interface IAnimatedDefaultTextStyle {
    child: IWidget;
    style: ITextStyle;
    textAlign: TextAlign | undefined;
    softWrap: boolean;
    overflow: TextOverflow;
    maxLines: number | undefined;
    textWidthBasis: TextWidthBasis;
    textHeightBehavior: ITextHeightBehavior | undefined;
    curve: ICurve;
    duration: IDuration;
    onEnd: () => void | undefined;
    key: IKey | undefined;
    createState: () => IAnimatedWidgetBaseState<IAnimatedDefaultTextStyle>;
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
export class AnimatedDefaultTextStyle
    implements IImplicitlyAnimatedWidget, IDiagnosticable
{
    public readonly child: IWidget = undefined as any;
    public readonly style: ITextStyle = undefined as any;
    public readonly textAlign: TextAlign | undefined = undefined as any;
    public readonly softWrap: boolean = undefined as any;
    public readonly overflow: TextOverflow = undefined as any;
    public readonly maxLines: number | undefined = undefined as any;
    public readonly textWidthBasis: TextWidthBasis = undefined as any;
    public readonly textHeightBehavior: ITextHeightBehavior | undefined =
        undefined as any;
    public readonly curve: ICurve = undefined as any;
    public readonly duration: IDuration = undefined as any;
    public readonly onEnd: () => void | undefined = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        curve?: ICurve;
        key?: IKey | undefined;
        maxLines?: number | undefined;
        onEnd?: () => void | undefined;
        overflow?: TextOverflow;
        softWrap?: boolean;
        textAlign?: TextAlign | undefined;
        textHeightBehavior?: ITextHeightBehavior | undefined;
        textWidthBasis?: TextWidthBasis;
        child: IWidget;
        duration: IDuration;
        style: ITextStyle;
    }) {
        flutter.widgets.animatedDefaultTextStyle(this, {
            ...animatedDefaultTextStyleDefaultProps,
            ...props,
        });
    }
    private readonly _dart_createState: () => IAnimatedWidgetBaseState<IAnimatedDefaultTextStyle> =
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
    public createState(): IAnimatedWidgetBaseState<IAnimatedDefaultTextStyle> {
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
const animatedDefaultTextStyleDefaultProps = {
    curve: Curves.linear,
    overflow: TextOverflow.clip,
    softWrap: true,
    textWidthBasis: TextWidthBasis.parent,
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
