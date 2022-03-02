import { IList } from "../../dart/core/list";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import { IEdgeInsets } from "../painting/edgeInsets";
import { ITextStyle } from "../painting/textStyle";
import { IBuildContext } from "../widgets/buildContext";
import { IScrollController } from "../widgets/scrollController";
import { IStatelessElement } from "../widgets/statelessElement";
import { IStatelessWidget } from "../widgets/statelessWidget";
import { IWidget } from "../widgets/widget";
declare const flutter: {
    cupertino: {
        _cupertinoAlertContentSection: (
            this: void,
            _cupertinoAlertContentSection: I_CupertinoAlertContentSection,
            props?: {
                additionalPaddingBetweenTitleAndMessage?:
                    | IEdgeInsets
                    | undefined;
                key?: IKey | undefined;
                message?: IWidget | undefined;
                messagePadding?: IEdgeInsets | undefined;
                messageTextStyle?: ITextStyle | undefined;
                scrollController?: IScrollController | undefined;
                title?: IWidget | undefined;
                titlePadding?: IEdgeInsets | undefined;
                titleTextStyle?: ITextStyle | undefined;
            }
        ) => I_CupertinoAlertContentSection;
    };
};
export interface I_CupertinoAlertContentSection {
    title: IWidget | undefined;
    message: IWidget | undefined;
    scrollController: IScrollController | undefined;
    titlePadding: IEdgeInsets | undefined;
    messagePadding: IEdgeInsets | undefined;
    additionalPaddingBetweenTitleAndMessage: IEdgeInsets | undefined;
    titleTextStyle: ITextStyle | undefined;
    messageTextStyle: ITextStyle | undefined;
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
export class _CupertinoAlertContentSection
    implements IStatelessWidget, IDiagnosticable
{
    public readonly title: IWidget | undefined = undefined as any;
    public readonly message: IWidget | undefined = undefined as any;
    public readonly scrollController: IScrollController | undefined =
        undefined as any;
    public readonly titlePadding: IEdgeInsets | undefined = undefined as any;
    public readonly messagePadding: IEdgeInsets | undefined = undefined as any;
    public readonly additionalPaddingBetweenTitleAndMessage:
        | IEdgeInsets
        | undefined = undefined as any;
    public readonly titleTextStyle: ITextStyle | undefined = undefined as any;
    public readonly messageTextStyle: ITextStyle | undefined = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props?: {
        additionalPaddingBetweenTitleAndMessage?: IEdgeInsets | undefined;
        key?: IKey | undefined;
        message?: IWidget | undefined;
        messagePadding?: IEdgeInsets | undefined;
        messageTextStyle?: ITextStyle | undefined;
        scrollController?: IScrollController | undefined;
        title?: IWidget | undefined;
        titlePadding?: IEdgeInsets | undefined;
        titleTextStyle?: ITextStyle | undefined;
    }) {
        flutter.cupertino._cupertinoAlertContentSection(this, props);
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
