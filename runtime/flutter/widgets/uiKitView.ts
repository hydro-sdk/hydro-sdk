import { IList } from "../../dart/core/list";
import { ISet } from "../../dart/core/set";
import { TextDirection } from "../../dart/ui/textDirection";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IFactory } from "../foundation/factory";
import { IKey } from "../foundation/key";
import { IOneSequenceGestureRecognizer } from "../gestures/oneSequenceGestureRecognizer";
import { PlatformViewHitTestBehavior } from "../rendering/platformViewHitTestBehavior";
import { IMessageCodec } from "../services/messageCodec";
import { IState } from "./state";
import { IStatefulElement } from "./statefulElement";
import { IStatefulWidget } from "./statefulWidget";
declare const flutter: {
    widgets: {
        uiKitView: (
            this: void,
            uiKitView: IUiKitView,
            props: {
                creationParams: any;
                creationParamsCodec?: IMessageCodec<any> | undefined;
                gestureRecognizers?:
                    | ISet<IFactory<IOneSequenceGestureRecognizer>>
                    | undefined;
                hitTestBehavior: PlatformViewHitTestBehavior;
                key?: IKey | undefined;
                layoutDirection?: TextDirection | undefined;
                onPlatformViewCreated?: (id: number) => void | undefined;
                viewType: string;
            }
        ) => IUiKitView;
    };
};
export interface IUiKitView {
    viewType: string;
    hitTestBehavior: PlatformViewHitTestBehavior;
    layoutDirection: TextDirection | undefined;
    creationParamsCodec: IMessageCodec<any> | undefined;
    gestureRecognizers:
        | ISet<IFactory<IOneSequenceGestureRecognizer>>
        | undefined;
    key: IKey | undefined;
    createState: () => IState<IUiKitView>;
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
export class UiKitView implements IStatefulWidget, IDiagnosticable {
    public readonly viewType: string = undefined as any;
    public readonly hitTestBehavior: PlatformViewHitTestBehavior =
        undefined as any;
    public readonly layoutDirection: TextDirection | undefined =
        undefined as any;
    public readonly creationParamsCodec: IMessageCodec<any> | undefined =
        undefined as any;
    public readonly gestureRecognizers:
        | ISet<IFactory<IOneSequenceGestureRecognizer>>
        | undefined = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        creationParams: any;
        creationParamsCodec?: IMessageCodec<any> | undefined;
        gestureRecognizers?:
            | ISet<IFactory<IOneSequenceGestureRecognizer>>
            | undefined;
        hitTestBehavior?: PlatformViewHitTestBehavior;
        key?: IKey | undefined;
        layoutDirection?: TextDirection | undefined;
        onPlatformViewCreated?: (id: number) => void | undefined;
        viewType: string;
    }) {
        flutter.widgets.uiKitView(this, {
            ...uiKitViewDefaultProps,
            ...props,
        });
    }
    private readonly _dart_createState: () => IState<IUiKitView> =
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
    public createState(): IState<IUiKitView> {
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
const uiKitViewDefaultProps = {
    hitTestBehavior: PlatformViewHitTestBehavior.opaque,
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
