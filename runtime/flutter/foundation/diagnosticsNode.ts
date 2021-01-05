import { IList } from "./../../dart/collection/list";
import { DiagnosticLevel } from "./diagnosticLevel";
import { IDiagnosticsSerializationDelegate } from "./diagnosticsSerializationDelegate";
import { DiagnosticsTreeStyle } from "./diagnosticsTreeStyle";
import { ITextTreeConfiguration } from "./textTreeConfiguration";
declare const flutter: {
    foundation: {
        diagnosticsNode: (
            this: void,
            diagnosticsNode: DiagnosticsNode,
            props: {
                linePrefix?: string | undefined;
                showName: boolean;
                showSeparator: boolean;
                style?: DiagnosticsTreeStyle | undefined;
                name?: string | undefined;
            }
        ) => DiagnosticsNode;
        diagnosticsNodeMessage: (
            message: string,
            props: {
                allowWrap: boolean;
                level: DiagnosticLevel;
                style: DiagnosticsTreeStyle;
            }
        ) => IDiagnosticsNode;
        diagnosticsNodeToJsonList: (
            nodes: IList<IDiagnosticsNode> | undefined,
            parent: IDiagnosticsNode | undefined,
            delegate: IDiagnosticsSerializationDelegate
        ) => IList<{ [index: string]: Object | undefined }>;
    };
};
const diagnosticsNodeDefaultProps = {
    showName: true,
    showSeparator: true,
};
const toStringDefaultProps = {
    minLevel: DiagnosticLevel.info,
};
const toStringDeepDefaultProps = {
    minLevel: DiagnosticLevel.debug,
    prefixLineOne: "",
};
const messageDefaultProps = {
    allowWrap: true,
    level: DiagnosticLevel.info,
    style: DiagnosticsTreeStyle.singleLine,
};
export interface IDiagnosticsNode {
    name: string | undefined;
    showSeparator: boolean;
    showName: boolean;
    linePrefix: string | undefined;
    style: DiagnosticsTreeStyle | undefined;
    toDescription: (props: {
        parentConfiguration?: ITextTreeConfiguration | undefined;
    }) => string | undefined;
    isFiltered: (minLevel: DiagnosticLevel) => boolean;
    getLevel: () => DiagnosticLevel;
    getEmptyBodyDescription: () => string | undefined;
    getValue: () => Object | undefined;
    getAllowWrap: () => boolean;
    getAllowNameWrap: () => boolean;
    getAllowTruncate: () => boolean;
    getProperties: () => IList<IDiagnosticsNode>;
    getChildren: () => IList<IDiagnosticsNode>;
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
}
export class DiagnosticsNode {
    public readonly name: string | undefined = undefined as any;
    public readonly showSeparator: boolean = undefined as any;
    public readonly showName: boolean = undefined as any;
    public readonly linePrefix: string | undefined = undefined as any;
    public readonly style: DiagnosticsTreeStyle | undefined = undefined as any;
    public constructor(props: {
        linePrefix?: string | undefined;
        showName?: boolean;
        showSeparator?: boolean;
        style?: DiagnosticsTreeStyle | undefined;
        name?: string | undefined;
    }) {
        flutter.foundation.diagnosticsNode(this, {
            ...diagnosticsNodeDefaultProps,
            ...props,
        });
    }
    public static message(
        message: string,
        props: {
            allowWrap?: boolean;
            level?: DiagnosticLevel;
            style?: DiagnosticsTreeStyle;
        }
    ): IDiagnosticsNode {
        return flutter.foundation.diagnosticsNodeMessage(message, {
            ...messageDefaultProps,
            ...props,
        });
    }
    public static toJsonList(
        nodes: IList<IDiagnosticsNode> | undefined,
        parent: IDiagnosticsNode | undefined,
        delegate: IDiagnosticsSerializationDelegate
    ): IList<{ [index: string]: Object | undefined }> {
        return flutter.foundation.diagnosticsNodeToJsonList(
            nodes,
            parent,
            delegate
        );
    }
    private readonly _dart_toDescription: (props: {
        parentConfiguration?: ITextTreeConfiguration | undefined;
    }) => string | undefined = undefined as any;
    private readonly _dart_isFiltered: (
        minLevel: DiagnosticLevel
    ) => boolean = undefined as any;
    private readonly _dart_getLevel: () => DiagnosticLevel = undefined as any;
    private readonly _dart_getEmptyBodyDescription: () =>
        | string
        | undefined = undefined as any;
    private readonly _dart_getValue: () =>
        | Object
        | undefined = undefined as any;
    private readonly _dart_getAllowWrap: () => boolean = undefined as any;
    private readonly _dart_getAllowNameWrap: () => boolean = undefined as any;
    private readonly _dart_getAllowTruncate: () => boolean = undefined as any;
    private readonly _dart_getProperties: () => IList<IDiagnosticsNode> = undefined as any;
    private readonly _dart_getChildren: () => IList<IDiagnosticsNode> = undefined as any;
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
    public toDescription(props: {
        parentConfiguration?: ITextTreeConfiguration | undefined;
    }): string | undefined {
        return this._dart_toDescription(props);
    }
    public isFiltered(minLevel: DiagnosticLevel): boolean {
        return this._dart_isFiltered(minLevel);
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
    public getAllowTruncate(): boolean {
        return this._dart_getAllowTruncate();
    }
    public getProperties(): IList<IDiagnosticsNode> {
        return this._dart_getProperties();
    }
    public getChildren(): IList<IDiagnosticsNode> {
        return this._dart_getChildren();
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
}
