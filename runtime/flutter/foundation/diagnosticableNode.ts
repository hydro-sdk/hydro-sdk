import { IList } from "../../dart/core/list";
import { IDiagnosticable } from "./diagnosticable";
import { DiagnosticLevel } from "./diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "./diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "./diagnosticsNode";
import { IDiagnosticsSerializationDelegate } from "./diagnosticsSerializationDelegate";
import { DiagnosticsTreeStyle } from "./diagnosticsTreeStyle";
import { ITextTreeConfiguration } from "./textTreeConfiguration";
declare const flutter: {
    foundation: {
        diagnosticableNode: <T>(
            this: void,
            diagnosticableNode: IDiagnosticableNode<T>,
            props: {
                name?: string | undefined;
                style?: DiagnosticsTreeStyle | undefined;
                value: T;
            }
        ) => IDiagnosticableNode<T>;
    };
};
export interface IDiagnosticableNode<T> {
    name: string | undefined;
    showSeparator: boolean;
    showName: boolean;
    linePrefix: string | undefined;
    style: DiagnosticsTreeStyle | undefined;
    getValue: () => IDiagnosticable;
    getBuilder: () => IDiagnosticPropertiesBuilder | undefined;
    getStyle: () => DiagnosticsTreeStyle;
    getEmptyBodyDescription: () => string | undefined;
    getProperties: () => IList<IDiagnosticsNode>;
    getChildren: () => IList<IDiagnosticsNode>;
    toDescription: (props?: {
        parentConfiguration?: ITextTreeConfiguration | undefined;
    }) => string;
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
    getAllowWrap: () => boolean;
    getAllowNameWrap: () => boolean;
    getAllowTruncate: () => boolean;
    getTextTreeConfiguration: () => ITextTreeConfiguration | undefined;
    getHashCode: () => number;
}
export class DiagnosticableNode<T> implements IDiagnosticsNode {
    public readonly name: string | undefined = undefined as any;
    public readonly showSeparator: boolean = undefined as any;
    public readonly showName: boolean = undefined as any;
    public readonly linePrefix: string | undefined = undefined as any;
    public readonly style: DiagnosticsTreeStyle | undefined = undefined as any;
    public constructor(props: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
        value: T;
    }) {
        flutter.foundation.diagnosticableNode(this, props);
    }
    private readonly _dart_getValue: () => IDiagnosticable = undefined as any;
    private readonly _dart_getBuilder: () =>
        | IDiagnosticPropertiesBuilder
        | undefined = undefined as any;
    private readonly _dart_getStyle: () => DiagnosticsTreeStyle =
        undefined as any;
    private readonly _dart_getEmptyBodyDescription: () => string | undefined =
        undefined as any;
    private readonly _dart_getProperties: () => IList<IDiagnosticsNode> =
        undefined as any;
    private readonly _dart_getChildren: () => IList<IDiagnosticsNode> =
        undefined as any;
    private readonly _dart_toDescription: (props?: {
        parentConfiguration?: ITextTreeConfiguration | undefined;
    }) => string = undefined as any;
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
    private readonly _dart_getAllowWrap: () => boolean = undefined as any;
    private readonly _dart_getAllowNameWrap: () => boolean = undefined as any;
    private readonly _dart_getAllowTruncate: () => boolean = undefined as any;
    private readonly _dart_getTextTreeConfiguration: () =>
        | ITextTreeConfiguration
        | undefined = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public getValue(): IDiagnosticable {
        return this._dart_getValue();
    }
    public getBuilder(): IDiagnosticPropertiesBuilder | undefined {
        return this._dart_getBuilder();
    }
    public getStyle(): DiagnosticsTreeStyle {
        return this._dart_getStyle();
    }
    public getEmptyBodyDescription(): string | undefined {
        return this._dart_getEmptyBodyDescription();
    }
    public getProperties(): IList<IDiagnosticsNode> {
        return this._dart_getProperties();
    }
    public getChildren(): IList<IDiagnosticsNode> {
        return this._dart_getChildren();
    }
    public toDescription(props?: {
        parentConfiguration?: ITextTreeConfiguration | undefined;
    }): string {
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
    public getAllowWrap(): boolean {
        return this._dart_getAllowWrap();
    }
    public getAllowNameWrap(): boolean {
        return this._dart_getAllowNameWrap();
    }
    public getAllowTruncate(): boolean {
        return this._dart_getAllowTruncate();
    }
    public getTextTreeConfiguration(): ITextTreeConfiguration | undefined {
        return this._dart_getTextTreeConfiguration();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
const toStringDefaultProps = {
    minLevel: DiagnosticLevel.info,
};
const toStringDeepDefaultProps = {
    minLevel: DiagnosticLevel.debug,
    prefixLineOne: "",
};
