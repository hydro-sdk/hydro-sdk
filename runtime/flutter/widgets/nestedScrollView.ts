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
import { IBuildContext } from "./buildContext";
import { INestedScrollViewState } from "./nestedScrollViewState";
import { IScrollBehavior } from "./scrollBehavior";
import { IScrollController } from "./scrollController";
import { IScrollPhysics } from "./scrollPhysics";
import { ISliverOverlapAbsorberHandle } from "./sliverOverlapAbsorberHandle";
import { IState } from "./state";
import { IStatefulElement } from "./statefulElement";
import { IStatefulWidget } from "./statefulWidget";
import { IWidget } from "./widget";
declare const flutter: {
    widgets: {
        nestedScrollView: (
            this: void,
            nestedScrollView: INestedScrollView,
            props: {
                clipBehavior: Clip;
                controller?: IScrollController | undefined;
                dragStartBehavior: DragStartBehavior;
                floatHeaderSlivers: boolean;
                key?: IKey | undefined;
                physics?: IScrollPhysics | undefined;
                restorationId?: string | undefined;
                reverse: boolean;
                scrollBehavior?: IScrollBehavior | undefined;
                scrollDirection: Axis;
                body: IWidget;
                headerSliverBuilder: (
                    context: IBuildContext,
                    innerBoxIsScrolled: boolean
                ) => IList<IWidget>;
            }
        ) => INestedScrollView;
        nestedScrollViewSliverOverlapAbsorberHandleFor: (
            context: IBuildContext
        ) => ISliverOverlapAbsorberHandle;
    };
};
export interface INestedScrollView {
    controller: IScrollController | undefined;
    scrollDirection: Axis;
    reverse: boolean;
    physics: IScrollPhysics | undefined;
    body: IWidget;
    dragStartBehavior: DragStartBehavior;
    floatHeaderSlivers: boolean;
    clipBehavior: Clip;
    restorationId: string | undefined;
    scrollBehavior: IScrollBehavior | undefined;
    key: IKey | undefined;
    createState: () => INestedScrollViewState;
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
export class NestedScrollView implements IStatefulWidget, IDiagnosticable {
    public readonly controller: IScrollController | undefined =
        undefined as any;
    public readonly scrollDirection: Axis = undefined as any;
    public readonly reverse: boolean = undefined as any;
    public readonly physics: IScrollPhysics | undefined = undefined as any;
    public readonly body: IWidget = undefined as any;
    public readonly dragStartBehavior: DragStartBehavior = undefined as any;
    public readonly floatHeaderSlivers: boolean = undefined as any;
    public readonly clipBehavior: Clip = undefined as any;
    public readonly restorationId: string | undefined = undefined as any;
    public readonly scrollBehavior: IScrollBehavior | undefined =
        undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        clipBehavior?: Clip;
        controller?: IScrollController | undefined;
        dragStartBehavior?: DragStartBehavior;
        floatHeaderSlivers?: boolean;
        key?: IKey | undefined;
        physics?: IScrollPhysics | undefined;
        restorationId?: string | undefined;
        reverse?: boolean;
        scrollBehavior?: IScrollBehavior | undefined;
        scrollDirection?: Axis;
        body: IWidget;
        headerSliverBuilder: (
            context: IBuildContext,
            innerBoxIsScrolled: boolean
        ) => IList<IWidget>;
    }) {
        flutter.widgets.nestedScrollView(this, {
            ...nestedScrollViewDefaultProps,
            ...props,
        });
    }
    public static sliverOverlapAbsorberHandleFor(
        context: IBuildContext
    ): ISliverOverlapAbsorberHandle {
        return flutter.widgets.nestedScrollViewSliverOverlapAbsorberHandleFor(
            context
        );
    }
    private readonly _dart_createState: () => INestedScrollViewState =
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
    public createState(): INestedScrollViewState {
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
const nestedScrollViewDefaultProps = {
    clipBehavior: Clip.hardEdge,
    dragStartBehavior: DragStartBehavior.start,
    floatHeaderSlivers: false,
    reverse: false,
    scrollDirection: Axis.vertical,
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
