import { IList } from "../../dart/core/list";
import { Brightness } from "../../dart/ui/brightness";
import { IColor } from "../../dart/ui/color";
import { ISize } from "../../dart/ui/size";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import { IShapeBorder } from "../painting/shapeBorder";
import { ITextStyle } from "../painting/textStyle";
import { ISystemUiOverlayStyle } from "../services/systemUiOverlayStyle";
import { IBuildContext } from "../widgets/buildContext";
import { IIconThemeData } from "../widgets/iconThemeData";
import { IPreferredSizeWidget } from "../widgets/preferredSizeWidget";
import { IState } from "../widgets/state";
import { IStatefulElement } from "../widgets/statefulElement";
import { IStatefulWidget } from "../widgets/statefulWidget";
import { IWidget } from "../widgets/widget";
import { ITextTheme } from "./textTheme";
declare const flutter: {
    material: {
        appBar: (
            this: void,
            appBar: IAppBar,
            props: {
                actions?: IList<IWidget> | undefined;
                actionsIconTheme?: IIconThemeData | undefined;
                automaticallyImplyLeading: boolean;
                backgroundColor?: IColor | undefined;
                backwardsCompatibility?: boolean | undefined;
                bottom?: IPreferredSizeWidget | undefined;
                bottomOpacity: number;
                brightness?: Brightness | undefined;
                centerTitle?: boolean | undefined;
                elevation?: number | undefined;
                excludeHeaderSemantics: boolean;
                flexibleSpace?: IWidget | undefined;
                foregroundColor?: IColor | undefined;
                iconTheme?: IIconThemeData | undefined;
                key?: IKey | undefined;
                leading?: IWidget | undefined;
                leadingWidth?: number | undefined;
                primary: boolean;
                shadowColor?: IColor | undefined;
                shape?: IShapeBorder | undefined;
                systemOverlayStyle?: ISystemUiOverlayStyle | undefined;
                textTheme?: ITextTheme | undefined;
                title?: IWidget | undefined;
                titleSpacing?: number | undefined;
                titleTextStyle?: ITextStyle | undefined;
                toolbarHeight?: number | undefined;
                toolbarOpacity: number;
                toolbarTextStyle?: ITextStyle | undefined;
            }
        ) => IAppBar;
        appBarPreferredHeightFor: (
            context: IBuildContext,
            preferredSize: ISize
        ) => number;
    };
};
export interface IAppBar {
    leading: IWidget | undefined;
    automaticallyImplyLeading: boolean;
    title: IWidget | undefined;
    actions: IList<IWidget> | undefined;
    flexibleSpace: IWidget | undefined;
    bottom: IPreferredSizeWidget | undefined;
    elevation: number | undefined;
    shadowColor: IColor | undefined;
    shape: IShapeBorder | undefined;
    backgroundColor: IColor | undefined;
    foregroundColor: IColor | undefined;
    brightness: Brightness | undefined;
    iconTheme: IIconThemeData | undefined;
    actionsIconTheme: IIconThemeData | undefined;
    textTheme: ITextTheme | undefined;
    primary: boolean;
    centerTitle: boolean | undefined;
    excludeHeaderSemantics: boolean;
    titleSpacing: number | undefined;
    toolbarOpacity: number;
    bottomOpacity: number;
    preferredSize: ISize;
    toolbarHeight: number | undefined;
    leadingWidth: number | undefined;
    backwardsCompatibility: boolean | undefined;
    toolbarTextStyle: ITextStyle | undefined;
    titleTextStyle: ITextStyle | undefined;
    systemOverlayStyle: ISystemUiOverlayStyle | undefined;
    key: IKey | undefined;
    createState: () => IState<IAppBar>;
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
    getPreferredSize: () => ISize;
}
export class AppBar
    implements IStatefulWidget, IDiagnosticable, IPreferredSizeWidget, IWidget
{
    public readonly leading: IWidget | undefined = undefined as any;
    public readonly automaticallyImplyLeading: boolean = undefined as any;
    public readonly title: IWidget | undefined = undefined as any;
    public readonly actions: IList<IWidget> | undefined = undefined as any;
    public readonly flexibleSpace: IWidget | undefined = undefined as any;
    public readonly bottom: IPreferredSizeWidget | undefined = undefined as any;
    public readonly elevation: number | undefined = undefined as any;
    public readonly shadowColor: IColor | undefined = undefined as any;
    public readonly shape: IShapeBorder | undefined = undefined as any;
    public readonly backgroundColor: IColor | undefined = undefined as any;
    public readonly foregroundColor: IColor | undefined = undefined as any;
    public readonly brightness: Brightness | undefined = undefined as any;
    public readonly iconTheme: IIconThemeData | undefined = undefined as any;
    public readonly actionsIconTheme: IIconThemeData | undefined =
        undefined as any;
    public readonly textTheme: ITextTheme | undefined = undefined as any;
    public readonly primary: boolean = undefined as any;
    public readonly centerTitle: boolean | undefined = undefined as any;
    public readonly excludeHeaderSemantics: boolean = undefined as any;
    public readonly titleSpacing: number | undefined = undefined as any;
    public readonly toolbarOpacity: number = undefined as any;
    public readonly bottomOpacity: number = undefined as any;
    public readonly preferredSize: ISize = undefined as any;
    public readonly toolbarHeight: number | undefined = undefined as any;
    public readonly leadingWidth: number | undefined = undefined as any;
    public readonly backwardsCompatibility: boolean | undefined =
        undefined as any;
    public readonly toolbarTextStyle: ITextStyle | undefined = undefined as any;
    public readonly titleTextStyle: ITextStyle | undefined = undefined as any;
    public readonly systemOverlayStyle: ISystemUiOverlayStyle | undefined =
        undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        actions?: IList<IWidget> | undefined;
        actionsIconTheme?: IIconThemeData | undefined;
        automaticallyImplyLeading?: boolean;
        backgroundColor?: IColor | undefined;
        backwardsCompatibility?: boolean | undefined;
        bottom?: IPreferredSizeWidget | undefined;
        bottomOpacity?: number;
        brightness?: Brightness | undefined;
        centerTitle?: boolean | undefined;
        elevation?: number | undefined;
        excludeHeaderSemantics?: boolean;
        flexibleSpace?: IWidget | undefined;
        foregroundColor?: IColor | undefined;
        iconTheme?: IIconThemeData | undefined;
        key?: IKey | undefined;
        leading?: IWidget | undefined;
        leadingWidth?: number | undefined;
        primary?: boolean;
        shadowColor?: IColor | undefined;
        shape?: IShapeBorder | undefined;
        systemOverlayStyle?: ISystemUiOverlayStyle | undefined;
        textTheme?: ITextTheme | undefined;
        title?: IWidget | undefined;
        titleSpacing?: number | undefined;
        titleTextStyle?: ITextStyle | undefined;
        toolbarHeight?: number | undefined;
        toolbarOpacity?: number;
        toolbarTextStyle?: ITextStyle | undefined;
    }) {
        flutter.material.appBar(this, {
            ...appBarDefaultProps,
            ...props,
        });
    }
    public static preferredHeightFor(
        context: IBuildContext,
        preferredSize: ISize
    ): number {
        return flutter.material.appBarPreferredHeightFor(
            context,
            preferredSize
        );
    }
    private readonly _dart_createState: () => IState<IAppBar> =
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
    private readonly _dart_getPreferredSize: () => ISize = undefined as any;
    public createState(): IState<IAppBar> {
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
    public getPreferredSize(): ISize {
        return this._dart_getPreferredSize();
    }
}
const appBarDefaultProps = {
    automaticallyImplyLeading: true,
    bottomOpacity: 1.0,
    excludeHeaderSemantics: false,
    primary: true,
    toolbarOpacity: 1.0,
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
