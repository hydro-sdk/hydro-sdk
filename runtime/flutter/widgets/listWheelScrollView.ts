import { IList } from "../../dart/core/list";
import { Clip } from "../../dart/ui/clip";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import { RenderListWheelViewport } from "../rendering/renderListWheelViewport";
import { IListWheelChildDelegate } from "./listWheelChildDelegate";
import { IScrollBehavior } from "./scrollBehavior";
import { IScrollController } from "./scrollController";
import { IScrollPhysics } from "./scrollPhysics";
import { IState } from "./state";
import { IStatefulElement } from "./statefulElement";
import { IStatefulWidget } from "./statefulWidget";
import { IWidget } from "./widget";
declare const flutter: {
    widgets: {
        listWheelScrollView: (
            this: void,
            listWheelScrollView: IListWheelScrollView,
            props: {
                clipBehavior: Clip;
                controller?: IScrollController | undefined;
                diameterRatio: number;
                key?: IKey | undefined;
                magnification: number;
                offAxisFraction: number;
                onSelectedItemChanged?: (value: number) => void | undefined;
                overAndUnderCenterOpacity: number;
                perspective: number;
                physics?: IScrollPhysics | undefined;
                renderChildrenOutsideViewport: boolean;
                restorationId?: string | undefined;
                scrollBehavior?: IScrollBehavior | undefined;
                squeeze: number;
                useMagnifier: boolean;
                children: IList<IWidget>;
                itemExtent: number;
            }
        ) => IListWheelScrollView;
    };
};
export interface IListWheelScrollView {
    controller: IScrollController | undefined;
    physics: IScrollPhysics | undefined;
    diameterRatio: number;
    perspective: number;
    offAxisFraction: number;
    useMagnifier: boolean;
    magnification: number;
    overAndUnderCenterOpacity: number;
    itemExtent: number;
    squeeze: number;
    renderChildrenOutsideViewport: boolean;
    childDelegate: IListWheelChildDelegate;
    clipBehavior: Clip;
    restorationId: string | undefined;
    scrollBehavior: IScrollBehavior | undefined;
    key: IKey | undefined;
    createState: () => IState<IListWheelScrollView>;
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
export class ListWheelScrollView implements IStatefulWidget, IDiagnosticable {
    public readonly controller: IScrollController | undefined =
        undefined as any;
    public readonly physics: IScrollPhysics | undefined = undefined as any;
    public readonly diameterRatio: number = undefined as any;
    public readonly perspective: number = undefined as any;
    public readonly offAxisFraction: number = undefined as any;
    public readonly useMagnifier: boolean = undefined as any;
    public readonly magnification: number = undefined as any;
    public readonly overAndUnderCenterOpacity: number = undefined as any;
    public readonly itemExtent: number = undefined as any;
    public readonly squeeze: number = undefined as any;
    public readonly renderChildrenOutsideViewport: boolean = undefined as any;
    public readonly childDelegate: IListWheelChildDelegate = undefined as any;
    public readonly clipBehavior: Clip = undefined as any;
    public readonly restorationId: string | undefined = undefined as any;
    public readonly scrollBehavior: IScrollBehavior | undefined =
        undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        clipBehavior?: Clip;
        controller?: IScrollController | undefined;
        diameterRatio?: number;
        key?: IKey | undefined;
        magnification?: number;
        offAxisFraction?: number;
        onSelectedItemChanged?: (value: number) => void | undefined;
        overAndUnderCenterOpacity?: number;
        perspective?: number;
        physics?: IScrollPhysics | undefined;
        renderChildrenOutsideViewport?: boolean;
        restorationId?: string | undefined;
        scrollBehavior?: IScrollBehavior | undefined;
        squeeze?: number;
        useMagnifier?: boolean;
        children: IList<IWidget>;
        itemExtent: number;
    }) {
        flutter.widgets.listWheelScrollView(this, {
            ...listWheelScrollViewDefaultProps,
            ...props,
        });
    }
    private readonly _dart_createState: () => IState<IListWheelScrollView> =
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
    public createState(): IState<IListWheelScrollView> {
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
const listWheelScrollViewDefaultProps = {
    clipBehavior: Clip.hardEdge,
    diameterRatio: RenderListWheelViewport.defaultDiameterRatio,
    magnification: 1.0,
    offAxisFraction: 0.0,
    overAndUnderCenterOpacity: 1.0,
    perspective: RenderListWheelViewport.defaultPerspective,
    renderChildrenOutsideViewport: false,
    squeeze: 1.0,
    useMagnifier: false,
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
