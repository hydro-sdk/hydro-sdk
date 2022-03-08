import { IFuture } from "../../dart/async/future";
import { IList } from "../../dart/core/list";
import { IColor } from "../../dart/ui/color";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import { IScrollNotification } from "../widgets/scrollNotification";
import { IState } from "../widgets/state";
import { IStatefulElement } from "../widgets/statefulElement";
import { IStatefulWidget } from "../widgets/statefulWidget";
import { IWidget } from "../widgets/widget";
import { IRefreshIndicatorState } from "./refreshIndicatorState";
import { RefreshIndicatorTriggerMode } from "./refreshIndicatorTriggerMode";
import { RefreshProgressIndicator } from "./refreshProgressIndicator";
declare const flutter: {
    material: {
        refreshIndicator: (
            this: void,
            refreshIndicator: IRefreshIndicator,
            props: {
                backgroundColor?: IColor | undefined;
                color?: IColor | undefined;
                displacement: number;
                edgeOffset: number;
                key?: IKey | undefined;
                notificationPredicate: (
                    notification: IScrollNotification
                ) => boolean;
                semanticsLabel?: string | undefined;
                semanticsValue?: string | undefined;
                strokeWidth: number;
                triggerMode: RefreshIndicatorTriggerMode;
                child: IWidget;
                onRefresh: () => IFuture<void>;
            }
        ) => IRefreshIndicator;
    };
};
export interface IRefreshIndicator {
    child: IWidget;
    displacement: number;
    edgeOffset: number;
    color: IColor | undefined;
    backgroundColor: IColor | undefined;
    semanticsLabel: string | undefined;
    semanticsValue: string | undefined;
    strokeWidth: number;
    triggerMode: RefreshIndicatorTriggerMode;
    key: IKey | undefined;
    createState: () => IRefreshIndicatorState;
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
export class RefreshIndicator implements IStatefulWidget, IDiagnosticable {
    public readonly child: IWidget = undefined as any;
    public readonly displacement: number = undefined as any;
    public readonly edgeOffset: number = undefined as any;
    public readonly color: IColor | undefined = undefined as any;
    public readonly backgroundColor: IColor | undefined = undefined as any;
    public readonly semanticsLabel: string | undefined = undefined as any;
    public readonly semanticsValue: string | undefined = undefined as any;
    public readonly strokeWidth: number = undefined as any;
    public readonly triggerMode: RefreshIndicatorTriggerMode = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        backgroundColor?: IColor | undefined;
        color?: IColor | undefined;
        displacement?: number;
        edgeOffset?: number;
        key?: IKey | undefined;
        notificationPredicate: (notification: IScrollNotification) => boolean;
        semanticsLabel?: string | undefined;
        semanticsValue?: string | undefined;
        strokeWidth?: number;
        triggerMode?: RefreshIndicatorTriggerMode;
        child: IWidget;
        onRefresh: () => IFuture<void>;
    }) {
        flutter.material.refreshIndicator(this, {
            ...refreshIndicatorDefaultProps,
            ...props,
        });
    }
    private readonly _dart_createState: () => IRefreshIndicatorState =
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
    public createState(): IRefreshIndicatorState {
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
const refreshIndicatorDefaultProps = {
    displacement: 40.0,
    edgeOffset: 0.0,
    strokeWidth: RefreshProgressIndicator.defaultStrokeWidth,
    triggerMode: RefreshIndicatorTriggerMode.onEdge,
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
