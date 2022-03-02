import { IList } from "../../dart/core/list";
import { Type } from "../../dart/core/type";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import { FlexFit } from "../rendering/flexFit";
import { IFlexParentData } from "../rendering/flexParentData";
import { IRenderObject } from "../rendering/renderObject";
import { IFlexible } from "./flexible";
import { IParentDataElement } from "./parentDataElement";
import { IWidget } from "./widget";
declare const flutter: {
    widgets: {
        expanded: (
            this: void,
            expanded: IExpanded,
            props: { flex: number; key?: IKey | undefined; child: IWidget }
        ) => IExpanded;
    };
};
export interface IExpanded {
    flex: number;
    fit: FlexFit;
    child: IWidget;
    key: IKey | undefined;
    applyParentData: (renderObject: IRenderObject) => void;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    getDebugTypicalAncestorWidgetClass: () => Type;
    createElement: () => IParentDataElement<IFlexParentData>;
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
export class Expanded implements IFlexible, IDiagnosticable {
    public readonly flex: number = undefined as any;
    public readonly fit: FlexFit = undefined as any;
    public readonly child: IWidget = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        flex?: number;
        key?: IKey | undefined;
        child: IWidget;
    }) {
        flutter.widgets.expanded(this, {
            ...expandedDefaultProps,
            ...props,
        });
    }
    private readonly _dart_applyParentData: (
        renderObject: IRenderObject
    ) => void = undefined as any;
    private readonly _dart_debugFillProperties: (
        properties: IDiagnosticPropertiesBuilder
    ) => void = undefined as any;
    private readonly _dart_getDebugTypicalAncestorWidgetClass: () => Type =
        undefined as any;
    private readonly _dart_createElement: () => IParentDataElement<IFlexParentData> =
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
    public debugFillProperties(properties: IDiagnosticPropertiesBuilder): void {
        return this._dart_debugFillProperties(properties);
    }
    public getDebugTypicalAncestorWidgetClass(): Type {
        return this._dart_getDebugTypicalAncestorWidgetClass();
    }
    public createElement(): IParentDataElement<IFlexParentData> {
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
const expandedDefaultProps = {
    flex: 1,
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
