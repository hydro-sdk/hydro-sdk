
import { IFocusNode } from "./focusNode";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { IList } from "../../dart/core/list";
import { TextDirection } from "../../dart/ui/textDirection";
import { IIterable } from "../../dart/core/iterable";
import { IDirectionality } from "./directionality";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { IRect } from "../../dart/ui/rect";
declare const flutter: {
widgets: {
_readingOrderSortData: (this: void, _readingOrderSortData: I_ReadingOrderSortData, node: IFocusNode) => I_ReadingOrderSortData;
_readingOrderSortDataCommonDirectionalityOf: (list: IList<I_ReadingOrderSortData>) => TextDirection | undefined;
_readingOrderSortDataSortWithDirectionality: (list: IList<I_ReadingOrderSortData>, directionality: TextDirection) => void
}
};
export interface I_ReadingOrderSortData


{
directionality: TextDirection | undefined;
rect: IRect;
node: IFocusNode;
getDirectionalAncestors: () => IIterable<IDirectionality>;
debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
toStringShort: () => string;
toString: ( props : {  minLevel : DiagnosticLevel,}) => string;
toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode;
}export class _ReadingOrderSortData

 implements IDiagnosticable
{    public readonly directionality: TextDirection | undefined = undefined as any;
    public readonly rect: IRect = undefined as any;
    public readonly node: IFocusNode = undefined as any;
public constructor(node: IFocusNode){
flutter.widgets._readingOrderSortData(this, node);}
public static commonDirectionalityOf(list: IList<I_ReadingOrderSortData>) : TextDirection | undefined{
return flutter.widgets._readingOrderSortDataCommonDirectionalityOf(list);
}public static sortWithDirectionality(list: IList<I_ReadingOrderSortData>, directionality: TextDirection) : void{
return flutter.widgets._readingOrderSortDataSortWithDirectionality(list, directionality);
}    private readonly _dart_getDirectionalAncestors: () => IIterable<IDirectionality> = undefined as any;
    private readonly _dart_debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void = undefined as any;
    private readonly _dart_toStringShort: () => string = undefined as any;
    private readonly _dart_toString: ( props : {  minLevel : DiagnosticLevel,}) => string = undefined as any;
    private readonly _dart_toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode = undefined as any;
public getDirectionalAncestors() : IIterable<IDirectionality> {
    return this._dart_getDirectionalAncestors();
}
public debugFillProperties(properties: IDiagnosticPropertiesBuilder) : void {
    return this._dart_debugFillProperties(properties);
}
public toStringShort() : string {
    return this._dart_toStringShort();
}
public toString( props : {  minLevel? : DiagnosticLevel,}) : string {
    return this._dart_toString({
...toStringDefaultProps,
...props
});
}
public toDiagnosticsNode( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) : IDiagnosticsNode {
    return this._dart_toDiagnosticsNode(props);
}
}
const toStringDefaultProps = {
    minLevel: DiagnosticLevel.info,
};
