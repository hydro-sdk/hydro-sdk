import { IAssertionError } from "../../dart/core/assertionError";
import { IError } from "../../dart/core/error";
import { IIterable } from "../../dart/core/iterable";
import { IList } from "../../dart/core/list";
import { IStackTrace } from "../../dart/core/stackTrace";
import { IDiagnosticable } from "./diagnosticable";
import { IDiagnosticableTree } from "./diagnosticableTree";
import { IDiagnosticableTreeMixin } from "./diagnosticableTreeMixin";
import { DiagnosticLevel } from "./diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "./diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "./diagnosticsNode";
import { DiagnosticsTreeStyle } from "./diagnosticsTreeStyle";
import { IFlutterErrorDetails } from "./flutterErrorDetails";
import { IStackFilter } from "./stackFilter";
declare const flutter: {
    foundation: {
        flutterError: (
            this: void,
            flutterError: IFlutterError,
            message: string
        ) => IFlutterError;
        flutterErrorResetErrorCount: () => void;
        flutterErrorDumpErrorToConsole: (
            details: IFlutterErrorDetails,
            props: { forceReport: boolean }
        ) => void;
        flutterErrorAddDefaultStackFilter: (filter: IStackFilter) => void;
        flutterErrorDefaultStackFilter: (
            frames: IIterable<string>
        ) => IIterable<string>;
        flutterErrorReportError: (details: IFlutterErrorDetails) => void;
    };
};
export interface IFlutterError {
    diagnostics: IList<IDiagnosticsNode>;
    message: Object | undefined;
    getMessage: () => string;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    toStringShort: () => string;
    toString: (props: { minLevel: DiagnosticLevel }) => string;
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
    getStackTrace: () => IStackTrace | undefined;
    getHashCode: () => number;
}
export class FlutterError
    implements
        IError,
        IDiagnosticableTreeMixin,
        IDiagnosticable,
        IAssertionError,
        Omit<
            IDiagnosticableTree,
            | "toStringShallow"
            | "toStringDeep"
            | "debugDescribeChildren"
            | "debugFillProperties"
            | "toStringShort"
            | "toDiagnosticsNode"
        >
{
    public static wrapWidth = 100;
    public readonly diagnostics: IList<IDiagnosticsNode> = undefined as any;
    public readonly message: Object | undefined = undefined as any;
    public constructor(message: string) {
        flutter.foundation.flutterError(this, message);
    }
    public static resetErrorCount(): void {
        return flutter.foundation.flutterErrorResetErrorCount();
    }
    public static dumpErrorToConsole(
        details: IFlutterErrorDetails,
        props: { forceReport?: boolean }
    ): void {
        return flutter.foundation.flutterErrorDumpErrorToConsole(details, {
            ...dumpErrorToConsoleDefaultProps,
            ...props,
        });
    }
    public static addDefaultStackFilter(filter: IStackFilter): void {
        return flutter.foundation.flutterErrorAddDefaultStackFilter(filter);
    }
    public static defaultStackFilter(
        frames: IIterable<string>
    ): IIterable<string> {
        return flutter.foundation.flutterErrorDefaultStackFilter(frames);
    }
    public static reportError(details: IFlutterErrorDetails): void {
        return flutter.foundation.flutterErrorReportError(details);
    }
    private readonly _dart_getMessage: () => string = undefined as any;
    private readonly _dart_debugFillProperties: (
        properties: IDiagnosticPropertiesBuilder
    ) => void = undefined as any;
    private readonly _dart_toStringShort: () => string = undefined as any;
    private readonly _dart_toString: (props: {
        minLevel: DiagnosticLevel;
    }) => string = undefined as any;
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
    private readonly _dart_getStackTrace: () => IStackTrace | undefined =
        undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public getMessage(): string {
        return this._dart_getMessage();
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
    public getStackTrace(): IStackTrace | undefined {
        return this._dart_getStackTrace();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
const toStringDefaultProps = {
    minLevel: DiagnosticLevel.info,
};
const toStringShallowDefaultProps = {
    joiner: ", ",
    minLevel: DiagnosticLevel.debug,
};
const toStringDeepDefaultProps = {
    minLevel: DiagnosticLevel.debug,
    prefixLineOne: "",
};
const dumpErrorToConsoleDefaultProps = {
    forceReport: false,
};
