import { IIterable } from "../../dart/core/iterable";
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
import { IMouseCursor } from "../services/mouseCursor";
import { IBuildContext } from "../widgets/buildContext";
import { IFocusNode } from "../widgets/focusNode";
import { IStatelessElement } from "../widgets/statelessElement";
import { IStatelessWidget } from "../widgets/statelessWidget";
import { IWidget } from "../widgets/widget";
import { ListTileStyle } from "./listTileStyle";
import { IVisualDensity } from "./visualDensity";
declare const flutter: {
    material: {
        listTile: (
            this: void,
            listTile: IListTile,
            props: {
                autofocus: boolean;
                contentPadding?: IEdgeInsetsGeometry | undefined;
                dense?: boolean | undefined;
                enableFeedback?: boolean | undefined;
                enabled: boolean;
                focusColor?: IColor | undefined;
                focusNode?: IFocusNode | undefined;
                horizontalTitleGap?: number | undefined;
                hoverColor?: IColor | undefined;
                iconColor?: IColor | undefined;
                isThreeLine: boolean;
                key?: IKey | undefined;
                leading?: IWidget | undefined;
                minLeadingWidth?: number | undefined;
                minVerticalPadding?: number | undefined;
                mouseCursor?: IMouseCursor | undefined;
                onLongPress?: () => void | undefined;
                onTap?: () => void | undefined;
                selected: boolean;
                selectedColor?: IColor | undefined;
                selectedTileColor?: IColor | undefined;
                shape?: IShapeBorder | undefined;
                style?: ListTileStyle | undefined;
                subtitle?: IWidget | undefined;
                textColor?: IColor | undefined;
                tileColor?: IColor | undefined;
                title?: IWidget | undefined;
                trailing?: IWidget | undefined;
                visualDensity?: IVisualDensity | undefined;
            }
        ) => IListTile;
        listTileDivideTiles: (props: {
            color?: IColor | undefined;
            context?: IBuildContext | undefined;
            tiles: IIterable<IWidget>;
        }) => IIterable<IWidget>;
    };
};
export interface IListTile {
    leading: IWidget | undefined;
    title: IWidget | undefined;
    subtitle: IWidget | undefined;
    trailing: IWidget | undefined;
    isThreeLine: boolean;
    dense: boolean | undefined;
    visualDensity: IVisualDensity | undefined;
    shape: IShapeBorder | undefined;
    selectedColor: IColor | undefined;
    iconColor: IColor | undefined;
    textColor: IColor | undefined;
    style: ListTileStyle | undefined;
    contentPadding: IEdgeInsetsGeometry | undefined;
    enabled: boolean;
    mouseCursor: IMouseCursor | undefined;
    selected: boolean;
    focusColor: IColor | undefined;
    hoverColor: IColor | undefined;
    focusNode: IFocusNode | undefined;
    autofocus: boolean;
    tileColor: IColor | undefined;
    selectedTileColor: IColor | undefined;
    enableFeedback: boolean | undefined;
    horizontalTitleGap: number | undefined;
    minVerticalPadding: number | undefined;
    minLeadingWidth: number | undefined;
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
export class ListTile implements IStatelessWidget, IDiagnosticable {
    public readonly leading: IWidget | undefined = undefined as any;
    public readonly title: IWidget | undefined = undefined as any;
    public readonly subtitle: IWidget | undefined = undefined as any;
    public readonly trailing: IWidget | undefined = undefined as any;
    public readonly isThreeLine: boolean = undefined as any;
    public readonly dense: boolean | undefined = undefined as any;
    public readonly visualDensity: IVisualDensity | undefined =
        undefined as any;
    public readonly shape: IShapeBorder | undefined = undefined as any;
    public readonly selectedColor: IColor | undefined = undefined as any;
    public readonly iconColor: IColor | undefined = undefined as any;
    public readonly textColor: IColor | undefined = undefined as any;
    public readonly style: ListTileStyle | undefined = undefined as any;
    public readonly contentPadding: IEdgeInsetsGeometry | undefined =
        undefined as any;
    public readonly enabled: boolean = undefined as any;
    public readonly mouseCursor: IMouseCursor | undefined = undefined as any;
    public readonly selected: boolean = undefined as any;
    public readonly focusColor: IColor | undefined = undefined as any;
    public readonly hoverColor: IColor | undefined = undefined as any;
    public readonly focusNode: IFocusNode | undefined = undefined as any;
    public readonly autofocus: boolean = undefined as any;
    public readonly tileColor: IColor | undefined = undefined as any;
    public readonly selectedTileColor: IColor | undefined = undefined as any;
    public readonly enableFeedback: boolean | undefined = undefined as any;
    public readonly horizontalTitleGap: number | undefined = undefined as any;
    public readonly minVerticalPadding: number | undefined = undefined as any;
    public readonly minLeadingWidth: number | undefined = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        autofocus?: boolean;
        contentPadding?: IEdgeInsetsGeometry | undefined;
        dense?: boolean | undefined;
        enableFeedback?: boolean | undefined;
        enabled?: boolean;
        focusColor?: IColor | undefined;
        focusNode?: IFocusNode | undefined;
        horizontalTitleGap?: number | undefined;
        hoverColor?: IColor | undefined;
        iconColor?: IColor | undefined;
        isThreeLine?: boolean;
        key?: IKey | undefined;
        leading?: IWidget | undefined;
        minLeadingWidth?: number | undefined;
        minVerticalPadding?: number | undefined;
        mouseCursor?: IMouseCursor | undefined;
        onLongPress?: () => void | undefined;
        onTap?: () => void | undefined;
        selected?: boolean;
        selectedColor?: IColor | undefined;
        selectedTileColor?: IColor | undefined;
        shape?: IShapeBorder | undefined;
        style?: ListTileStyle | undefined;
        subtitle?: IWidget | undefined;
        textColor?: IColor | undefined;
        tileColor?: IColor | undefined;
        title?: IWidget | undefined;
        trailing?: IWidget | undefined;
        visualDensity?: IVisualDensity | undefined;
    }) {
        flutter.material.listTile(this, {
            ...listTileDefaultProps,
            ...props,
        });
    }
    public static divideTiles(props: {
        color?: IColor | undefined;
        context?: IBuildContext | undefined;
        tiles: IIterable<IWidget>;
    }): IIterable<IWidget> {
        return flutter.material.listTileDivideTiles(props);
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
const listTileDefaultProps = {
    autofocus: false,
    enabled: true,
    isThreeLine: false,
    selected: false,
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
