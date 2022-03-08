import { IList, List } from "../../dart/core/list";
import { IColor } from "../../dart/ui/color";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import { IAlignment } from "../painting/alignment";
import { IEdgeInsetsGeometry } from "../painting/edgeInsetsGeometry";
import { CrossAxisAlignment } from "../rendering/crossAxisAlignment";
import { IState } from "../widgets/state";
import { IStatefulElement } from "../widgets/statefulElement";
import { IStatefulWidget } from "../widgets/statefulWidget";
import { IWidget } from "../widgets/widget";
import { ListTileControlAffinity } from "./listTileControlAffinity";
declare const flutter: {
    material: {
        expansionTile: (
            this: void,
            expansionTile: IExpansionTile,
            props: {
                backgroundColor?: IColor | undefined;
                children: IList<IWidget>;
                childrenPadding?: IEdgeInsetsGeometry | undefined;
                collapsedBackgroundColor?: IColor | undefined;
                collapsedIconColor?: IColor | undefined;
                collapsedTextColor?: IColor | undefined;
                controlAffinity?: ListTileControlAffinity | undefined;
                expandedAlignment?: IAlignment | undefined;
                expandedCrossAxisAlignment?: CrossAxisAlignment | undefined;
                iconColor?: IColor | undefined;
                initiallyExpanded: boolean;
                key?: IKey | undefined;
                leading?: IWidget | undefined;
                maintainState: boolean;
                onExpansionChanged?: (value: boolean) => void | undefined;
                subtitle?: IWidget | undefined;
                textColor?: IColor | undefined;
                tilePadding?: IEdgeInsetsGeometry | undefined;
                trailing?: IWidget | undefined;
                title: IWidget;
            }
        ) => IExpansionTile;
    };
};
export interface IExpansionTile {
    leading: IWidget | undefined;
    title: IWidget;
    subtitle: IWidget | undefined;
    children: IList<IWidget>;
    backgroundColor: IColor | undefined;
    collapsedBackgroundColor: IColor | undefined;
    trailing: IWidget | undefined;
    initiallyExpanded: boolean;
    maintainState: boolean;
    tilePadding: IEdgeInsetsGeometry | undefined;
    expandedAlignment: IAlignment | undefined;
    expandedCrossAxisAlignment: CrossAxisAlignment | undefined;
    childrenPadding: IEdgeInsetsGeometry | undefined;
    iconColor: IColor | undefined;
    collapsedIconColor: IColor | undefined;
    textColor: IColor | undefined;
    collapsedTextColor: IColor | undefined;
    controlAffinity: ListTileControlAffinity | undefined;
    key: IKey | undefined;
    createState: () => IState<IExpansionTile>;
    createElement: () => IStatefulElement;
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
export class ExpansionTile implements IStatefulWidget, IDiagnosticable {
    public readonly leading: IWidget | undefined = undefined as any;
    public readonly title: IWidget = undefined as any;
    public readonly subtitle: IWidget | undefined = undefined as any;
    public readonly children: IList<IWidget> = undefined as any;
    public readonly backgroundColor: IColor | undefined = undefined as any;
    public readonly collapsedBackgroundColor: IColor | undefined =
        undefined as any;
    public readonly trailing: IWidget | undefined = undefined as any;
    public readonly initiallyExpanded: boolean = undefined as any;
    public readonly maintainState: boolean = undefined as any;
    public readonly tilePadding: IEdgeInsetsGeometry | undefined =
        undefined as any;
    public readonly expandedAlignment: IAlignment | undefined =
        undefined as any;
    public readonly expandedCrossAxisAlignment: CrossAxisAlignment | undefined =
        undefined as any;
    public readonly childrenPadding: IEdgeInsetsGeometry | undefined =
        undefined as any;
    public readonly iconColor: IColor | undefined = undefined as any;
    public readonly collapsedIconColor: IColor | undefined = undefined as any;
    public readonly textColor: IColor | undefined = undefined as any;
    public readonly collapsedTextColor: IColor | undefined = undefined as any;
    public readonly controlAffinity: ListTileControlAffinity | undefined =
        undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        backgroundColor?: IColor | undefined;
        children?: IList<IWidget>;
        childrenPadding?: IEdgeInsetsGeometry | undefined;
        collapsedBackgroundColor?: IColor | undefined;
        collapsedIconColor?: IColor | undefined;
        collapsedTextColor?: IColor | undefined;
        controlAffinity?: ListTileControlAffinity | undefined;
        expandedAlignment?: IAlignment | undefined;
        expandedCrossAxisAlignment?: CrossAxisAlignment | undefined;
        iconColor?: IColor | undefined;
        initiallyExpanded?: boolean;
        key?: IKey | undefined;
        leading?: IWidget | undefined;
        maintainState?: boolean;
        onExpansionChanged?: (value: boolean) => void | undefined;
        subtitle?: IWidget | undefined;
        textColor?: IColor | undefined;
        tilePadding?: IEdgeInsetsGeometry | undefined;
        trailing?: IWidget | undefined;
        title: IWidget;
    }) {
        flutter.material.expansionTile(this, {
            ...expansionTileDefaultProps,
            ...props,
        });
    }
    private readonly _dart_createState: () => IState<IExpansionTile> =
        undefined as any;
    private readonly _dart_createElement: () => IStatefulElement =
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
    public createState(): IState<IExpansionTile> {
        return this._dart_createState();
    }
    public createElement(): IStatefulElement {
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
const expansionTileDefaultProps = {
    children: List.fromArray<IWidget>([]),
    initiallyExpanded: false,
    maintainState: false,
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
