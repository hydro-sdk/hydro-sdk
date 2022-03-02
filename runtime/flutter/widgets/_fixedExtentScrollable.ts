import { IList } from "../../dart/core/list";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import { DragStartBehavior } from "../gestures/dragStartBehavior";
import { Axis } from "../painting/axis";
import { AxisDirection } from "../painting/axisDirection";
import { IViewportOffset } from "../rendering/viewportOffset";
import { I_FixedExtentScrollableState } from "./_fixedExtentScrollableState";
import { IBuildContext } from "./buildContext";
import { IScrollable } from "./scrollable";
import { IScrollableState } from "./scrollableState";
import { IScrollBehavior } from "./scrollBehavior";
import { IScrollController } from "./scrollController";
import { IScrollIncrementDetails } from "./scrollIncrementDetails";
import { IScrollPhysics } from "./scrollPhysics";
import { IStatefulElement } from "./statefulElement";
import { IWidget } from "./widget";
declare const flutter: {
    widgets: {
        _fixedExtentScrollable: (
            this: void,
            _fixedExtentScrollable: I_FixedExtentScrollable,
            props: {
                axisDirection: AxisDirection;
                controller?: IScrollController | undefined;
                key?: IKey | undefined;
                physics?: IScrollPhysics | undefined;
                restorationId?: string | undefined;
                scrollBehavior?: IScrollBehavior | undefined;
                itemExtent: number;
                viewportBuilder: (
                    context: IBuildContext,
                    position: IViewportOffset
                ) => IWidget;
            }
        ) => I_FixedExtentScrollable;
    };
};
export interface I_FixedExtentScrollable {
    itemExtent: number;
    axisDirection: AxisDirection;
    controller: IScrollController | undefined;
    physics: IScrollPhysics | undefined;
    viewportBuilder: (
        context: IBuildContext,
        position: IViewportOffset
    ) => IWidget;
    incrementCalculator: (
        details: IScrollIncrementDetails
    ) => number | undefined;
    excludeFromSemantics: boolean;
    semanticChildCount: number | undefined;
    dragStartBehavior: DragStartBehavior;
    restorationId: string | undefined;
    scrollBehavior: IScrollBehavior | undefined;
    key: IKey | undefined;
    createState: () => I_FixedExtentScrollableState;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    getAxis: () => Axis;
    createElement: () => IStatefulElement;
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
export class _FixedExtentScrollable implements IScrollable, IDiagnosticable {
    public readonly itemExtent: number = undefined as any;
    public readonly axisDirection: AxisDirection = undefined as any;
    public readonly controller: IScrollController | undefined =
        undefined as any;
    public readonly physics: IScrollPhysics | undefined = undefined as any;
    public readonly viewportBuilder: (
        context: IBuildContext,
        position: IViewportOffset
    ) => IWidget = undefined as any;
    public readonly incrementCalculator: (
        details: IScrollIncrementDetails
    ) => number | undefined = undefined as any;
    public readonly excludeFromSemantics: boolean = undefined as any;
    public readonly semanticChildCount: number | undefined = undefined as any;
    public readonly dragStartBehavior: DragStartBehavior = undefined as any;
    public readonly restorationId: string | undefined = undefined as any;
    public readonly scrollBehavior: IScrollBehavior | undefined =
        undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        axisDirection?: AxisDirection;
        controller?: IScrollController | undefined;
        key?: IKey | undefined;
        physics?: IScrollPhysics | undefined;
        restorationId?: string | undefined;
        scrollBehavior?: IScrollBehavior | undefined;
        itemExtent: number;
        viewportBuilder: (
            context: IBuildContext,
            position: IViewportOffset
        ) => IWidget;
    }) {
        flutter.widgets._fixedExtentScrollable(this, {
            ..._fixedExtentScrollableDefaultProps,
            ...props,
        });
    }
    private readonly _dart_createState: () => I_FixedExtentScrollableState =
        undefined as any;
    private readonly _dart_debugFillProperties: (
        properties: IDiagnosticPropertiesBuilder
    ) => void = undefined as any;
    private readonly _dart_getAxis: () => Axis = undefined as any;
    private readonly _dart_createElement: () => IStatefulElement =
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
    public createState(): I_FixedExtentScrollableState {
        return this._dart_createState();
    }
    public debugFillProperties(properties: IDiagnosticPropertiesBuilder): void {
        return this._dart_debugFillProperties(properties);
    }
    public getAxis(): Axis {
        return this._dart_getAxis();
    }
    public createElement(): IStatefulElement {
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
const _fixedExtentScrollableDefaultProps = {
    axisDirection: AxisDirection.down,
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
