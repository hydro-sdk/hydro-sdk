
import { DiagnosticLevel } from "./diagnosticLevel";
import { IDiagnosticsProperty } from "./diagnosticsProperty";
import { IDiagnosticsSerializationDelegate } from "./diagnosticsSerializationDelegate";
import { ITextTreeConfiguration } from "./textTreeConfiguration";
import { IList } from "../../dart/core/list";
import { IDiagnosticsNode } from "./diagnosticsNode";
import { Type } from "../../dart/core/type";
import { DiagnosticsTreeStyle } from "./diagnosticsTreeStyle";
declare const flutter: {
foundation: {
enumProperty: <T>(this: void, enumProperty: IEnumProperty<T>, name: string, value?: T | undefined, props : {  defaultValue? : Object | undefined, level : DiagnosticLevel,}) => IEnumProperty<T>
}
};
export interface IEnumProperty
<T>

{
expandableValue: boolean;
allowWrap: boolean;
allowNameWrap: boolean;
ifNull: string | undefined;
ifEmpty: string | undefined;
tooltip: string | undefined;
missingIfNull: boolean;
defaultValue: Object | undefined;
name: string | undefined;
showSeparator: boolean;
showName: boolean;
linePrefix: string | undefined;
style: DiagnosticsTreeStyle | undefined;
valueToString: ( props? : {  parentConfiguration? : ITextTreeConfiguration | undefined,}) => string;
toJsonMap: (delegate: IDiagnosticsSerializationDelegate) => {[index: string]: Object | undefined};
toDescription: ( props? : {  parentConfiguration? : ITextTreeConfiguration | undefined,}) => string;
getProperties: () => IList<IDiagnosticsNode>;
getChildren: () => IList<IDiagnosticsNode>;
getPropertyType: () => Type;
getValue: () => T | undefined;
getException: () => Object | undefined;
getIsInteresting: () => boolean;
getLevel: () => DiagnosticLevel;
isFiltered: (minLevel: DiagnosticLevel) => boolean;
toString: ( props : {  minLevel : DiagnosticLevel, parentConfiguration? : ITextTreeConfiguration | undefined,}) => string;
toStringDeep: ( props : {  minLevel : DiagnosticLevel, parentConfiguration? : ITextTreeConfiguration | undefined, prefixLineOne : string, prefixOtherLines? : string | undefined,}) => string;
getEmptyBodyDescription: () => string | undefined;
getAllowWrap: () => boolean;
getAllowNameWrap: () => boolean;
getAllowTruncate: () => boolean;
getTextTreeConfiguration: () => ITextTreeConfiguration | undefined;
getHashCode: () => number;
}export class EnumProperty
<T>
 implements IDiagnosticsProperty<T>
{    public readonly expandableValue: boolean = undefined as any;
    public readonly allowWrap: boolean = undefined as any;
    public readonly allowNameWrap: boolean = undefined as any;
    public readonly ifNull: string | undefined = undefined as any;
    public readonly ifEmpty: string | undefined = undefined as any;
    public readonly tooltip: string | undefined = undefined as any;
    public readonly missingIfNull: boolean = undefined as any;
    public readonly defaultValue: Object | undefined = undefined as any;
    public readonly name: string | undefined = undefined as any;
    public readonly showSeparator: boolean = undefined as any;
    public readonly showName: boolean = undefined as any;
    public readonly linePrefix: string | undefined = undefined as any;
    public readonly style: DiagnosticsTreeStyle | undefined = undefined as any;
public constructor(name: string, value?: T | undefined, props : {  defaultValue? : Object | undefined, level? : DiagnosticLevel,}){
flutter.foundation.enumProperty(this, name, value, {
...enumPropertyDefaultProps,
...props
});}
    private readonly _dart_valueToString: ( props? : {  parentConfiguration? : ITextTreeConfiguration | undefined,}) => string = undefined as any;
    private readonly _dart_toJsonMap: (delegate: IDiagnosticsSerializationDelegate) => {[index: string]: Object | undefined} = undefined as any;
    private readonly _dart_toDescription: ( props? : {  parentConfiguration? : ITextTreeConfiguration | undefined,}) => string = undefined as any;
    private readonly _dart_getProperties: () => IList<IDiagnosticsNode> = undefined as any;
    private readonly _dart_getChildren: () => IList<IDiagnosticsNode> = undefined as any;
    private readonly _dart_getPropertyType: () => Type = undefined as any;
    private readonly _dart_getValue: () => T | undefined = undefined as any;
    private readonly _dart_getException: () => Object | undefined = undefined as any;
    private readonly _dart_getIsInteresting: () => boolean = undefined as any;
    private readonly _dart_getLevel: () => DiagnosticLevel = undefined as any;
    private readonly _dart_isFiltered: (minLevel: DiagnosticLevel) => boolean = undefined as any;
    private readonly _dart_toString: ( props : {  minLevel : DiagnosticLevel, parentConfiguration? : ITextTreeConfiguration | undefined,}) => string = undefined as any;
    private readonly _dart_toStringDeep: ( props : {  minLevel : DiagnosticLevel, parentConfiguration? : ITextTreeConfiguration | undefined, prefixLineOne : string, prefixOtherLines? : string | undefined,}) => string = undefined as any;
    private readonly _dart_getEmptyBodyDescription: () => string | undefined = undefined as any;
    private readonly _dart_getAllowWrap: () => boolean = undefined as any;
    private readonly _dart_getAllowNameWrap: () => boolean = undefined as any;
    private readonly _dart_getAllowTruncate: () => boolean = undefined as any;
    private readonly _dart_getTextTreeConfiguration: () => ITextTreeConfiguration | undefined = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
public valueToString( props? : {  parentConfiguration? : ITextTreeConfiguration | undefined,}) : string {
    return this._dart_valueToString(props);
}
public toJsonMap(delegate: IDiagnosticsSerializationDelegate) : {[index: string]: Object | undefined} {
    return this._dart_toJsonMap(delegate);
}
public toDescription( props? : {  parentConfiguration? : ITextTreeConfiguration | undefined,}) : string {
    return this._dart_toDescription(props);
}
public getProperties() : IList<IDiagnosticsNode> {
    return this._dart_getProperties();
}
public getChildren() : IList<IDiagnosticsNode> {
    return this._dart_getChildren();
}
public getPropertyType() : Type {
    return this._dart_getPropertyType();
}
public getValue() : T | undefined {
    return this._dart_getValue();
}
public getException() : Object | undefined {
    return this._dart_getException();
}
public getIsInteresting() : boolean {
    return this._dart_getIsInteresting();
}
public getLevel() : DiagnosticLevel {
    return this._dart_getLevel();
}
public isFiltered(minLevel: DiagnosticLevel) : boolean {
    return this._dart_isFiltered(minLevel);
}
public toString( props : {  minLevel? : DiagnosticLevel, parentConfiguration? : ITextTreeConfiguration | undefined,}) : string {
    return this._dart_toString({
...toStringDefaultProps,
...props
});
}
public toStringDeep( props : {  minLevel? : DiagnosticLevel, parentConfiguration? : ITextTreeConfiguration | undefined, prefixLineOne? : string, prefixOtherLines? : string | undefined,}) : string {
    return this._dart_toStringDeep({
...toStringDeepDefaultProps,
...props
});
}
public getEmptyBodyDescription() : string | undefined {
    return this._dart_getEmptyBodyDescription();
}
public getAllowWrap() : boolean {
    return this._dart_getAllowWrap();
}
public getAllowNameWrap() : boolean {
    return this._dart_getAllowNameWrap();
}
public getAllowTruncate() : boolean {
    return this._dart_getAllowTruncate();
}
public getTextTreeConfiguration() : ITextTreeConfiguration | undefined {
    return this._dart_getTextTreeConfiguration();
}
public getHashCode() : number {
    return this._dart_getHashCode();
}
}
const enumPropertyDefaultProps = {

    level: DiagnosticLevel.info,
};
const toStringDefaultProps = {
    minLevel: DiagnosticLevel.info,
};
const toStringDeepDefaultProps = {
    minLevel: DiagnosticLevel.debug,
    prefixLineOne: "",
};
