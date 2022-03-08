import { IList } from "../../dart/core/list";
import { IColor } from "../../dart/ui/color";
import { IAnimation } from "../animation/animation";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import { ITextStyle } from "../painting/textStyle";
import { IBuildContext } from "../widgets/buildContext";
import { IIconThemeData } from "../widgets/iconThemeData";
import { IState } from "../widgets/state";
import { IStatefulElement } from "../widgets/statefulElement";
import { IStatefulWidget } from "../widgets/statefulWidget";
import { IWidget } from "../widgets/widget";
import { INavigationRailDestination } from "./navigationRailDestination";
import { NavigationRailLabelType } from "./navigationRailLabelType";
declare const flutter: {
    material: {
        navigationRail: (
            this: void,
            navigationRail: INavigationRail,
            props: {
                backgroundColor?: IColor | undefined;
                elevation?: number | undefined;
                extended: boolean;
                groupAlignment?: number | undefined;
                key?: IKey | undefined;
                labelType?: NavigationRailLabelType | undefined;
                leading?: IWidget | undefined;
                minExtendedWidth?: number | undefined;
                minWidth?: number | undefined;
                onDestinationSelected?: (value: number) => void | undefined;
                selectedIconTheme?: IIconThemeData | undefined;
                selectedLabelTextStyle?: ITextStyle | undefined;
                trailing?: IWidget | undefined;
                unselectedIconTheme?: IIconThemeData | undefined;
                unselectedLabelTextStyle?: ITextStyle | undefined;
                destinations: IList<INavigationRailDestination>;
                selectedIndex: number;
            }
        ) => INavigationRail;
        navigationRailExtendedAnimation: (
            context: IBuildContext
        ) => IAnimation<number>;
    };
};
export interface INavigationRail {
    backgroundColor: IColor | undefined;
    extended: boolean;
    leading: IWidget | undefined;
    trailing: IWidget | undefined;
    destinations: IList<INavigationRailDestination>;
    selectedIndex: number;
    elevation: number | undefined;
    groupAlignment: number | undefined;
    labelType: NavigationRailLabelType | undefined;
    unselectedLabelTextStyle: ITextStyle | undefined;
    selectedLabelTextStyle: ITextStyle | undefined;
    unselectedIconTheme: IIconThemeData | undefined;
    selectedIconTheme: IIconThemeData | undefined;
    minWidth: number | undefined;
    minExtendedWidth: number | undefined;
    key: IKey | undefined;
    createState: () => IState<INavigationRail>;
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
export class NavigationRail implements IStatefulWidget, IDiagnosticable {
    public readonly backgroundColor: IColor | undefined = undefined as any;
    public readonly extended: boolean = undefined as any;
    public readonly leading: IWidget | undefined = undefined as any;
    public readonly trailing: IWidget | undefined = undefined as any;
    public readonly destinations: IList<INavigationRailDestination> =
        undefined as any;
    public readonly selectedIndex: number = undefined as any;
    public readonly elevation: number | undefined = undefined as any;
    public readonly groupAlignment: number | undefined = undefined as any;
    public readonly labelType: NavigationRailLabelType | undefined =
        undefined as any;
    public readonly unselectedLabelTextStyle: ITextStyle | undefined =
        undefined as any;
    public readonly selectedLabelTextStyle: ITextStyle | undefined =
        undefined as any;
    public readonly unselectedIconTheme: IIconThemeData | undefined =
        undefined as any;
    public readonly selectedIconTheme: IIconThemeData | undefined =
        undefined as any;
    public readonly minWidth: number | undefined = undefined as any;
    public readonly minExtendedWidth: number | undefined = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        backgroundColor?: IColor | undefined;
        elevation?: number | undefined;
        extended?: boolean;
        groupAlignment?: number | undefined;
        key?: IKey | undefined;
        labelType?: NavigationRailLabelType | undefined;
        leading?: IWidget | undefined;
        minExtendedWidth?: number | undefined;
        minWidth?: number | undefined;
        onDestinationSelected?: (value: number) => void | undefined;
        selectedIconTheme?: IIconThemeData | undefined;
        selectedLabelTextStyle?: ITextStyle | undefined;
        trailing?: IWidget | undefined;
        unselectedIconTheme?: IIconThemeData | undefined;
        unselectedLabelTextStyle?: ITextStyle | undefined;
        destinations: IList<INavigationRailDestination>;
        selectedIndex: number;
    }) {
        flutter.material.navigationRail(this, {
            ...navigationRailDefaultProps,
            ...props,
        });
    }
    public static extendedAnimation(
        context: IBuildContext
    ): IAnimation<number> {
        return flutter.material.navigationRailExtendedAnimation(context);
    }
    private readonly _dart_createState: () => IState<INavigationRail> =
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
    public createState(): IState<INavigationRail> {
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
const navigationRailDefaultProps = {
    extended: false,
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
