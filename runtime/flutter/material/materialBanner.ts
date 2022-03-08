import { IList } from "../../dart/core/list";
import { IColor } from "../../dart/ui/color";
import { IAnimation } from "../animation/animation";
import { IAnimationController } from "../animation/animationController";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import { IEdgeInsetsGeometry } from "../painting/edgeInsetsGeometry";
import { ITextStyle } from "../painting/textStyle";
import { ITickerProvider } from "../scheduler/tickerProvider";
import { OverflowBarAlignment } from "../widgets/overflowBarAlignment";
import { IState } from "../widgets/state";
import { IStatefulElement } from "../widgets/statefulElement";
import { IStatefulWidget } from "../widgets/statefulWidget";
import { IWidget } from "../widgets/widget";
declare const flutter: {
    material: {
        materialBanner: (
            this: void,
            materialBanner: IMaterialBanner,
            props: {
                animation?: IAnimation<number> | undefined;
                backgroundColor?: IColor | undefined;
                contentTextStyle?: ITextStyle | undefined;
                elevation?: number | undefined;
                forceActionsBelow: boolean;
                key?: IKey | undefined;
                leading?: IWidget | undefined;
                leadingPadding?: IEdgeInsetsGeometry | undefined;
                onVisible?: () => void | undefined;
                overflowAlignment: OverflowBarAlignment;
                padding?: IEdgeInsetsGeometry | undefined;
                actions: IList<IWidget>;
                content: IWidget;
            }
        ) => IMaterialBanner;
        materialBannerCreateAnimationController: (props: {
            vsync: ITickerProvider;
        }) => IAnimationController;
    };
};
export interface IMaterialBanner {
    content: IWidget;
    contentTextStyle: ITextStyle | undefined;
    actions: IList<IWidget>;
    elevation: number | undefined;
    leading: IWidget | undefined;
    backgroundColor: IColor | undefined;
    padding: IEdgeInsetsGeometry | undefined;
    leadingPadding: IEdgeInsetsGeometry | undefined;
    forceActionsBelow: boolean;
    overflowAlignment: OverflowBarAlignment;
    animation: IAnimation<number> | undefined;
    key: IKey | undefined;
    withAnimation: (
        newAnimation: IAnimation<number>,
        props?: { fallbackKey?: IKey | undefined }
    ) => IMaterialBanner;
    createState: () => IState<IMaterialBanner>;
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
export class MaterialBanner implements IStatefulWidget, IDiagnosticable {
    public readonly content: IWidget = undefined as any;
    public readonly contentTextStyle: ITextStyle | undefined = undefined as any;
    public readonly actions: IList<IWidget> = undefined as any;
    public readonly elevation: number | undefined = undefined as any;
    public readonly leading: IWidget | undefined = undefined as any;
    public readonly backgroundColor: IColor | undefined = undefined as any;
    public readonly padding: IEdgeInsetsGeometry | undefined = undefined as any;
    public readonly leadingPadding: IEdgeInsetsGeometry | undefined =
        undefined as any;
    public readonly forceActionsBelow: boolean = undefined as any;
    public readonly overflowAlignment: OverflowBarAlignment = undefined as any;
    public readonly animation: IAnimation<number> | undefined =
        undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        animation?: IAnimation<number> | undefined;
        backgroundColor?: IColor | undefined;
        contentTextStyle?: ITextStyle | undefined;
        elevation?: number | undefined;
        forceActionsBelow?: boolean;
        key?: IKey | undefined;
        leading?: IWidget | undefined;
        leadingPadding?: IEdgeInsetsGeometry | undefined;
        onVisible?: () => void | undefined;
        overflowAlignment?: OverflowBarAlignment;
        padding?: IEdgeInsetsGeometry | undefined;
        actions: IList<IWidget>;
        content: IWidget;
    }) {
        flutter.material.materialBanner(this, {
            ...materialBannerDefaultProps,
            ...props,
        });
    }
    public static createAnimationController(props: {
        vsync: ITickerProvider;
    }): IAnimationController {
        return flutter.material.materialBannerCreateAnimationController(props);
    }
    private readonly _dart_withAnimation: (
        newAnimation: IAnimation<number>,
        props?: { fallbackKey?: IKey | undefined }
    ) => IMaterialBanner = undefined as any;
    private readonly _dart_createState: () => IState<IMaterialBanner> =
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
    public withAnimation(
        newAnimation: IAnimation<number>,
        props?: { fallbackKey?: IKey | undefined }
    ): IMaterialBanner {
        return this._dart_withAnimation(newAnimation, props);
    }
    public createState(): IState<IMaterialBanner> {
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
const materialBannerDefaultProps = {
    forceActionsBelow: false,
    overflowAlignment: OverflowBarAlignment.end,
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
