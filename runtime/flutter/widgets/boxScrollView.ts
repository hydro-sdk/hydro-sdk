import { IList } from "../../dart/core/list";
import { Clip } from "../../dart/ui/clip";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import { DragStartBehavior } from "../gestures/dragStartBehavior";
import { Axis } from "../painting/axis";
import { AxisDirection } from "../painting/axisDirection";
import { IEdgeInsetsGeometry } from "../painting/edgeInsetsGeometry";
import { IViewportOffset } from "../rendering/viewportOffset";
import { IBuildContext } from "./buildContext";
import { IScrollBehavior } from "./scrollBehavior";
import { IScrollController } from "./scrollController";
import { IScrollPhysics } from "./scrollPhysics";
import { IScrollView } from "./scrollView";
import { ScrollViewKeyboardDismissBehavior } from "./scrollViewKeyboardDismissBehavior";
import { IStatelessElement } from "./statelessElement";
import { IWidget } from "./widget";
declare const flutter: {
    widgets: {
        boxScrollView: (
            this: void,
            boxScrollView: IBoxScrollView,
            props: {
                cacheExtent?: number | undefined;
                clipBehavior: Clip;
                controller?: IScrollController | undefined;
                dragStartBehavior: DragStartBehavior;
                key?: IKey | undefined;
                keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior;
                padding?: IEdgeInsetsGeometry | undefined;
                physics?: IScrollPhysics | undefined;
                primary?: boolean | undefined;
                restorationId?: string | undefined;
                reverse: boolean;
                scrollDirection: Axis;
                semanticChildCount?: number | undefined;
                shrinkWrap: boolean;
            }
        ) => IBoxScrollView;
    };
};
export interface IBoxScrollView {
    padding: IEdgeInsetsGeometry | undefined;
    scrollDirection: Axis;
    reverse: boolean;
    controller: IScrollController | undefined;
    primary: boolean;
    physics: IScrollPhysics | undefined;
    scrollBehavior: IScrollBehavior | undefined;
    shrinkWrap: boolean;
    center: IKey | undefined;
    anchor: number;
    cacheExtent: number | undefined;
    semanticChildCount: number | undefined;
    dragStartBehavior: DragStartBehavior;
    keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior;
    restorationId: string | undefined;
    clipBehavior: Clip;
    key: IKey | undefined;
    buildSlivers: (context: IBuildContext) => IList<IWidget>;
    buildChildLayout: (context: IBuildContext) => IWidget;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    getDirection: (context: IBuildContext) => AxisDirection;
    buildViewport: (
        context: IBuildContext,
        offset: IViewportOffset,
        axisDirection: AxisDirection,
        slivers: IList<IWidget>
    ) => IWidget;
    build: (context: IBuildContext) => IWidget;
    createElement: () => IStatelessElement;
    toStringShort: () => string;
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
export class BoxScrollView implements IScrollView, IDiagnosticable {
    public readonly padding: IEdgeInsetsGeometry | undefined = undefined as any;
    public readonly scrollDirection: Axis = undefined as any;
    public readonly reverse: boolean = undefined as any;
    public readonly controller: IScrollController | undefined =
        undefined as any;
    public readonly primary: boolean = undefined as any;
    public readonly physics: IScrollPhysics | undefined = undefined as any;
    public readonly scrollBehavior: IScrollBehavior | undefined =
        undefined as any;
    public readonly shrinkWrap: boolean = undefined as any;
    public readonly center: IKey | undefined = undefined as any;
    public readonly anchor: number = undefined as any;
    public readonly cacheExtent: number | undefined = undefined as any;
    public readonly semanticChildCount: number | undefined = undefined as any;
    public readonly dragStartBehavior: DragStartBehavior = undefined as any;
    public readonly keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior =
        undefined as any;
    public readonly restorationId: string | undefined = undefined as any;
    public readonly clipBehavior: Clip = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        cacheExtent?: number | undefined;
        clipBehavior?: Clip;
        controller?: IScrollController | undefined;
        dragStartBehavior?: DragStartBehavior;
        key?: IKey | undefined;
        keyboardDismissBehavior?: ScrollViewKeyboardDismissBehavior;
        padding?: IEdgeInsetsGeometry | undefined;
        physics?: IScrollPhysics | undefined;
        primary?: boolean | undefined;
        restorationId?: string | undefined;
        reverse?: boolean;
        scrollDirection?: Axis;
        semanticChildCount?: number | undefined;
        shrinkWrap?: boolean;
    }) {
        flutter.widgets.boxScrollView(this, {
            ...boxScrollViewDefaultProps,
            ...props,
        });
    }
    private readonly _dart_buildSlivers: (
        context: IBuildContext
    ) => IList<IWidget> = undefined as any;
    private readonly _dart_buildChildLayout: (
        context: IBuildContext
    ) => IWidget = undefined as any;
    private readonly _dart_debugFillProperties: (
        properties: IDiagnosticPropertiesBuilder
    ) => void = undefined as any;
    private readonly _dart_getDirection: (
        context: IBuildContext
    ) => AxisDirection = undefined as any;
    private readonly _dart_buildViewport: (
        context: IBuildContext,
        offset: IViewportOffset,
        axisDirection: AxisDirection,
        slivers: IList<IWidget>
    ) => IWidget = undefined as any;
    private readonly _dart_build: (context: IBuildContext) => IWidget =
        undefined as any;
    private readonly _dart_createElement: () => IStatelessElement =
        undefined as any;
    private readonly _dart_toStringShort: () => string = undefined as any;
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
    public buildSlivers(context: IBuildContext): IList<IWidget> {
        return this._dart_buildSlivers(context);
    }
    public buildChildLayout(context: IBuildContext): IWidget {
        return this._dart_buildChildLayout(context);
    }
    public debugFillProperties(properties: IDiagnosticPropertiesBuilder): void {
        return this._dart_debugFillProperties(properties);
    }
    public getDirection(context: IBuildContext): AxisDirection {
        return this._dart_getDirection(context);
    }
    public buildViewport(
        context: IBuildContext,
        offset: IViewportOffset,
        axisDirection: AxisDirection,
        slivers: IList<IWidget>
    ): IWidget {
        return this._dart_buildViewport(
            context,
            offset,
            axisDirection,
            slivers
        );
    }
    public build(context: IBuildContext): IWidget {
        return this._dart_build(context);
    }
    public createElement(): IStatelessElement {
        return this._dart_createElement();
    }
    public toStringShort(): string {
        return this._dart_toStringShort();
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
const boxScrollViewDefaultProps = {
    clipBehavior: Clip.hardEdge,
    dragStartBehavior: DragStartBehavior.start,
    keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.manual,
    reverse: false,
    scrollDirection: Axis.vertical,
    shrinkWrap: false,
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
