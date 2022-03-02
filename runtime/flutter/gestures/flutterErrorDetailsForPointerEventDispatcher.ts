import { IIterable } from "../../dart/core/iterable";
import { IStackTrace } from "../../dart/core/stackTrace";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IFlutterErrorDetails } from "../foundation/flutterErrorDetails";
import { IHitTestEntry } from "./hitTestEntry";
import { IPointerEvent } from "./pointerEvent";
declare const flutter: {
    gestures: {
        flutterErrorDetailsForPointerEventDispatcher: (
            this: void,
            flutterErrorDetailsForPointerEventDispatcher: IFlutterErrorDetailsForPointerEventDispatcher,
            props: {
                context?: IDiagnosticsNode | undefined;
                event?: IPointerEvent | undefined;
                hitTestEntry?: IHitTestEntry | undefined;
                informationCollector?: () =>
                    | IIterable<IDiagnosticsNode>
                    | undefined;
                library?: string | undefined;
                silent: boolean;
                stack?: IStackTrace | undefined;
                exception: Object;
            }
        ) => IFlutterErrorDetailsForPointerEventDispatcher;
    };
};
export interface IFlutterErrorDetailsForPointerEventDispatcher {
    event: IPointerEvent | undefined;
    hitTestEntry: IHitTestEntry | undefined;
    exception: Object;
    stack: IStackTrace | undefined;
    library: string | undefined;
    context: IDiagnosticsNode | undefined;
    stackFilter: (input: IIterable<string>) => IIterable<string> | undefined;
    informationCollector: () => IIterable<IDiagnosticsNode> | undefined;
    silent: boolean;
    copyWith: (props?: {
        context?: IDiagnosticsNode | undefined;
        exception?: Object | undefined;
        informationCollector?: () => IIterable<IDiagnosticsNode> | undefined;
        library?: string | undefined;
        silent?: boolean | undefined;
        stack?: IStackTrace | undefined;
        stackFilter?: (
            input: IIterable<string>
        ) => IIterable<string> | undefined;
    }) => IFlutterErrorDetails;
    exceptionAsString: () => string;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    toStringShort: () => string;
    toString: (props: { minLevel: DiagnosticLevel }) => string;
    toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode;
    getSummary: () => IDiagnosticsNode;
    getHashCode: () => number;
}
export class FlutterErrorDetailsForPointerEventDispatcher
    implements
        Omit<
            IFlutterErrorDetails,
            | "debugFillProperties"
            | "toStringShort"
            | "toString"
            | "toDiagnosticsNode"
        >,
        IDiagnosticable
{
    public readonly event: IPointerEvent | undefined = undefined as any;
    public readonly hitTestEntry: IHitTestEntry | undefined = undefined as any;
    public readonly exception: Object = undefined as any;
    public readonly stack: IStackTrace | undefined = undefined as any;
    public readonly library: string | undefined = undefined as any;
    public readonly context: IDiagnosticsNode | undefined = undefined as any;
    public readonly stackFilter: (
        input: IIterable<string>
    ) => IIterable<string> | undefined = undefined as any;
    public readonly informationCollector: () =>
        | IIterable<IDiagnosticsNode>
        | undefined = undefined as any;
    public readonly silent: boolean = undefined as any;
    public constructor(props: {
        context?: IDiagnosticsNode | undefined;
        event?: IPointerEvent | undefined;
        hitTestEntry?: IHitTestEntry | undefined;
        informationCollector?: () => IIterable<IDiagnosticsNode> | undefined;
        library?: string | undefined;
        silent?: boolean;
        stack?: IStackTrace | undefined;
        exception: Object;
    }) {
        flutter.gestures.flutterErrorDetailsForPointerEventDispatcher(this, {
            ...flutterErrorDetailsForPointerEventDispatcherDefaultProps,
            ...props,
        });
    }
    private readonly _dart_copyWith: (props?: {
        context?: IDiagnosticsNode | undefined;
        exception?: Object | undefined;
        informationCollector?: () => IIterable<IDiagnosticsNode> | undefined;
        library?: string | undefined;
        silent?: boolean | undefined;
        stack?: IStackTrace | undefined;
        stackFilter?: (
            input: IIterable<string>
        ) => IIterable<string> | undefined;
    }) => IFlutterErrorDetails = undefined as any;
    private readonly _dart_exceptionAsString: () => string = undefined as any;
    private readonly _dart_debugFillProperties: (
        properties: IDiagnosticPropertiesBuilder
    ) => void = undefined as any;
    private readonly _dart_toStringShort: () => string = undefined as any;
    private readonly _dart_toString: (props: {
        minLevel: DiagnosticLevel;
    }) => string = undefined as any;
    private readonly _dart_toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode = undefined as any;
    private readonly _dart_getSummary: () => IDiagnosticsNode =
        undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public copyWith(props?: {
        context?: IDiagnosticsNode | undefined;
        exception?: Object | undefined;
        informationCollector?: () => IIterable<IDiagnosticsNode> | undefined;
        library?: string | undefined;
        silent?: boolean | undefined;
        stack?: IStackTrace | undefined;
        stackFilter?: (
            input: IIterable<string>
        ) => IIterable<string> | undefined;
    }): IFlutterErrorDetails {
        return this._dart_copyWith(props);
    }
    public exceptionAsString(): string {
        return this._dart_exceptionAsString();
    }
    public debugFillProperties(properties: IDiagnosticPropertiesBuilder): void {
        return this._dart_debugFillProperties(properties);
    }
    public toStringShort(): string {
        return this._dart_toStringShort();
    }
    public toString(props: { minLevel?: DiagnosticLevel }): string {
        return this._dart_toString({
            ...toStringDefaultProps,
            ...props,
        });
    }
    public toDiagnosticsNode(props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }): IDiagnosticsNode {
        return this._dart_toDiagnosticsNode(props);
    }
    public getSummary(): IDiagnosticsNode {
        return this._dart_getSummary();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
const flutterErrorDetailsForPointerEventDispatcherDefaultProps = {
    silent: false,
};
const toStringDefaultProps = {
    minLevel: DiagnosticLevel.info,
};
