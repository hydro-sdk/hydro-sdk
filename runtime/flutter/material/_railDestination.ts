import { IList } from "../../dart/core/list";
import { IAnimation } from "../animation/animation";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import { IEdgeInsetsGeometry } from "../painting/edgeInsetsGeometry";
import { ITextStyle } from "../painting/textStyle";
import { IBuildContext } from "../widgets/buildContext";
import { IIconThemeData } from "../widgets/iconThemeData";
import { IStatelessElement } from "../widgets/statelessElement";
import { IStatelessWidget } from "../widgets/statelessWidget";
import { IWidget } from "../widgets/widget";
import { NavigationRailLabelType } from "./navigationRailLabelType";
declare const flutter: {
    material: {
        _railDestination: (
            this: void,
            _railDestination: I_RailDestination,
            props: {
                padding?: IEdgeInsetsGeometry | undefined;
                destinationAnimation: IAnimation<number>;
                extendedTransitionAnimation: IAnimation<number>;
                icon: IWidget;
                iconTheme: IIconThemeData;
                indexLabel: string;
                label: IWidget;
                labelTextStyle: ITextStyle;
                labelType: NavigationRailLabelType;
                minExtendedWidth: number;
                minWidth: number;
                onTap: () => void;
                selected: boolean;
            }
        ) => I_RailDestination;
    };
};
export interface I_RailDestination {
    minWidth: number;
    minExtendedWidth: number;
    icon: IWidget;
    label: IWidget;
    destinationAnimation: IAnimation<number>;
    labelType: NavigationRailLabelType;
    selected: boolean;
    extendedTransitionAnimation: IAnimation<number>;
    iconTheme: IIconThemeData;
    labelTextStyle: ITextStyle;
    indexLabel: string;
    padding: IEdgeInsetsGeometry | undefined;
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
export class _RailDestination implements IStatelessWidget, IDiagnosticable {
    public readonly minWidth: number = undefined as any;
    public readonly minExtendedWidth: number = undefined as any;
    public readonly icon: IWidget = undefined as any;
    public readonly label: IWidget = undefined as any;
    public readonly destinationAnimation: IAnimation<number> = undefined as any;
    public readonly labelType: NavigationRailLabelType = undefined as any;
    public readonly selected: boolean = undefined as any;
    public readonly extendedTransitionAnimation: IAnimation<number> =
        undefined as any;
    public readonly iconTheme: IIconThemeData = undefined as any;
    public readonly labelTextStyle: ITextStyle = undefined as any;
    public readonly indexLabel: string = undefined as any;
    public readonly padding: IEdgeInsetsGeometry | undefined = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        padding?: IEdgeInsetsGeometry | undefined;
        destinationAnimation: IAnimation<number>;
        extendedTransitionAnimation: IAnimation<number>;
        icon: IWidget;
        iconTheme: IIconThemeData;
        indexLabel: string;
        label: IWidget;
        labelTextStyle: ITextStyle;
        labelType: NavigationRailLabelType;
        minExtendedWidth: number;
        minWidth: number;
        onTap: () => void;
        selected: boolean;
    }) {
        flutter.material._railDestination(this, props);
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
