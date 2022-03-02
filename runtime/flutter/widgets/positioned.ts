import { IList } from "../../dart/core/list";
import { Type } from "../../dart/core/type";
import { TextDirection } from "../../dart/ui/textDirection";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import { IRenderObject } from "../rendering/renderObject";
import { IStackParentData } from "../rendering/stackParentData";
import { IParentDataElement } from "./parentDataElement";
import { IParentDataWidget } from "./parentDataWidget";
import { IWidget } from "./widget";
declare const flutter: {
    widgets: {
        positioned: (
            this: void,
            positioned: IPositioned,
            props: {
                bottom?: number | undefined;
                height?: number | undefined;
                key?: IKey | undefined;
                left?: number | undefined;
                right?: number | undefined;
                top?: number | undefined;
                width?: number | undefined;
                child: IWidget;
            }
        ) => IPositioned;
        positionedDirectional: (props: {
            bottom?: number | undefined;
            end?: number | undefined;
            height?: number | undefined;
            key?: IKey | undefined;
            start?: number | undefined;
            top?: number | undefined;
            width?: number | undefined;
            child: IWidget;
            textDirection: TextDirection;
        }) => IPositioned;
    };
};
export interface IPositioned {
    left: number | undefined;
    top: number | undefined;
    right: number | undefined;
    bottom: number | undefined;
    width: number | undefined;
    height: number | undefined;
    child: IWidget;
    key: IKey | undefined;
    applyParentData: (renderObject: IRenderObject) => void;
    getDebugTypicalAncestorWidgetClass: () => Type;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    createElement: () => IParentDataElement<IStackParentData>;
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
export class Positioned
    implements IParentDataWidget<IStackParentData>, IDiagnosticable
{
    public readonly left: number | undefined = undefined as any;
    public readonly top: number | undefined = undefined as any;
    public readonly right: number | undefined = undefined as any;
    public readonly bottom: number | undefined = undefined as any;
    public readonly width: number | undefined = undefined as any;
    public readonly height: number | undefined = undefined as any;
    public readonly child: IWidget = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        bottom?: number | undefined;
        height?: number | undefined;
        key?: IKey | undefined;
        left?: number | undefined;
        right?: number | undefined;
        top?: number | undefined;
        width?: number | undefined;
        child: IWidget;
    }) {
        flutter.widgets.positioned(this, props);
    }
    public static directional(props: {
        bottom?: number | undefined;
        end?: number | undefined;
        height?: number | undefined;
        key?: IKey | undefined;
        start?: number | undefined;
        top?: number | undefined;
        width?: number | undefined;
        child: IWidget;
        textDirection: TextDirection;
    }): IPositioned {
        return flutter.widgets.positionedDirectional(props);
    }
    private readonly _dart_applyParentData: (
        renderObject: IRenderObject
    ) => void = undefined as any;
    private readonly _dart_getDebugTypicalAncestorWidgetClass: () => Type =
        undefined as any;
    private readonly _dart_debugFillProperties: (
        properties: IDiagnosticPropertiesBuilder
    ) => void = undefined as any;
    private readonly _dart_createElement: () => IParentDataElement<IStackParentData> =
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
    public createElement(): IParentDataElement<IStackParentData> {
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
