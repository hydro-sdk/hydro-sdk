import { IList, List } from "../../dart/core/list";
import { Clip } from "../../dart/ui/clip";
import { TextDirection } from "../../dart/ui/textDirection";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import { AlignmentDirectional } from "../painting/alignmentDirectional";
import { IAlignmentGeometry } from "../painting/alignmentGeometry";
import { Overflow } from "../rendering/overflow";
import { IRenderIndexedStack } from "../rendering/renderIndexedStack";
import { IRenderObject } from "../rendering/renderObject";
import { IRenderStack } from "../rendering/renderStack";
import { StackFit } from "../rendering/stackFit";
import { IBuildContext } from "./buildContext";
import { IMultiChildRenderObjectElement } from "./multiChildRenderObjectElement";
import { IStack } from "./stack";
import { IWidget } from "./widget";
declare const flutter: {
    widgets: {
        indexedStack: (
            this: void,
            indexedStack: IIndexedStack,
            props: {
                alignment: IAlignmentGeometry;
                children: IList<IWidget>;
                index?: number | undefined;
                key?: IKey | undefined;
                sizing: StackFit;
                textDirection?: TextDirection | undefined;
            }
        ) => IIndexedStack;
    };
};
export interface IIndexedStack {
    index: number | undefined;
    alignment: IAlignmentGeometry;
    textDirection: TextDirection | undefined;
    fit: StackFit;
    overflow: Overflow;
    clipBehavior: Clip;
    children: IList<IWidget>;
    key: IKey | undefined;
    createRenderObject: (context: IBuildContext) => IRenderIndexedStack;
    updateRenderObject: (context: IBuildContext, renderObject: unknown) => void;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    createElement: () => IMultiChildRenderObjectElement;
    didUnmountRenderObject: (renderObject: unknown) => void;
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
export class IndexedStack implements IStack, IDiagnosticable {
    public readonly index: number | undefined = undefined as any;
    public readonly alignment: IAlignmentGeometry = undefined as any;
    public readonly textDirection: TextDirection | undefined = undefined as any;
    public readonly fit: StackFit = undefined as any;
    public readonly overflow: Overflow = undefined as any;
    public readonly clipBehavior: Clip = undefined as any;
    public readonly children: IList<IWidget> = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        alignment?: IAlignmentGeometry;
        children?: IList<IWidget>;
        index?: number | undefined;
        key?: IKey | undefined;
        sizing?: StackFit;
        textDirection?: TextDirection | undefined;
    }) {
        flutter.widgets.indexedStack(this, {
            ...indexedStackDefaultProps,
            ...props,
        });
    }
    private readonly _dart_createRenderObject: (
        context: IBuildContext
    ) => IRenderIndexedStack = undefined as any;
    private readonly _dart_updateRenderObject: (
        context: IBuildContext,
        renderObject: any
    ) => void = undefined as any;
    private readonly _dart_debugFillProperties: (
        properties: IDiagnosticPropertiesBuilder
    ) => void = undefined as any;
    private readonly _dart_createElement: () => IMultiChildRenderObjectElement =
        undefined as any;
    private readonly _dart_didUnmountRenderObject: (renderObject: any) => void =
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
    public createRenderObject(context: IBuildContext): IRenderIndexedStack {
        return this._dart_createRenderObject(context);
    }
    public updateRenderObject(context: IBuildContext, renderObject: any): void {
        return this._dart_updateRenderObject(context, renderObject);
    }
    public debugFillProperties(properties: IDiagnosticPropertiesBuilder): void {
        return this._dart_debugFillProperties(properties);
    }
    public createElement(): IMultiChildRenderObjectElement {
        return this._dart_createElement();
    }
    public didUnmountRenderObject(renderObject: any): void {
        return this._dart_didUnmountRenderObject(renderObject);
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
const indexedStackDefaultProps = {
    alignment: AlignmentDirectional.topStart,
    children: List.fromArray<IWidget>([]),
    index: 0,
    sizing: StackFit.loose,
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
