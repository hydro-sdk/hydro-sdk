import { IIterable } from "../../dart/core/iterable";
import { IList } from "../../dart/core/list";
import { IStackTrace } from "../../dart/core/stackTrace";
import { DiagnosticLevel } from "./diagnosticLevel";
import { IDiagnosticsBlock } from "./diagnosticsBlock";
import { IDiagnosticsNode } from "./diagnosticsNode";
import { IDiagnosticsSerializationDelegate } from "./diagnosticsSerializationDelegate";
import { DiagnosticsTreeStyle } from "./diagnosticsTreeStyle";
import { ITextTreeConfiguration } from "./textTreeConfiguration";
declare const flutter: {
    foundation: {
        diagnosticsStackTrace: (
            this: void,
            diagnosticsStackTrace: IDiagnosticsStackTrace,
            name: string,
            stack?: IStackTrace | undefined,
            props: {
                showSeparator: boolean;
                stackFilter?: (
                    input: IIterable<string>
                ) => IIterable<string> | undefined;
            }
        ) => IDiagnosticsStackTrace;
    };
};
export interface IDiagnosticsStackTrace {
    level: DiagnosticLevel;
    value: Object | undefined;
    allowTruncate: boolean;
    name: string | undefined;
    showSeparator: boolean;
    showName: boolean;
    linePrefix: string | undefined;
    style: DiagnosticsTreeStyle | undefined;
    getAllowTruncate: () => boolean;
    getChildren: () => IList<IDiagnosticsNode>;
    getProperties: () => IList<IDiagnosticsNode>;
    toDescription: (props?: {
        parentConfiguration?: ITextTreeConfiguration | undefined;
    }) => string | undefined;
    isFiltered: (minLevel: DiagnosticLevel) => boolean;
    toJsonMap: (delegate: IDiagnosticsSerializationDelegate) => {
        [index: string]: Object | undefined;
    };
    toString: (props: {
        minLevel: DiagnosticLevel;
        parentConfiguration?: ITextTreeConfiguration | undefined;
    }) => string;
    toStringDeep: (props: {
        minLevel: DiagnosticLevel;
        parentConfiguration?: ITextTreeConfiguration | undefined;
        prefixLineOne: string;
        prefixOtherLines?: string | undefined;
    }) => string;
    getLevel: () => DiagnosticLevel;
    getEmptyBodyDescription: () => string | undefined;
    getValue: () => Object | undefined;
    getAllowWrap: () => boolean;
    getAllowNameWrap: () => boolean;
    getTextTreeConfiguration: () => ITextTreeConfiguration | undefined;
    getHashCode: () => number;
}
export class DiagnosticsStackTrace implements IDiagnosticsBlock {
    public readonly level: DiagnosticLevel = undefined as any;
    public readonly value: Object | undefined = undefined as any;
    public readonly allowTruncate: boolean = undefined as any;
    public readonly name: string | undefined = undefined as any;
    public readonly showSeparator: boolean = undefined as any;
    public readonly showName: boolean = undefined as any;
    public readonly linePrefix: string | undefined = undefined as any;
    public readonly style: DiagnosticsTreeStyle | undefined = undefined as any;
    public constructor(
        name: string,
        stack?: IStackTrace | undefined,
        props: {
            showSeparator?: boolean;
            stackFilter?: (
                input: IIterable<string>
            ) => IIterable<string> | undefined;
        }
    ) {
        flutter.foundation.diagnosticsStackTrace(this, name, stack, {
            ...diagnosticsStackTraceDefaultProps,
            ...props,
        });
    }
    private readonly _dart_getAllowTruncate: () => boolean = undefined as any;
    private readonly _dart_getChildren: () => IList<IDiagnosticsNode> =
        undefined as any;
    private readonly _dart_getProperties: () => IList<IDiagnosticsNode> =
        undefined as any;
    private readonly _dart_toDescription: (props?: {
        parentConfiguration?: ITextTreeConfiguration | undefined;
    }) => string | undefined = undefined as any;
    private readonly _dart_isFiltered: (minLevel: DiagnosticLevel) => boolean =
        undefined as any;
    private readonly _dart_toJsonMap: (
        delegate: IDiagnosticsSerializationDelegate
    ) => { [index: string]: Object | undefined } = undefined as any;
    private readonly _dart_toString: (props: {
        minLevel: DiagnosticLevel;
        parentConfiguration?: ITextTreeConfiguration | undefined;
    }) => string = undefined as any;
    private readonly _dart_toStringDeep: (props: {
        minLevel: DiagnosticLevel;
        parentConfiguration?: ITextTreeConfiguration | undefined;
        prefixLineOne: string;
        prefixOtherLines?: string | undefined;
    }) => string = undefined as any;
    private readonly _dart_getLevel: () => DiagnosticLevel = undefined as any;
    private readonly _dart_getEmptyBodyDescription: () => string | undefined =
        undefined as any;
    private readonly _dart_getValue: () => Object | undefined =
        undefined as any;
    private readonly _dart_getAllowWrap: () => boolean = undefined as any;
    private readonly _dart_getAllowNameWrap: () => boolean = undefined as any;
    private readonly _dart_getTextTreeConfiguration: () =>
        | ITextTreeConfiguration
        | undefined = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public getAllowTruncate(): boolean {
        return this._dart_getAllowTruncate();
    }
    public getChildren(): IList<IDiagnosticsNode> {
        return this._dart_getChildren();
    }
    public getProperties(): IList<IDiagnosticsNode> {
        return this._dart_getProperties();
    }
    public toDescription(props?: {
        parentConfiguration?: ITextTreeConfiguration | undefined;
    }): string | undefined {
        return this._dart_toDescription(props);
    }
    public isFiltered(minLevel: DiagnosticLevel): boolean {
        return this._dart_isFiltered(minLevel);
    }
    public toJsonMap(delegate: IDiagnosticsSerializationDelegate): {
        [index: string]: Object | undefined;
    } {
        return this._dart_toJsonMap(delegate);
    }
    public toString(props: {
        minLevel?: DiagnosticLevel;
        parentConfiguration?: ITextTreeConfiguration | undefined;
    }): string {
        return this._dart_toString({
            ...toStringDefaultProps,
            ...props,
        });
    }
    public toStringDeep(props: {
        minLevel?: DiagnosticLevel;
        parentConfiguration?: ITextTreeConfiguration | undefined;
        prefixLineOne?: string;
        prefixOtherLines?: string | undefined;
    }): string {
        return this._dart_toStringDeep({
            ...toStringDeepDefaultProps,
            ...props,
        });
    }
    public getLevel(): DiagnosticLevel {
        return this._dart_getLevel();
    }
    public getEmptyBodyDescription(): string | undefined {
        return this._dart_getEmptyBodyDescription();
    }
    public getValue(): Object | undefined {
        return this._dart_getValue();
    }
    public getAllowWrap(): boolean {
        return this._dart_getAllowWrap();
    }
    public getAllowNameWrap(): boolean {
        return this._dart_getAllowNameWrap();
    }
    public getTextTreeConfiguration(): ITextTreeConfiguration | undefined {
        return this._dart_getTextTreeConfiguration();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
const diagnosticsStackTraceDefaultProps = {
    showSeparator: true,
};
const toStringDefaultProps = {
    minLevel: DiagnosticLevel.info,
};
const toStringDeepDefaultProps = {
    minLevel: DiagnosticLevel.debug,
    prefixLineOne: "",
};
