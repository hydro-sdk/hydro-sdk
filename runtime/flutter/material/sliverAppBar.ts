import { IFuture } from "../../dart/async/future";
import { IList } from "../../dart/core/list";
import { Brightness } from "../../dart/ui/brightness";
import { IColor } from "../../dart/ui/color";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import { IShapeBorder } from "../painting/shapeBorder";
import { ITextStyle } from "../painting/textStyle";
import { ISystemUiOverlayStyle } from "../services/systemUiOverlayStyle";
import { IIconThemeData } from "../widgets/iconThemeData";
import { IPreferredSizeWidget } from "../widgets/preferredSizeWidget";
import { IState } from "../widgets/state";
import { IStatefulElement } from "../widgets/statefulElement";
import { IStatefulWidget } from "../widgets/statefulWidget";
import { IWidget } from "../widgets/widget";
import { ITextTheme } from "./textTheme";
declare const flutter: {
    material: {
        sliverAppBar: (
            this: void,
            sliverAppBar: ISliverAppBar,
            props: {
                actions?: IList<IWidget> | undefined;
                actionsIconTheme?: IIconThemeData | undefined;
                automaticallyImplyLeading: boolean;
                backgroundColor?: IColor | undefined;
                backwardsCompatibility?: boolean | undefined;
                bottom?: IPreferredSizeWidget | undefined;
                brightness?: Brightness | undefined;
                centerTitle?: boolean | undefined;
                collapsedHeight?: number | undefined;
                elevation?: number | undefined;
                excludeHeaderSemantics: boolean;
                expandedHeight?: number | undefined;
                flexibleSpace?: IWidget | undefined;
                floating: boolean;
                forceElevated: boolean;
                foregroundColor?: IColor | undefined;
                iconTheme?: IIconThemeData | undefined;
                key?: IKey | undefined;
                leading?: IWidget | undefined;
                leadingWidth?: number | undefined;
                onStretchTrigger?: () => IFuture<void> | undefined;
                pinned: boolean;
                primary: boolean;
                shadowColor?: IColor | undefined;
                shape?: IShapeBorder | undefined;
                snap: boolean;
                stretch: boolean;
                stretchTriggerOffset: number;
                systemOverlayStyle?: ISystemUiOverlayStyle | undefined;
                textTheme?: ITextTheme | undefined;
                title?: IWidget | undefined;
                titleSpacing?: number | undefined;
                titleTextStyle?: ITextStyle | undefined;
                toolbarHeight: number;
                toolbarTextStyle?: ITextStyle | undefined;
            }
        ) => ISliverAppBar;
    };
};
export interface ISliverAppBar {
    leading: IWidget | undefined;
    automaticallyImplyLeading: boolean;
    title: IWidget | undefined;
    actions: IList<IWidget> | undefined;
    flexibleSpace: IWidget | undefined;
    bottom: IPreferredSizeWidget | undefined;
    elevation: number | undefined;
    shadowColor: IColor | undefined;
    forceElevated: boolean;
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
    collapsedHeight: number | undefined;
    expandedHeight: number | undefined;
    floating: boolean;
    pinned: boolean;
    shape: IShapeBorder | undefined;
    snap: boolean;
    stretch: boolean;
    stretchTriggerOffset: number;
    toolbarHeight: number;
    leadingWidth: number | undefined;
    backwardsCompatibility: boolean | undefined;
    toolbarTextStyle: ITextStyle | undefined;
    titleTextStyle: ITextStyle | undefined;
    systemOverlayStyle: ISystemUiOverlayStyle | undefined;
    key: IKey | undefined;
    createState: () => IState<ISliverAppBar>;
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
export class SliverAppBar implements IStatefulWidget, IDiagnosticable {
    public readonly leading: IWidget | undefined = undefined as any;
    public readonly automaticallyImplyLeading: boolean = undefined as any;
    public readonly title: IWidget | undefined = undefined as any;
    public readonly actions: IList<IWidget> | undefined = undefined as any;
    public readonly flexibleSpace: IWidget | undefined = undefined as any;
    public readonly bottom: IPreferredSizeWidget | undefined = undefined as any;
    public readonly elevation: number | undefined = undefined as any;
    public readonly shadowColor: IColor | undefined = undefined as any;
    public readonly forceElevated: boolean = undefined as any;
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
    public readonly collapsedHeight: number | undefined = undefined as any;
    public readonly expandedHeight: number | undefined = undefined as any;
    public readonly floating: boolean = undefined as any;
    public readonly pinned: boolean = undefined as any;
    public readonly shape: IShapeBorder | undefined = undefined as any;
    public readonly snap: boolean = undefined as any;
    public readonly stretch: boolean = undefined as any;
    public readonly stretchTriggerOffset: number = undefined as any;
    public readonly toolbarHeight: number = undefined as any;
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
        brightness?: Brightness | undefined;
        centerTitle?: boolean | undefined;
        collapsedHeight?: number | undefined;
        elevation?: number | undefined;
        excludeHeaderSemantics?: boolean;
        expandedHeight?: number | undefined;
        flexibleSpace?: IWidget | undefined;
        floating?: boolean;
        forceElevated?: boolean;
        foregroundColor?: IColor | undefined;
        iconTheme?: IIconThemeData | undefined;
        key?: IKey | undefined;
        leading?: IWidget | undefined;
        leadingWidth?: number | undefined;
        onStretchTrigger?: () => IFuture<void> | undefined;
        pinned?: boolean;
        primary?: boolean;
        shadowColor?: IColor | undefined;
        shape?: IShapeBorder | undefined;
        snap?: boolean;
        stretch?: boolean;
        stretchTriggerOffset?: number;
        systemOverlayStyle?: ISystemUiOverlayStyle | undefined;
        textTheme?: ITextTheme | undefined;
        title?: IWidget | undefined;
        titleSpacing?: number | undefined;
        titleTextStyle?: ITextStyle | undefined;
        toolbarHeight: number;
        toolbarTextStyle?: ITextStyle | undefined;
    }) {
        flutter.material.sliverAppBar(this, {
            ...sliverAppBarDefaultProps,
            ...props,
        });
    }
    private readonly _dart_createState: () => IState<ISliverAppBar> =
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
    public createState(): IState<ISliverAppBar> {
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
const sliverAppBarDefaultProps = {
    automaticallyImplyLeading: true,
    excludeHeaderSemantics: false,
    floating: false,
    forceElevated: false,
    pinned: false,
    primary: true,
    snap: false,
    stretch: false,
    stretchTriggerOffset: 100.0,
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
