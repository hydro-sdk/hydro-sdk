
import { ITableBorder } from "../rendering/tableBorder";
import { IList,List } from "../../dart/core/list";
import { ITableRow } from "./tableRow";
import { ITableColumnWidth } from "../rendering/tableColumnWidth";
import { TableCellVerticalAlignment } from "../rendering/tableCellVerticalAlignment";
import { IKey } from "../foundation/key";
import { TextBaseline } from "../../dart/ui/textBaseline";
import { TextDirection } from "../../dart/ui/textDirection";
import { IRenderObjectWidget } from "./renderObjectWidget";
import { IRenderObjectElement } from "./renderObjectElement";
import { IBuildContext } from "./buildContext";
import { IRenderObject } from "../rendering/renderObject";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { IRenderTable } from "../rendering/renderTable";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { FlexColumnWidth } from "../rendering/flexColumnWidth";
declare const flutter: {
widgets: {
table: (this: void, table: ITable, props : {  border? : ITableBorder | undefined, children : IList<ITableRow>, columnWidths? : {[index: number]: ITableColumnWidth} | undefined, defaultColumnWidth : ITableColumnWidth, defaultVerticalAlignment : TableCellVerticalAlignment, key? : IKey | undefined, textBaseline? : TextBaseline | undefined, textDirection? : TextDirection | undefined,}) => ITable
}
};
export interface ITable


{
children: IList<ITableRow>;
columnWidths: {[index: number]: ITableColumnWidth} | undefined;
defaultColumnWidth: ITableColumnWidth;
textDirection: TextDirection | undefined;
border: ITableBorder | undefined;
defaultVerticalAlignment: TableCellVerticalAlignment;
textBaseline: TextBaseline | undefined;
key: IKey | undefined;
createElement: () => IRenderObjectElement;
createRenderObject: (context: IBuildContext) => IRenderTable;
updateRenderObject: (context: IBuildContext, renderObject: unknown) => void;
didUnmountRenderObject: (renderObject: unknown) => void;
toStringShort: () => string;
debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
getHashCode: () => number;
toStringShallow: ( props : {  joiner : string, minLevel : DiagnosticLevel,}) => string;
toStringDeep: ( props : {  minLevel : DiagnosticLevel, prefixLineOne : string, prefixOtherLines? : string | undefined,}) => string;
toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode;
debugDescribeChildren: () => IList<IDiagnosticsNode>;
toString: ( props : {  minLevel : DiagnosticLevel,}) => string;
}export class Table

 implements IRenderObjectWidget, IDiagnosticable
{    public readonly children: IList<ITableRow> = undefined as any;
    public readonly columnWidths: {[index: number]: ITableColumnWidth} | undefined = undefined as any;
    public readonly defaultColumnWidth: ITableColumnWidth = undefined as any;
    public readonly textDirection: TextDirection | undefined = undefined as any;
    public readonly border: ITableBorder | undefined = undefined as any;
    public readonly defaultVerticalAlignment: TableCellVerticalAlignment = undefined as any;
    public readonly textBaseline: TextBaseline | undefined = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
public constructor( props : {  border? : ITableBorder | undefined, children? : IList<ITableRow>, columnWidths? : {[index: number]: ITableColumnWidth} | undefined, defaultColumnWidth? : ITableColumnWidth, defaultVerticalAlignment? : TableCellVerticalAlignment, key? : IKey | undefined, textBaseline? : TextBaseline | undefined, textDirection? : TextDirection | undefined,}){
flutter.widgets.table(this, {
...tableDefaultProps,
...props
});}
    private readonly _dart_createElement: () => IRenderObjectElement = undefined as any;
    private readonly _dart_createRenderObject: (context: IBuildContext) => IRenderTable = undefined as any;
    private readonly _dart_updateRenderObject: (context: IBuildContext, renderObject: any) => void = undefined as any;
    private readonly _dart_didUnmountRenderObject: (renderObject: any) => void = undefined as any;
    private readonly _dart_toStringShort: () => string = undefined as any;
    private readonly _dart_debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_toStringShallow: ( props : {  joiner : string, minLevel : DiagnosticLevel,}) => string = undefined as any;
    private readonly _dart_toStringDeep: ( props : {  minLevel : DiagnosticLevel, prefixLineOne : string, prefixOtherLines? : string | undefined,}) => string = undefined as any;
    private readonly _dart_toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode = undefined as any;
    private readonly _dart_debugDescribeChildren: () => IList<IDiagnosticsNode> = undefined as any;
    private readonly _dart_toString: ( props : {  minLevel : DiagnosticLevel,}) => string = undefined as any;
public createElement() : IRenderObjectElement {
    return this._dart_createElement();
}
public createRenderObject(context: IBuildContext) : IRenderTable {
    return this._dart_createRenderObject(context);
}
public updateRenderObject(context: IBuildContext, renderObject: any) : void {
    return this._dart_updateRenderObject(context, renderObject);
}
public didUnmountRenderObject(renderObject: any) : void {
    return this._dart_didUnmountRenderObject(renderObject);
}
public toStringShort() : string {
    return this._dart_toStringShort();
}
public debugFillProperties(properties: IDiagnosticPropertiesBuilder) : void {
    return this._dart_debugFillProperties(properties);
}
public getHashCode() : number {
    return this._dart_getHashCode();
}
public toStringShallow( props : {  joiner? : string, minLevel? : DiagnosticLevel,}) : string {
    return this._dart_toStringShallow({
...toStringShallowDefaultProps,
...props
});
}
public toStringDeep( props : {  minLevel? : DiagnosticLevel, prefixLineOne? : string, prefixOtherLines? : string | undefined,}) : string {
    return this._dart_toStringDeep({
...toStringDeepDefaultProps,
...props
});
}
public toDiagnosticsNode( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) : IDiagnosticsNode {
    return this._dart_toDiagnosticsNode(props);
}
public debugDescribeChildren() : IList<IDiagnosticsNode> {
    return this._dart_debugDescribeChildren();
}
public toString( props : {  minLevel? : DiagnosticLevel,}) : string {
    return this._dart_toString({
...toStringDefaultProps,
...props
});
}
}
const tableDefaultProps = {
    children: List.fromArray<ITableRow>([]),
    defaultColumnWidth: new FlexColumnWidth(),
    defaultVerticalAlignment: TableCellVerticalAlignment.top,
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
