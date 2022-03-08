import { IList } from "../../dart/core/list";
import { TextBaseline } from "../../dart/ui/textBaseline";
import { TextDirection } from "../../dart/ui/textDirection";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import { IRenderObject } from "../rendering/renderObject";
import { IBuildContext } from "../widgets/buildContext";
import { IRenderObjectElement } from "../widgets/renderObjectElement";
import { IRenderObjectWidget } from "../widgets/renderObjectWidget";
import { IWidget } from "../widgets/widget";
import { I_ListTileElement } from "./_listTileElement";
import { I_RenderListTile } from "./_renderListTile";
import { IVisualDensity } from "./visualDensity";
declare const flutter: {
    material: {
        _listTile: (
            this: void,
            _listTile: I_ListTile,
            props: {
                key?: IKey | undefined;
                leading?: IWidget | undefined;
                subtitle?: IWidget | undefined;
                subtitleBaselineType?: TextBaseline | undefined;
                trailing?: IWidget | undefined;
                horizontalTitleGap: number;
                isDense: boolean;
                isThreeLine: boolean;
                minLeadingWidth: number;
                minVerticalPadding: number;
                textDirection: TextDirection;
                title: IWidget;
                titleBaselineType: TextBaseline;
                visualDensity: IVisualDensity;
            }
        ) => I_ListTile;
    };
};
export interface I_ListTile {
    leading: IWidget | undefined;
    title: IWidget;
    subtitle: IWidget | undefined;
    trailing: IWidget | undefined;
    isThreeLine: boolean;
    isDense: boolean;
    visualDensity: IVisualDensity;
    textDirection: TextDirection;
    titleBaselineType: TextBaseline;
    subtitleBaselineType: TextBaseline | undefined;
    horizontalTitleGap: number;
    minVerticalPadding: number;
    minLeadingWidth: number;
    key: IKey | undefined;
    createElement: () => I_ListTileElement;
    createRenderObject: (context: IBuildContext) => I_RenderListTile;
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
export class _ListTile implements IRenderObjectWidget, IDiagnosticable {
    public readonly leading: IWidget | undefined = undefined as any;
    public readonly title: IWidget = undefined as any;
    public readonly subtitle: IWidget | undefined = undefined as any;
    public readonly trailing: IWidget | undefined = undefined as any;
    public readonly isThreeLine: boolean = undefined as any;
    public readonly isDense: boolean = undefined as any;
    public readonly visualDensity: IVisualDensity = undefined as any;
    public readonly textDirection: TextDirection = undefined as any;
    public readonly titleBaselineType: TextBaseline = undefined as any;
    public readonly subtitleBaselineType: TextBaseline | undefined =
        undefined as any;
    public readonly horizontalTitleGap: number = undefined as any;
    public readonly minVerticalPadding: number = undefined as any;
    public readonly minLeadingWidth: number = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        key?: IKey | undefined;
        leading?: IWidget | undefined;
        subtitle?: IWidget | undefined;
        subtitleBaselineType?: TextBaseline | undefined;
        trailing?: IWidget | undefined;
        horizontalTitleGap: number;
        isDense: boolean;
        isThreeLine: boolean;
        minLeadingWidth: number;
        minVerticalPadding: number;
        textDirection: TextDirection;
        title: IWidget;
        titleBaselineType: TextBaseline;
        visualDensity: IVisualDensity;
    }) {
        flutter.material._listTile(this, props);
    }
    private readonly _dart_createElement: () => I_ListTileElement =
        undefined as any;
    private readonly _dart_createRenderObject: (
        context: IBuildContext
    ) => I_RenderListTile = undefined as any;
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
    public createElement(): I_ListTileElement {
        return this._dart_createElement();
    }
    public createRenderObject(context: IBuildContext): I_RenderListTile {
        return this._dart_createRenderObject(context);
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
