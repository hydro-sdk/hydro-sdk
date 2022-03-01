
import { DiagnosticsTreeStyle } from "./diagnosticsTreeStyle";
import { IDiagnosticableTree } from "./diagnosticableTree";
import { IDiagnosticableNode } from "./diagnosticableNode";
import { IList } from "../../dart/core/list";
import { IDiagnosticsNode } from "./diagnosticsNode";
import { ITextTreeConfiguration } from "./textTreeConfiguration";
import { IDiagnosticPropertiesBuilder } from "./diagnosticPropertiesBuilder";
import { DiagnosticLevel } from "./diagnosticLevel";
import { IDiagnosticsSerializationDelegate } from "./diagnosticsSerializationDelegate";
declare const flutter: {
foundation: {
diagnosticableTreeNode: (this: void, diagnosticableTreeNode: IDiagnosticableTreeNode, props : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined, value : IDiagnosticableTree,}) => IDiagnosticableTreeNode
}
};
export interface IDiagnosticableTreeNode


{
value: IDiagnosticableTree;
name: string | undefined;
showSeparator: boolean;
showName: boolean;
linePrefix: string | undefined;
style: DiagnosticsTreeStyle | undefined;
getValue: () => IDiagnosticableTree;
getChildren: () => IList<IDiagnosticsNode>;
getProperties: () => IList<IDiagnosticsNode>;
toDescription: ( props? : {  parentConfiguration? : ITextTreeConfiguration | undefined,}) => string;
getBuilder: () => IDiagnosticPropertiesBuilder | undefined;
getStyle: () => DiagnosticsTreeStyle;
getEmptyBodyDescription: () => string | undefined;
isFiltered: (minLevel: DiagnosticLevel) => boolean;
toJsonMap: (delegate: IDiagnosticsSerializationDelegate) => {[index: string]: Object | undefined};
toString: ( props : {  minLevel : DiagnosticLevel, parentConfiguration? : ITextTreeConfiguration | undefined,}) => string;
toStringDeep: ( props : {  minLevel : DiagnosticLevel, parentConfiguration? : ITextTreeConfiguration | undefined, prefixLineOne : string, prefixOtherLines? : string | undefined,}) => string;
getLevel: () => DiagnosticLevel;
getAllowWrap: () => boolean;
getAllowNameWrap: () => boolean;
getAllowTruncate: () => boolean;
getTextTreeConfiguration: () => ITextTreeConfiguration | undefined;
getHashCode: () => number;
}export class DiagnosticableTreeNode

 implements IDiagnosticableNode<IDiagnosticableTree>
{    public readonly value: IDiagnosticableTree = undefined as any;
    public readonly name: string | undefined = undefined as any;
    public readonly showSeparator: boolean = undefined as any;
    public readonly showName: boolean = undefined as any;
    public readonly linePrefix: string | undefined = undefined as any;
    public readonly style: DiagnosticsTreeStyle | undefined = undefined as any;
public constructor( props : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined, value : IDiagnosticableTree,}){
flutter.foundation.diagnosticableTreeNode(this, props);}
    private readonly _dart_getValue: () => IDiagnosticableTree = undefined as any;
    private readonly _dart_getChildren: () => IList<IDiagnosticsNode> = undefined as any;
    private readonly _dart_getProperties: () => IList<IDiagnosticsNode> = undefined as any;
    private readonly _dart_toDescription: ( props? : {  parentConfiguration? : ITextTreeConfiguration | undefined,}) => string = undefined as any;
    private readonly _dart_getBuilder: () => IDiagnosticPropertiesBuilder | undefined = undefined as any;
    private readonly _dart_getStyle: () => DiagnosticsTreeStyle = undefined as any;
    private readonly _dart_getEmptyBodyDescription: () => string | undefined = undefined as any;
    private readonly _dart_isFiltered: (minLevel: DiagnosticLevel) => boolean = undefined as any;
    private readonly _dart_toJsonMap: (delegate: IDiagnosticsSerializationDelegate) => {[index: string]: Object | undefined} = undefined as any;
    private readonly _dart_toString: ( props : {  minLevel : DiagnosticLevel, parentConfiguration? : ITextTreeConfiguration | undefined,}) => string = undefined as any;
    private readonly _dart_toStringDeep: ( props : {  minLevel : DiagnosticLevel, parentConfiguration? : ITextTreeConfiguration | undefined, prefixLineOne : string, prefixOtherLines? : string | undefined,}) => string = undefined as any;
    private readonly _dart_getLevel: () => DiagnosticLevel = undefined as any;
    private readonly _dart_getAllowWrap: () => boolean = undefined as any;
    private readonly _dart_getAllowNameWrap: () => boolean = undefined as any;
    private readonly _dart_getAllowTruncate: () => boolean = undefined as any;
    private readonly _dart_getTextTreeConfiguration: () => ITextTreeConfiguration | undefined = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
public getValue() : IDiagnosticableTree {
    return this._dart_getValue();
}
public getChildren() : IList<IDiagnosticsNode> {
    return this._dart_getChildren();
}
public getProperties() : IList<IDiagnosticsNode> {
    return this._dart_getProperties();
}
public toDescription( props? : {  parentConfiguration? : ITextTreeConfiguration | undefined,}) : string {
    return this._dart_toDescription(props);
}
public getBuilder() : IDiagnosticPropertiesBuilder | undefined {
    return this._dart_getBuilder();
}
public getStyle() : DiagnosticsTreeStyle {
    return this._dart_getStyle();
}
public getEmptyBodyDescription() : string | undefined {
    return this._dart_getEmptyBodyDescription();
}
public isFiltered(minLevel: DiagnosticLevel) : boolean {
    return this._dart_isFiltered(minLevel);
}
public toJsonMap(delegate: IDiagnosticsSerializationDelegate) : {[index: string]: Object | undefined} {
    return this._dart_toJsonMap(delegate);
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
public getLevel() : DiagnosticLevel {
    return this._dart_getLevel();
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
const toStringDefaultProps = {
    minLevel: DiagnosticLevel.info,
};
const toStringDeepDefaultProps = {
    minLevel: DiagnosticLevel.debug,
    prefixLineOne: "",
};
