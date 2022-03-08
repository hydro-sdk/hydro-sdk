import { IList } from "../../dart/core/list";
import { Clip } from "../../dart/ui/clip";
import { IColor } from "../../dart/ui/color";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import { IAlignmentGeometry } from "../painting/alignmentGeometry";
import { EdgeInsets, IEdgeInsets } from "../painting/edgeInsets";
import { IEdgeInsetsGeometry } from "../painting/edgeInsetsGeometry";
import { IShapeBorder } from "../painting/shapeBorder";
import { ITextStyle } from "../painting/textStyle";
import { VerticalDirection } from "../painting/verticalDirection";
import { MainAxisAlignment } from "../rendering/mainAxisAlignment";
import { IBuildContext } from "../widgets/buildContext";
import { IStatelessElement } from "../widgets/statelessElement";
import { IStatelessWidget } from "../widgets/statelessWidget";
import { IWidget } from "../widgets/widget";
declare const flutter: {
    material: {
        alertDialog: (
            this: void,
            alertDialog: IAlertDialog,
            props: {
                actions?: IList<IWidget> | undefined;
                actionsAlignment?: MainAxisAlignment | undefined;
                actionsOverflowButtonSpacing?: number | undefined;
                actionsOverflowDirection?: VerticalDirection | undefined;
                actionsPadding: IEdgeInsetsGeometry;
                alignment?: IAlignmentGeometry | undefined;
                backgroundColor?: IColor | undefined;
                buttonPadding?: IEdgeInsetsGeometry | undefined;
                clipBehavior: Clip;
                content?: IWidget | undefined;
                contentPadding: IEdgeInsetsGeometry;
                contentTextStyle?: ITextStyle | undefined;
                elevation?: number | undefined;
                insetPadding: IEdgeInsets;
                key?: IKey | undefined;
                scrollable: boolean;
                semanticLabel?: string | undefined;
                shape?: IShapeBorder | undefined;
                title?: IWidget | undefined;
                titlePadding?: IEdgeInsetsGeometry | undefined;
                titleTextStyle?: ITextStyle | undefined;
            }
        ) => IAlertDialog;
    };
};
export interface IAlertDialog {
    title: IWidget | undefined;
    titlePadding: IEdgeInsetsGeometry | undefined;
    titleTextStyle: ITextStyle | undefined;
    content: IWidget | undefined;
    contentPadding: IEdgeInsetsGeometry;
    contentTextStyle: ITextStyle | undefined;
    actions: IList<IWidget> | undefined;
    actionsPadding: IEdgeInsetsGeometry;
    actionsAlignment: MainAxisAlignment | undefined;
    actionsOverflowDirection: VerticalDirection | undefined;
    actionsOverflowButtonSpacing: number | undefined;
    buttonPadding: IEdgeInsetsGeometry | undefined;
    backgroundColor: IColor | undefined;
    elevation: number | undefined;
    semanticLabel: string | undefined;
    insetPadding: IEdgeInsets;
    clipBehavior: Clip;
    shape: IShapeBorder | undefined;
    alignment: IAlignmentGeometry | undefined;
    scrollable: boolean;
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
export class AlertDialog implements IStatelessWidget, IDiagnosticable {
    public readonly title: IWidget | undefined = undefined as any;
    public readonly titlePadding: IEdgeInsetsGeometry | undefined =
        undefined as any;
    public readonly titleTextStyle: ITextStyle | undefined = undefined as any;
    public readonly content: IWidget | undefined = undefined as any;
    public readonly contentPadding: IEdgeInsetsGeometry = undefined as any;
    public readonly contentTextStyle: ITextStyle | undefined = undefined as any;
    public readonly actions: IList<IWidget> | undefined = undefined as any;
    public readonly actionsPadding: IEdgeInsetsGeometry = undefined as any;
    public readonly actionsAlignment: MainAxisAlignment | undefined =
        undefined as any;
    public readonly actionsOverflowDirection: VerticalDirection | undefined =
        undefined as any;
    public readonly actionsOverflowButtonSpacing: number | undefined =
        undefined as any;
    public readonly buttonPadding: IEdgeInsetsGeometry | undefined =
        undefined as any;
    public readonly backgroundColor: IColor | undefined = undefined as any;
    public readonly elevation: number | undefined = undefined as any;
    public readonly semanticLabel: string | undefined = undefined as any;
    public readonly insetPadding: IEdgeInsets = undefined as any;
    public readonly clipBehavior: Clip = undefined as any;
    public readonly shape: IShapeBorder | undefined = undefined as any;
    public readonly alignment: IAlignmentGeometry | undefined =
        undefined as any;
    public readonly scrollable: boolean = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        actions?: IList<IWidget> | undefined;
        actionsAlignment?: MainAxisAlignment | undefined;
        actionsOverflowButtonSpacing?: number | undefined;
        actionsOverflowDirection?: VerticalDirection | undefined;
        actionsPadding?: IEdgeInsetsGeometry;
        alignment?: IAlignmentGeometry | undefined;
        backgroundColor?: IColor | undefined;
        buttonPadding?: IEdgeInsetsGeometry | undefined;
        clipBehavior?: Clip;
        content?: IWidget | undefined;
        contentPadding?: IEdgeInsetsGeometry;
        contentTextStyle?: ITextStyle | undefined;
        elevation?: number | undefined;
        insetPadding?: IEdgeInsets;
        key?: IKey | undefined;
        scrollable?: boolean;
        semanticLabel?: string | undefined;
        shape?: IShapeBorder | undefined;
        title?: IWidget | undefined;
        titlePadding?: IEdgeInsetsGeometry | undefined;
        titleTextStyle?: ITextStyle | undefined;
    }) {
        flutter.material.alertDialog(this, {
            ...alertDialogDefaultProps,
            ...props,
        });
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
const alertDialogDefaultProps = {
    actionsPadding: EdgeInsets.zero,
    clipBehavior: Clip.none,
    contentPadding: EdgeInsets.fromLTRB(24.0, 20.0, 24.0, 24.0),
    insetPadding: EdgeInsets.symmetric(),
    scrollable: false,
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
