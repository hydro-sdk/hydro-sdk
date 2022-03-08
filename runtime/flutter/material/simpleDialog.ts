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
import { IBuildContext } from "../widgets/buildContext";
import { IStatelessElement } from "../widgets/statelessElement";
import { IStatelessWidget } from "../widgets/statelessWidget";
import { IWidget } from "../widgets/widget";
declare const flutter: {
    material: {
        simpleDialog: (
            this: void,
            simpleDialog: ISimpleDialog,
            props: {
                alignment?: IAlignmentGeometry | undefined;
                backgroundColor?: IColor | undefined;
                children?: IList<IWidget> | undefined;
                clipBehavior: Clip;
                contentPadding: IEdgeInsetsGeometry;
                elevation?: number | undefined;
                insetPadding: IEdgeInsets;
                key?: IKey | undefined;
                semanticLabel?: string | undefined;
                shape?: IShapeBorder | undefined;
                title?: IWidget | undefined;
                titlePadding: IEdgeInsetsGeometry;
                titleTextStyle?: ITextStyle | undefined;
            }
        ) => ISimpleDialog;
    };
};
export interface ISimpleDialog {
    title: IWidget | undefined;
    titlePadding: IEdgeInsetsGeometry;
    titleTextStyle: ITextStyle | undefined;
    children: IList<IWidget> | undefined;
    contentPadding: IEdgeInsetsGeometry;
    backgroundColor: IColor | undefined;
    elevation: number | undefined;
    semanticLabel: string | undefined;
    insetPadding: IEdgeInsets;
    clipBehavior: Clip;
    shape: IShapeBorder | undefined;
    alignment: IAlignmentGeometry | undefined;
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
export class SimpleDialog implements IStatelessWidget, IDiagnosticable {
    public readonly title: IWidget | undefined = undefined as any;
    public readonly titlePadding: IEdgeInsetsGeometry = undefined as any;
    public readonly titleTextStyle: ITextStyle | undefined = undefined as any;
    public readonly children: IList<IWidget> | undefined = undefined as any;
    public readonly contentPadding: IEdgeInsetsGeometry = undefined as any;
    public readonly backgroundColor: IColor | undefined = undefined as any;
    public readonly elevation: number | undefined = undefined as any;
    public readonly semanticLabel: string | undefined = undefined as any;
    public readonly insetPadding: IEdgeInsets = undefined as any;
    public readonly clipBehavior: Clip = undefined as any;
    public readonly shape: IShapeBorder | undefined = undefined as any;
    public readonly alignment: IAlignmentGeometry | undefined =
        undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        alignment?: IAlignmentGeometry | undefined;
        backgroundColor?: IColor | undefined;
        children?: IList<IWidget> | undefined;
        clipBehavior?: Clip;
        contentPadding?: IEdgeInsetsGeometry;
        elevation?: number | undefined;
        insetPadding?: IEdgeInsets;
        key?: IKey | undefined;
        semanticLabel?: string | undefined;
        shape?: IShapeBorder | undefined;
        title?: IWidget | undefined;
        titlePadding?: IEdgeInsetsGeometry;
        titleTextStyle?: ITextStyle | undefined;
    }) {
        flutter.material.simpleDialog(this, {
            ...simpleDialogDefaultProps,
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
const simpleDialogDefaultProps = {
    clipBehavior: Clip.none,
    contentPadding: EdgeInsets.fromLTRB(0.0, 12.0, 0.0, 16.0),
    insetPadding: EdgeInsets.symmetric(),
    titlePadding: EdgeInsets.fromLTRB(24.0, 24.0, 24.0, 0.0),
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
