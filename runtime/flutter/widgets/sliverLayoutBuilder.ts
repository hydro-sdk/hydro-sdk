import { IList } from "../../dart/core/list";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import { IRenderObject } from "../rendering/renderObject";
import { ISliverConstraints } from "../rendering/sliverConstraints";
import { IBuildContext } from "./buildContext";
import { IConstrainedLayoutBuilder } from "./constrainedLayoutBuilder";
import { IRenderObjectElement } from "./renderObjectElement";
import { IWidget } from "./widget";
declare const flutter: {
    widgets: {
        sliverLayoutBuilder: (
            this: void,
            sliverLayoutBuilder: ISliverLayoutBuilder,
            props: {
                key?: IKey | undefined;
                builder: (
                    context: IBuildContext,
                    constraints: ISliverConstraints
                ) => IWidget;
            }
        ) => ISliverLayoutBuilder;
    };
};
export interface ISliverLayoutBuilder {
    builder: (__: ISliverConstraints) => IWidget;
    key: IKey | undefined;
    getBuilder: () => (
        context: IBuildContext,
        constraints: ISliverConstraints
    ) => IWidget;
    createRenderObject: (context: IBuildContext) => IRenderObject;
    createElement: () => IRenderObjectElement;
    updateRenderObject: (context: IBuildContext, renderObject: unknown) => void;
    didUnmountRenderObject: (renderObject: unknown) => void;
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
export class SliverLayoutBuilder
    implements IConstrainedLayoutBuilder<ISliverConstraints>, IDiagnosticable
{
    public readonly builder: (__: ISliverConstraints) => IWidget =
        undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        key?: IKey | undefined;
        builder: (
            context: IBuildContext,
            constraints: ISliverConstraints
        ) => IWidget;
    }) {
        flutter.widgets.sliverLayoutBuilder(this, props);
    }
    private readonly _dart_getBuilder: () => (
        context: IBuildContext,
        constraints: ISliverConstraints
    ) => IWidget = undefined as any;
    private readonly _dart_createRenderObject: (
        context: IBuildContext
    ) => IRenderObject = undefined as any;
    private readonly _dart_createElement: () => IRenderObjectElement =
        undefined as any;
    private readonly _dart_updateRenderObject: (
        context: IBuildContext,
        renderObject: any
    ) => void = undefined as any;
    private readonly _dart_didUnmountRenderObject: (renderObject: any) => void =
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
    public getBuilder(): (
        context: IBuildContext,
        constraints: ISliverConstraints
    ) => IWidget {
        return this._dart_getBuilder();
    }
    public createRenderObject(context: IBuildContext): IRenderObject {
        return this._dart_createRenderObject(context);
    }
    public createElement(): IRenderObjectElement {
        return this._dart_createElement();
    }
    public updateRenderObject(context: IBuildContext, renderObject: any): void {
        return this._dart_updateRenderObject(context, renderObject);
    }
    public didUnmountRenderObject(renderObject: any): void {
        return this._dart_didUnmountRenderObject(renderObject);
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
