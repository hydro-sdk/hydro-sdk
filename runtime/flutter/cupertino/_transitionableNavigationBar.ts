import { IList } from "../../dart/core/list";
import { IColor } from "../../dart/ui/color";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import { IBorder } from "../painting/border";
import { ITextStyle } from "../painting/textStyle";
import { IRenderBox } from "../rendering/renderBox";
import { IBuildContext } from "../widgets/buildContext";
import { IStatelessElement } from "../widgets/statelessElement";
import { IStatelessWidget } from "../widgets/statelessWidget";
import { IWidget } from "../widgets/widget";
import { I_NavigationBarStaticComponentsKeys } from "./_navigationBarStaticComponentsKeys";
declare const flutter: {
    cupertino: {
        _transitionableNavigationBar: (
            this: void,
            _transitionableNavigationBar: I_TransitionableNavigationBar,
            props: {
                backButtonTextStyle: ITextStyle;
                backgroundColor?: IColor | undefined;
                border?: IBorder | undefined;
                child: IWidget;
                componentsKeys: I_NavigationBarStaticComponentsKeys;
                hasUserMiddle: boolean;
                largeExpanded: boolean;
                largeTitleTextStyle?: ITextStyle | undefined;
                titleTextStyle: ITextStyle;
            }
        ) => I_TransitionableNavigationBar;
    };
};
export interface I_TransitionableNavigationBar {
    componentsKeys: I_NavigationBarStaticComponentsKeys;
    backgroundColor: IColor | undefined;
    backButtonTextStyle: ITextStyle;
    titleTextStyle: ITextStyle;
    largeTitleTextStyle: ITextStyle | undefined;
    border: IBorder | undefined;
    hasUserMiddle: boolean;
    largeExpanded: boolean;
    child: IWidget;
    key: IKey | undefined;
    getRenderBox: () => IRenderBox;
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
export class _TransitionableNavigationBar
    implements IStatelessWidget, IDiagnosticable
{
    public readonly componentsKeys: I_NavigationBarStaticComponentsKeys =
        undefined as any;
    public readonly backgroundColor: IColor | undefined = undefined as any;
    public readonly backButtonTextStyle: ITextStyle = undefined as any;
    public readonly titleTextStyle: ITextStyle = undefined as any;
    public readonly largeTitleTextStyle: ITextStyle | undefined =
        undefined as any;
    public readonly border: IBorder | undefined = undefined as any;
    public readonly hasUserMiddle: boolean = undefined as any;
    public readonly largeExpanded: boolean = undefined as any;
    public readonly child: IWidget = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        backButtonTextStyle: ITextStyle;
        backgroundColor?: IColor | undefined;
        border?: IBorder | undefined;
        child: IWidget;
        componentsKeys: I_NavigationBarStaticComponentsKeys;
        hasUserMiddle: boolean;
        largeExpanded: boolean;
        largeTitleTextStyle?: ITextStyle | undefined;
        titleTextStyle: ITextStyle;
    }) {
        flutter.cupertino._transitionableNavigationBar(this, props);
    }
    private readonly _dart_getRenderBox: () => IRenderBox = undefined as any;
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
    public getRenderBox(): IRenderBox {
        return this._dart_getRenderBox();
    }
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
