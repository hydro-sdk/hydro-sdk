import { IList } from "../../dart/core/list";
import { IColor } from "../../dart/ui/color";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import { IEdgeInsetsGeometry } from "../painting/edgeInsetsGeometry";
import { IShapeBorder } from "../painting/shapeBorder";
import { IBuildContext } from "../widgets/buildContext";
import { IInheritedElement } from "../widgets/inheritedElement";
import { IInheritedTheme } from "../widgets/inheritedTheme";
import { IWidget } from "../widgets/widget";
import { ListTileStyle } from "./listTileStyle";
import { IListTileThemeData } from "./listTileThemeData";
declare const flutter: {
    material: {
        listTileTheme: (
            this: void,
            listTileTheme: IListTileTheme,
            props: {
                contentPadding?: IEdgeInsetsGeometry | undefined;
                data?: IListTileThemeData | undefined;
                dense?: boolean | undefined;
                enableFeedback?: boolean | undefined;
                horizontalTitleGap?: number | undefined;
                iconColor?: IColor | undefined;
                key?: IKey | undefined;
                minLeadingWidth?: number | undefined;
                minVerticalPadding?: number | undefined;
                selectedColor?: IColor | undefined;
                selectedTileColor?: IColor | undefined;
                shape?: IShapeBorder | undefined;
                style?: ListTileStyle | undefined;
                textColor?: IColor | undefined;
                tileColor?: IColor | undefined;
                child: IWidget;
            }
        ) => IListTileTheme;
        listTileThemeOf: (context: IBuildContext) => IListTileThemeData;
        listTileThemeMerge: (props: {
            contentPadding?: IEdgeInsetsGeometry | undefined;
            dense?: boolean | undefined;
            enableFeedback?: boolean | undefined;
            horizontalTitleGap?: number | undefined;
            iconColor?: IColor | undefined;
            key?: IKey | undefined;
            minLeadingWidth?: number | undefined;
            minVerticalPadding?: number | undefined;
            selectedColor?: IColor | undefined;
            selectedTileColor?: IColor | undefined;
            shape?: IShapeBorder | undefined;
            style?: ListTileStyle | undefined;
            textColor?: IColor | undefined;
            tileColor?: IColor | undefined;
            child: IWidget;
        }) => IWidget;
    };
};
export interface IListTileTheme {
    child: IWidget;
    key: IKey | undefined;
    getData: () => IListTileThemeData;
    getDense: () => boolean | undefined;
    getShape: () => IShapeBorder | undefined;
    getStyle: () => ListTileStyle | undefined;
    getSelectedColor: () => IColor | undefined;
    getIconColor: () => IColor | undefined;
    getTextColor: () => IColor | undefined;
    getContentPadding: () => IEdgeInsetsGeometry | undefined;
    getTileColor: () => IColor | undefined;
    getSelectedTileColor: () => IColor | undefined;
    getHorizontalTitleGap: () => number | undefined;
    getMinVerticalPadding: () => number | undefined;
    getMinLeadingWidth: () => number | undefined;
    getEnableFeedback: () => boolean | undefined;
    wrap: (context: IBuildContext, child: IWidget) => IWidget;
    updateShouldNotify: (oldWidget: unknown) => boolean;
    createElement: () => IInheritedElement;
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
export class ListTileTheme implements IInheritedTheme, IDiagnosticable {
    public readonly child: IWidget = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        contentPadding?: IEdgeInsetsGeometry | undefined;
        data?: IListTileThemeData | undefined;
        dense?: boolean | undefined;
        enableFeedback?: boolean | undefined;
        horizontalTitleGap?: number | undefined;
        iconColor?: IColor | undefined;
        key?: IKey | undefined;
        minLeadingWidth?: number | undefined;
        minVerticalPadding?: number | undefined;
        selectedColor?: IColor | undefined;
        selectedTileColor?: IColor | undefined;
        shape?: IShapeBorder | undefined;
        style?: ListTileStyle | undefined;
        textColor?: IColor | undefined;
        tileColor?: IColor | undefined;
        child: IWidget;
    }) {
        flutter.material.listTileTheme(this, props);
    }
    public static of(context: IBuildContext): IListTileThemeData {
        return flutter.material.listTileThemeOf(context);
    }
    public static merge(props: {
        contentPadding?: IEdgeInsetsGeometry | undefined;
        dense?: boolean | undefined;
        enableFeedback?: boolean | undefined;
        horizontalTitleGap?: number | undefined;
        iconColor?: IColor | undefined;
        key?: IKey | undefined;
        minLeadingWidth?: number | undefined;
        minVerticalPadding?: number | undefined;
        selectedColor?: IColor | undefined;
        selectedTileColor?: IColor | undefined;
        shape?: IShapeBorder | undefined;
        style?: ListTileStyle | undefined;
        textColor?: IColor | undefined;
        tileColor?: IColor | undefined;
        child: IWidget;
    }): IWidget {
        return flutter.material.listTileThemeMerge(props);
    }
    private readonly _dart_getData: () => IListTileThemeData = undefined as any;
    private readonly _dart_getDense: () => boolean | undefined =
        undefined as any;
    private readonly _dart_getShape: () => IShapeBorder | undefined =
        undefined as any;
    private readonly _dart_getStyle: () => ListTileStyle | undefined =
        undefined as any;
    private readonly _dart_getSelectedColor: () => IColor | undefined =
        undefined as any;
    private readonly _dart_getIconColor: () => IColor | undefined =
        undefined as any;
    private readonly _dart_getTextColor: () => IColor | undefined =
        undefined as any;
    private readonly _dart_getContentPadding: () =>
        | IEdgeInsetsGeometry
        | undefined = undefined as any;
    private readonly _dart_getTileColor: () => IColor | undefined =
        undefined as any;
    private readonly _dart_getSelectedTileColor: () => IColor | undefined =
        undefined as any;
    private readonly _dart_getHorizontalTitleGap: () => number | undefined =
        undefined as any;
    private readonly _dart_getMinVerticalPadding: () => number | undefined =
        undefined as any;
    private readonly _dart_getMinLeadingWidth: () => number | undefined =
        undefined as any;
    private readonly _dart_getEnableFeedback: () => boolean | undefined =
        undefined as any;
    private readonly _dart_wrap: (
        context: IBuildContext,
        child: IWidget
    ) => IWidget = undefined as any;
    private readonly _dart_updateShouldNotify: (oldWidget: any) => boolean =
        undefined as any;
    private readonly _dart_createElement: () => IInheritedElement =
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
    public getData(): IListTileThemeData {
        return this._dart_getData();
    }
    public getDense(): boolean | undefined {
        return this._dart_getDense();
    }
    public getShape(): IShapeBorder | undefined {
        return this._dart_getShape();
    }
    public getStyle(): ListTileStyle | undefined {
        return this._dart_getStyle();
    }
    public getSelectedColor(): IColor | undefined {
        return this._dart_getSelectedColor();
    }
    public getIconColor(): IColor | undefined {
        return this._dart_getIconColor();
    }
    public getTextColor(): IColor | undefined {
        return this._dart_getTextColor();
    }
    public getContentPadding(): IEdgeInsetsGeometry | undefined {
        return this._dart_getContentPadding();
    }
    public getTileColor(): IColor | undefined {
        return this._dart_getTileColor();
    }
    public getSelectedTileColor(): IColor | undefined {
        return this._dart_getSelectedTileColor();
    }
    public getHorizontalTitleGap(): number | undefined {
        return this._dart_getHorizontalTitleGap();
    }
    public getMinVerticalPadding(): number | undefined {
        return this._dart_getMinVerticalPadding();
    }
    public getMinLeadingWidth(): number | undefined {
        return this._dart_getMinLeadingWidth();
    }
    public getEnableFeedback(): boolean | undefined {
        return this._dart_getEnableFeedback();
    }
    public wrap(context: IBuildContext, child: IWidget): IWidget {
        return this._dart_wrap(context, child);
    }
    public updateShouldNotify(oldWidget: any): boolean {
        return this._dart_updateShouldNotify(oldWidget);
    }
    public createElement(): IInheritedElement {
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
