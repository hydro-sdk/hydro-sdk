import { IList } from "../../dart/core/list";
import { IColor } from "../../dart/ui/color";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import { IValueListenable } from "../foundation/valueListenable";
import { DragStartBehavior } from "../gestures/dragStartBehavior";
import { IBuildContext } from "../widgets/buildContext";
import { IPreferredSizeWidget } from "../widgets/preferredSizeWidget";
import { IState } from "../widgets/state";
import { IStatefulElement } from "../widgets/statefulElement";
import { IStatefulWidget } from "../widgets/statefulWidget";
import { IWidget } from "../widgets/widget";
import { IFloatingActionButtonAnimator } from "./floatingActionButtonAnimator";
import { IFloatingActionButtonLocation } from "./floatingActionButtonLocation";
import { IScaffoldGeometry } from "./scaffoldGeometry";
import { IScaffoldState } from "./scaffoldState";
declare const flutter: {
    material: {
        scaffold: (
            this: void,
            scaffold: IScaffold,
            props: {
                appBar?: IPreferredSizeWidget | undefined;
                backgroundColor?: IColor | undefined;
                body?: IWidget | undefined;
                bottomNavigationBar?: IWidget | undefined;
                bottomSheet?: IWidget | undefined;
                drawer?: IWidget | undefined;
                drawerDragStartBehavior: DragStartBehavior;
                drawerEdgeDragWidth?: number | undefined;
                drawerEnableOpenDragGesture: boolean;
                drawerScrimColor?: IColor | undefined;
                endDrawer?: IWidget | undefined;
                endDrawerEnableOpenDragGesture: boolean;
                extendBody: boolean;
                extendBodyBehindAppBar: boolean;
                floatingActionButton?: IWidget | undefined;
                floatingActionButtonAnimator?:
                    | IFloatingActionButtonAnimator
                    | undefined;
                floatingActionButtonLocation?:
                    | IFloatingActionButtonLocation
                    | undefined;
                key?: IKey | undefined;
                onDrawerChanged?: (isOpened: boolean) => void | undefined;
                onEndDrawerChanged?: (isOpened: boolean) => void | undefined;
                persistentFooterButtons?: IList<IWidget> | undefined;
                primary: boolean;
                resizeToAvoidBottomInset?: boolean | undefined;
                restorationId?: string | undefined;
            }
        ) => IScaffold;
        scaffoldOf: (context: IBuildContext) => IScaffoldState;
        scaffoldMaybeOf: (context: IBuildContext) => IScaffoldState | undefined;
        scaffoldGeometryOf: (
            context: IBuildContext
        ) => IValueListenable<IScaffoldGeometry>;
        scaffoldHasDrawer: (
            context: IBuildContext,
            props: { registerForUpdates: boolean }
        ) => boolean;
    };
};
export interface IScaffold {
    extendBody: boolean;
    extendBodyBehindAppBar: boolean;
    appBar: IPreferredSizeWidget | undefined;
    body: IWidget | undefined;
    floatingActionButton: IWidget | undefined;
    floatingActionButtonLocation: IFloatingActionButtonLocation | undefined;
    floatingActionButtonAnimator: IFloatingActionButtonAnimator | undefined;
    persistentFooterButtons: IList<IWidget> | undefined;
    drawer: IWidget | undefined;
    endDrawer: IWidget | undefined;
    drawerScrimColor: IColor | undefined;
    backgroundColor: IColor | undefined;
    bottomNavigationBar: IWidget | undefined;
    bottomSheet: IWidget | undefined;
    resizeToAvoidBottomInset: boolean | undefined;
    primary: boolean;
    drawerDragStartBehavior: DragStartBehavior;
    drawerEdgeDragWidth: number | undefined;
    drawerEnableOpenDragGesture: boolean;
    endDrawerEnableOpenDragGesture: boolean;
    restorationId: string | undefined;
    key: IKey | undefined;
    createState: () => IScaffoldState;
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
export class Scaffold implements IStatefulWidget, IDiagnosticable {
    public readonly extendBody: boolean = undefined as any;
    public readonly extendBodyBehindAppBar: boolean = undefined as any;
    public readonly appBar: IPreferredSizeWidget | undefined = undefined as any;
    public readonly body: IWidget | undefined = undefined as any;
    public readonly floatingActionButton: IWidget | undefined =
        undefined as any;
    public readonly floatingActionButtonLocation:
        | IFloatingActionButtonLocation
        | undefined = undefined as any;
    public readonly floatingActionButtonAnimator:
        | IFloatingActionButtonAnimator
        | undefined = undefined as any;
    public readonly persistentFooterButtons: IList<IWidget> | undefined =
        undefined as any;
    public readonly drawer: IWidget | undefined = undefined as any;
    public readonly endDrawer: IWidget | undefined = undefined as any;
    public readonly drawerScrimColor: IColor | undefined = undefined as any;
    public readonly backgroundColor: IColor | undefined = undefined as any;
    public readonly bottomNavigationBar: IWidget | undefined = undefined as any;
    public readonly bottomSheet: IWidget | undefined = undefined as any;
    public readonly resizeToAvoidBottomInset: boolean | undefined =
        undefined as any;
    public readonly primary: boolean = undefined as any;
    public readonly drawerDragStartBehavior: DragStartBehavior =
        undefined as any;
    public readonly drawerEdgeDragWidth: number | undefined = undefined as any;
    public readonly drawerEnableOpenDragGesture: boolean = undefined as any;
    public readonly endDrawerEnableOpenDragGesture: boolean = undefined as any;
    public readonly restorationId: string | undefined = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        appBar?: IPreferredSizeWidget | undefined;
        backgroundColor?: IColor | undefined;
        body?: IWidget | undefined;
        bottomNavigationBar?: IWidget | undefined;
        bottomSheet?: IWidget | undefined;
        drawer?: IWidget | undefined;
        drawerDragStartBehavior?: DragStartBehavior;
        drawerEdgeDragWidth?: number | undefined;
        drawerEnableOpenDragGesture?: boolean;
        drawerScrimColor?: IColor | undefined;
        endDrawer?: IWidget | undefined;
        endDrawerEnableOpenDragGesture?: boolean;
        extendBody?: boolean;
        extendBodyBehindAppBar?: boolean;
        floatingActionButton?: IWidget | undefined;
        floatingActionButtonAnimator?:
            | IFloatingActionButtonAnimator
            | undefined;
        floatingActionButtonLocation?:
            | IFloatingActionButtonLocation
            | undefined;
        key?: IKey | undefined;
        onDrawerChanged?: (isOpened: boolean) => void | undefined;
        onEndDrawerChanged?: (isOpened: boolean) => void | undefined;
        persistentFooterButtons?: IList<IWidget> | undefined;
        primary?: boolean;
        resizeToAvoidBottomInset?: boolean | undefined;
        restorationId?: string | undefined;
    }) {
        flutter.material.scaffold(this, {
            ...scaffoldDefaultProps,
            ...props,
        });
    }
    public static of(context: IBuildContext): IScaffoldState {
        return flutter.material.scaffoldOf(context);
    }
    public static maybeOf(context: IBuildContext): IScaffoldState | undefined {
        return flutter.material.scaffoldMaybeOf(context);
    }
    public static geometryOf(
        context: IBuildContext
    ): IValueListenable<IScaffoldGeometry> {
        return flutter.material.scaffoldGeometryOf(context);
    }
    public static hasDrawer(
        context: IBuildContext,
        props: { registerForUpdates?: boolean }
    ): boolean {
        return flutter.material.scaffoldHasDrawer(context, {
            ...hasDrawerDefaultProps,
            ...props,
        });
    }
    private readonly _dart_createState: () => IScaffoldState = undefined as any;
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
    public createState(): IScaffoldState {
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
const scaffoldDefaultProps = {
    drawerDragStartBehavior: DragStartBehavior.start,
    drawerEnableOpenDragGesture: true,
    endDrawerEnableOpenDragGesture: true,
    extendBody: false,
    extendBodyBehindAppBar: false,
    primary: true,
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
const hasDrawerDefaultProps = {
    registerForUpdates: true,
};
