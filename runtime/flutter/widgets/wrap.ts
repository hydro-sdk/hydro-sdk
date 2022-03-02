import { IList, List } from "../../dart/core/list";
import { Clip } from "../../dart/ui/clip";
import { TextDirection } from "../../dart/ui/textDirection";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import { Axis } from "../painting/axis";
import { VerticalDirection } from "../painting/verticalDirection";
import { IRenderObject } from "../rendering/renderObject";
import { IRenderWrap } from "../rendering/renderWrap";
import { WrapAlignment } from "../rendering/wrapAlignment";
import { WrapCrossAlignment } from "../rendering/wrapCrossAlignment";
import { IBuildContext } from "./buildContext";
import { IMultiChildRenderObjectElement } from "./multiChildRenderObjectElement";
import { IMultiChildRenderObjectWidget } from "./multiChildRenderObjectWidget";
import { IWidget } from "./widget";
declare const flutter: {
    widgets: {
        wrap: (
            this: void,
            wrap: IWrap,
            props: {
                alignment: WrapAlignment;
                children: IList<IWidget>;
                clipBehavior: Clip;
                crossAxisAlignment: WrapCrossAlignment;
                direction: Axis;
                key?: IKey | undefined;
                runAlignment: WrapAlignment;
                runSpacing: number;
                spacing: number;
                textDirection?: TextDirection | undefined;
                verticalDirection: VerticalDirection;
            }
        ) => IWrap;
    };
};
export interface IWrap {
    direction: Axis;
    alignment: WrapAlignment;
    spacing: number;
    runAlignment: WrapAlignment;
    runSpacing: number;
    crossAxisAlignment: WrapCrossAlignment;
    textDirection: TextDirection | undefined;
    verticalDirection: VerticalDirection;
    clipBehavior: Clip;
    children: IList<IWidget>;
    key: IKey | undefined;
    createRenderObject: (context: IBuildContext) => IRenderWrap;
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
export class Wrap implements IMultiChildRenderObjectWidget, IDiagnosticable {
    public readonly direction: Axis = undefined as any;
    public readonly alignment: WrapAlignment = undefined as any;
    public readonly spacing: number = undefined as any;
    public readonly runAlignment: WrapAlignment = undefined as any;
    public readonly runSpacing: number = undefined as any;
    public readonly crossAxisAlignment: WrapCrossAlignment = undefined as any;
    public readonly textDirection: TextDirection | undefined = undefined as any;
    public readonly verticalDirection: VerticalDirection = undefined as any;
    public readonly clipBehavior: Clip = undefined as any;
    public readonly children: IList<IWidget> = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        alignment?: WrapAlignment;
        children?: IList<IWidget>;
        clipBehavior?: Clip;
        crossAxisAlignment?: WrapCrossAlignment;
        direction?: Axis;
        key?: IKey | undefined;
        runAlignment?: WrapAlignment;
        runSpacing?: number;
        spacing?: number;
        textDirection?: TextDirection | undefined;
        verticalDirection?: VerticalDirection;
    }) {
        flutter.widgets.wrap(this, {
            ...wrapDefaultProps,
            ...props,
        });
    }
    private readonly _dart_createRenderObject: (
        context: IBuildContext
    ) => IRenderWrap = undefined as any;
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
    public createRenderObject(context: IBuildContext): IRenderWrap {
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
const wrapDefaultProps = {
    alignment: WrapAlignment.start,
    children: List.fromArray<IWidget>([]),
    clipBehavior: Clip.none,
    crossAxisAlignment: WrapCrossAlignment.start,
    direction: Axis.horizontal,
    runAlignment: WrapAlignment.start,
    runSpacing: 0.0,
    spacing: 0.0,
    verticalDirection: VerticalDirection.down,
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
