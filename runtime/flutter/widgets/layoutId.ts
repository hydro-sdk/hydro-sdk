import { IList } from "../../dart/core/list";
import { Type } from "../../dart/core/type";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import { IMultiChildLayoutParentData } from "../rendering/multiChildLayoutParentData";
import { IRenderObject } from "../rendering/renderObject";
import { IParentDataElement } from "./parentDataElement";
import { IParentDataWidget } from "./parentDataWidget";
import { IWidget } from "./widget";
declare const flutter: {
    widgets: {
        layoutId: (
            this: void,
            layoutId: ILayoutId,
            props: { key?: IKey | undefined; child: IWidget; id: Object }
        ) => ILayoutId;
    };
};
export interface ILayoutId {
    id: Object;
    child: IWidget;
    key: IKey | undefined;
    applyParentData: (renderObject: IRenderObject) => void;
    getDebugTypicalAncestorWidgetClass: () => Type;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    createElement: () => IParentDataElement<IMultiChildLayoutParentData>;
    debugIsValidRenderObject: (renderObject: IRenderObject) => boolean;
    debugCanApplyOutOfTurn: () => boolean;
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
export class LayoutId
    implements IParentDataWidget<IMultiChildLayoutParentData>, IDiagnosticable
{
    public readonly id: Object = undefined as any;
    public readonly child: IWidget = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        key?: IKey | undefined;
        child: IWidget;
        id: Object;
    }) {
        flutter.widgets.layoutId(this, props);
    }
    private readonly _dart_applyParentData: (
        renderObject: IRenderObject
    ) => void = undefined as any;
    private readonly _dart_getDebugTypicalAncestorWidgetClass: () => Type =
        undefined as any;
    private readonly _dart_debugFillProperties: (
        properties: IDiagnosticPropertiesBuilder
    ) => void = undefined as any;
    private readonly _dart_createElement: () => IParentDataElement<IMultiChildLayoutParentData> =
        undefined as any;
    private readonly _dart_debugIsValidRenderObject: (
        renderObject: IRenderObject
    ) => boolean = undefined as any;
    private readonly _dart_debugCanApplyOutOfTurn: () => boolean =
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
    public applyParentData(renderObject: IRenderObject): void {
        return this._dart_applyParentData(renderObject);
    }
    public getDebugTypicalAncestorWidgetClass(): Type {
        return this._dart_getDebugTypicalAncestorWidgetClass();
    }
    public debugFillProperties(properties: IDiagnosticPropertiesBuilder): void {
        return this._dart_debugFillProperties(properties);
    }
    public createElement(): IParentDataElement<IMultiChildLayoutParentData> {
        return this._dart_createElement();
    }
    public debugIsValidRenderObject(renderObject: IRenderObject): boolean {
        return this._dart_debugIsValidRenderObject(renderObject);
    }
    public debugCanApplyOutOfTurn(): boolean {
        return this._dart_debugCanApplyOutOfTurn();
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
