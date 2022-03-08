import { IList } from "../../dart/core/list";
import { IColor } from "../../dart/ui/color";
import { ISize } from "../../dart/ui/size";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import { DragStartBehavior } from "../gestures/dragStartBehavior";
import { IDecoration } from "../painting/decoration";
import { EdgeInsets } from "../painting/edgeInsets";
import { IEdgeInsetsGeometry } from "../painting/edgeInsetsGeometry";
import { ITextStyle } from "../painting/textStyle";
import { IMouseCursor } from "../services/mouseCursor";
import { IPreferredSizeWidget } from "../widgets/preferredSizeWidget";
import { IScrollPhysics } from "../widgets/scrollPhysics";
import { IState } from "../widgets/state";
import { IStatefulElement } from "../widgets/statefulElement";
import { IStatefulWidget } from "../widgets/statefulWidget";
import { IWidget } from "../widgets/widget";
import { IMaterialStateProperty } from "./materialStateProperty";
import { TabBarIndicatorSize } from "./tabBarIndicatorSize";
import { ITabController } from "./tabController";
declare const flutter: {
    material: {
        tabBar: (
            this: void,
            tabBar: ITabBar,
            props: {
                automaticIndicatorColorAdjustment: boolean;
                controller?: ITabController | undefined;
                dragStartBehavior: DragStartBehavior;
                enableFeedback?: boolean | undefined;
                indicator?: IDecoration | undefined;
                indicatorColor?: IColor | undefined;
                indicatorPadding: IEdgeInsetsGeometry;
                indicatorSize?: TabBarIndicatorSize | undefined;
                indicatorWeight: number;
                isScrollable: boolean;
                key?: IKey | undefined;
                labelColor?: IColor | undefined;
                labelPadding?: IEdgeInsetsGeometry | undefined;
                labelStyle?: ITextStyle | undefined;
                mouseCursor?: IMouseCursor | undefined;
                onTap?: (value: number) => void | undefined;
                overlayColor?:
                    | IMaterialStateProperty<IColor | undefined>
                    | undefined;
                padding?: IEdgeInsetsGeometry | undefined;
                physics?: IScrollPhysics | undefined;
                unselectedLabelColor?: IColor | undefined;
                unselectedLabelStyle?: ITextStyle | undefined;
                tabs: IList<IWidget>;
            }
        ) => ITabBar;
    };
};
export interface ITabBar {
    tabs: IList<IWidget>;
    controller: ITabController | undefined;
    isScrollable: boolean;
    padding: IEdgeInsetsGeometry | undefined;
    indicatorColor: IColor | undefined;
    indicatorWeight: number;
    indicatorPadding: IEdgeInsetsGeometry;
    indicator: IDecoration | undefined;
    automaticIndicatorColorAdjustment: boolean;
    indicatorSize: TabBarIndicatorSize | undefined;
    labelColor: IColor | undefined;
    unselectedLabelColor: IColor | undefined;
    labelStyle: ITextStyle | undefined;
    labelPadding: IEdgeInsetsGeometry | undefined;
    unselectedLabelStyle: ITextStyle | undefined;
    overlayColor: IMaterialStateProperty<IColor | undefined> | undefined;
    dragStartBehavior: DragStartBehavior;
    mouseCursor: IMouseCursor | undefined;
    enableFeedback: boolean | undefined;
    physics: IScrollPhysics | undefined;
    key: IKey | undefined;
    getPreferredSize: () => ISize;
    getTabHasTextAndIcon: () => boolean;
    createState: () => IState<ITabBar>;
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
export class TabBar
    implements IStatefulWidget, IDiagnosticable, IPreferredSizeWidget, IWidget
{
    public readonly tabs: IList<IWidget> = undefined as any;
    public readonly controller: ITabController | undefined = undefined as any;
    public readonly isScrollable: boolean = undefined as any;
    public readonly padding: IEdgeInsetsGeometry | undefined = undefined as any;
    public readonly indicatorColor: IColor | undefined = undefined as any;
    public readonly indicatorWeight: number = undefined as any;
    public readonly indicatorPadding: IEdgeInsetsGeometry = undefined as any;
    public readonly indicator: IDecoration | undefined = undefined as any;
    public readonly automaticIndicatorColorAdjustment: boolean =
        undefined as any;
    public readonly indicatorSize: TabBarIndicatorSize | undefined =
        undefined as any;
    public readonly labelColor: IColor | undefined = undefined as any;
    public readonly unselectedLabelColor: IColor | undefined = undefined as any;
    public readonly labelStyle: ITextStyle | undefined = undefined as any;
    public readonly labelPadding: IEdgeInsetsGeometry | undefined =
        undefined as any;
    public readonly unselectedLabelStyle: ITextStyle | undefined =
        undefined as any;
    public readonly overlayColor:
        | IMaterialStateProperty<IColor | undefined>
        | undefined = undefined as any;
    public readonly dragStartBehavior: DragStartBehavior = undefined as any;
    public readonly mouseCursor: IMouseCursor | undefined = undefined as any;
    public readonly enableFeedback: boolean | undefined = undefined as any;
    public readonly physics: IScrollPhysics | undefined = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        automaticIndicatorColorAdjustment?: boolean;
        controller?: ITabController | undefined;
        dragStartBehavior?: DragStartBehavior;
        enableFeedback?: boolean | undefined;
        indicator?: IDecoration | undefined;
        indicatorColor?: IColor | undefined;
        indicatorPadding?: IEdgeInsetsGeometry;
        indicatorSize?: TabBarIndicatorSize | undefined;
        indicatorWeight?: number;
        isScrollable?: boolean;
        key?: IKey | undefined;
        labelColor?: IColor | undefined;
        labelPadding?: IEdgeInsetsGeometry | undefined;
        labelStyle?: ITextStyle | undefined;
        mouseCursor?: IMouseCursor | undefined;
        onTap?: (value: number) => void | undefined;
        overlayColor?: IMaterialStateProperty<IColor | undefined> | undefined;
        padding?: IEdgeInsetsGeometry | undefined;
        physics?: IScrollPhysics | undefined;
        unselectedLabelColor?: IColor | undefined;
        unselectedLabelStyle?: ITextStyle | undefined;
        tabs: IList<IWidget>;
    }) {
        flutter.material.tabBar(this, {
            ...tabBarDefaultProps,
            ...props,
        });
    }
    private readonly _dart_getPreferredSize: () => ISize = undefined as any;
    private readonly _dart_getTabHasTextAndIcon: () => boolean =
        undefined as any;
    private readonly _dart_createState: () => IState<ITabBar> =
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
    public getPreferredSize(): ISize {
        return this._dart_getPreferredSize();
    }
    public getTabHasTextAndIcon(): boolean {
        return this._dart_getTabHasTextAndIcon();
    }
    public createState(): IState<ITabBar> {
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
const tabBarDefaultProps = {
    automaticIndicatorColorAdjustment: true,
    dragStartBehavior: DragStartBehavior.start,
    indicatorPadding: EdgeInsets.zero,
    indicatorWeight: 2.0,
    isScrollable: false,
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
