import { IList } from "../../dart/core/list";
import { Clip } from "../../dart/ui/clip";
import { IAnimation } from "../animation/animation";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import { DragStartBehavior } from "../gestures/dragStartBehavior";
import { Axis } from "../painting/axis";
import { IEdgeInsets } from "../painting/edgeInsets";
import { IScrollController } from "../widgets/scrollController";
import { IScrollPhysics } from "../widgets/scrollPhysics";
import { ScrollViewKeyboardDismissBehavior } from "../widgets/scrollViewKeyboardDismissBehavior";
import { IState } from "../widgets/state";
import { IStatefulElement } from "../widgets/statefulElement";
import { IStatefulWidget } from "../widgets/statefulWidget";
import { IWidget } from "../widgets/widget";
declare const flutter: {
    material: {
        reorderableListView: (
            this: void,
            reorderableListView: IReorderableListView,
            props: {
                anchor: number;
                buildDefaultDragHandles: boolean;
                cacheExtent?: number | undefined;
                clipBehavior: Clip;
                dragStartBehavior: DragStartBehavior;
                header?: IWidget | undefined;
                itemExtent?: number | undefined;
                key?: IKey | undefined;
                keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior;
                padding?: IEdgeInsets | undefined;
                physics?: IScrollPhysics | undefined;
                primary?: boolean | undefined;
                prototypeItem?: IWidget | undefined;
                proxyDecorator?: (
                    child: IWidget,
                    index: number,
                    animation: IAnimation<number>
                ) => IWidget | undefined;
                restorationId?: string | undefined;
                reverse: boolean;
                scrollController?: IScrollController | undefined;
                scrollDirection: Axis;
                shrinkWrap: boolean;
                children: IList<IWidget>;
                onReorder: (oldIndex: number, newIndex: number) => void;
            }
        ) => IReorderableListView;
    };
};
export interface IReorderableListView {
    itemCount: number;
    buildDefaultDragHandles: boolean;
    padding: IEdgeInsets | undefined;
    header: IWidget | undefined;
    scrollDirection: Axis;
    reverse: boolean;
    scrollController: IScrollController | undefined;
    primary: boolean | undefined;
    physics: IScrollPhysics | undefined;
    shrinkWrap: boolean;
    anchor: number;
    cacheExtent: number | undefined;
    dragStartBehavior: DragStartBehavior;
    keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior;
    restorationId: string | undefined;
    clipBehavior: Clip;
    itemExtent: number | undefined;
    prototypeItem: IWidget | undefined;
    key: IKey | undefined;
    createState: () => IState<IReorderableListView>;
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
export class ReorderableListView implements IStatefulWidget, IDiagnosticable {
    public readonly itemCount: number = undefined as any;
    public readonly buildDefaultDragHandles: boolean = undefined as any;
    public readonly padding: IEdgeInsets | undefined = undefined as any;
    public readonly header: IWidget | undefined = undefined as any;
    public readonly scrollDirection: Axis = undefined as any;
    public readonly reverse: boolean = undefined as any;
    public readonly scrollController: IScrollController | undefined =
        undefined as any;
    public readonly primary: boolean | undefined = undefined as any;
    public readonly physics: IScrollPhysics | undefined = undefined as any;
    public readonly shrinkWrap: boolean = undefined as any;
    public readonly anchor: number = undefined as any;
    public readonly cacheExtent: number | undefined = undefined as any;
    public readonly dragStartBehavior: DragStartBehavior = undefined as any;
    public readonly keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior =
        undefined as any;
    public readonly restorationId: string | undefined = undefined as any;
    public readonly clipBehavior: Clip = undefined as any;
    public readonly itemExtent: number | undefined = undefined as any;
    public readonly prototypeItem: IWidget | undefined = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        anchor?: number;
        buildDefaultDragHandles?: boolean;
        cacheExtent?: number | undefined;
        clipBehavior?: Clip;
        dragStartBehavior?: DragStartBehavior;
        header?: IWidget | undefined;
        itemExtent?: number | undefined;
        key?: IKey | undefined;
        keyboardDismissBehavior?: ScrollViewKeyboardDismissBehavior;
        padding?: IEdgeInsets | undefined;
        physics?: IScrollPhysics | undefined;
        primary?: boolean | undefined;
        prototypeItem?: IWidget | undefined;
        proxyDecorator?: (
            child: IWidget,
            index: number,
            animation: IAnimation<number>
        ) => IWidget | undefined;
        restorationId?: string | undefined;
        reverse?: boolean;
        scrollController?: IScrollController | undefined;
        scrollDirection?: Axis;
        shrinkWrap?: boolean;
        children: IList<IWidget>;
        onReorder: (oldIndex: number, newIndex: number) => void;
    }) {
        flutter.material.reorderableListView(this, {
            ...reorderableListViewDefaultProps,
            ...props,
        });
    }
    private readonly _dart_createState: () => IState<IReorderableListView> =
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
    public createState(): IState<IReorderableListView> {
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
const reorderableListViewDefaultProps = {
    anchor: 0.0,
    buildDefaultDragHandles: true,
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
