import { IIterable } from "../../dart/core/iterable";
import { IStackTrace } from "../../dart/core/stackTrace";
import { IDiagnosticable } from "./diagnosticable";
import { DiagnosticLevel } from "./diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "./diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "./diagnosticsNode";
import { DiagnosticsTreeStyle } from "./diagnosticsTreeStyle";
declare const flutter: {
    foundation: {
        flutterErrorDetails: (
            this: void,
            flutterErrorDetails: IFlutterErrorDetails,
            props: {
                context?: IDiagnosticsNode | undefined;
                informationCollector?: () =>
                    | IIterable<IDiagnosticsNode>
                    | undefined;
                library?: string | undefined;
                silent: boolean;
                stack?: IStackTrace | undefined;
                stackFilter?: (
                    input: IIterable<string>
                ) => IIterable<string> | undefined;
                exception: Object;
            }
        ) => IFlutterErrorDetails;
    };
};
export interface IFlutterErrorDetails {
    exception: Object;
    stack: IStackTrace | undefined;
    library: string | undefined;
    context: IDiagnosticsNode | undefined;
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
    getSummary: () => IDiagnosticsNode;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    toStringShort: () => string;
    toString: (props: { minLevel: DiagnosticLevel }) => string;
    toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode;
}
export class FlutterErrorDetails implements IDiagnosticable {
    public readonly exception: Object = undefined as any;
    public readonly stack: IStackTrace | undefined = undefined as any;
    public readonly library: string | undefined = undefined as any;
    public readonly context: IDiagnosticsNode | undefined = undefined as any;
    public readonly silent: boolean = undefined as any;
    public constructor(props: {
        context?: IDiagnosticsNode | undefined;
        informationCollector?: () => IIterable<IDiagnosticsNode> | undefined;
        library?: string | undefined;
        silent?: boolean;
        stack?: IStackTrace | undefined;
        stackFilter?: (
            input: IIterable<string>
        ) => IIterable<string> | undefined;
        exception: Object;
    }) {
        flutter.foundation.flutterErrorDetails(this, {
            ...flutterErrorDetailsDefaultProps,
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
    private readonly _dart_getSummary: () => IDiagnosticsNode =
        undefined as any;
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
    public getSummary(): IDiagnosticsNode {
        return this._dart_getSummary();
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
}
const flutterErrorDetailsDefaultProps = {
    library: "Flutter framework",
    silent: false,
};
const toStringDefaultProps = {
    minLevel: DiagnosticLevel.info,
};
