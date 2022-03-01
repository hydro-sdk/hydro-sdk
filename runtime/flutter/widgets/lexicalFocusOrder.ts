
import { IFocusOrder } from "./focusOrder";
import { IComparable } from "../../dart/core/comparable";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
declare const flutter: {
widgets: {
lexicalFocusOrder: (this: void, lexicalFocusOrder: ILexicalFocusOrder, order: string) => ILexicalFocusOrder
}
};
export interface ILexicalFocusOrder


{
order: string;
doCompare: (other: unknown) => number;
debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
compareTo: (other: IFocusOrder) => number;
toStringShort: () => string;
toString: ( props : {  minLevel : DiagnosticLevel,}) => string;
toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode;
getHashCode: () => number;
}export class LexicalFocusOrder

 implements Omit<IFocusOrder, >, IDiagnosticable, IComparable<IFocusOrder>
{    public readonly order: string = undefined as any;
public constructor(order: string){
flutter.widgets.lexicalFocusOrder(this, order);}
    private readonly _dart_doCompare: (other: any) => number = undefined as any;
    private readonly _dart_debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void = undefined as any;
    private readonly _dart_compareTo: (other: IFocusOrder) => number = undefined as any;
    private readonly _dart_toStringShort: () => string = undefined as any;
    private readonly _dart_toString: ( props : {  minLevel : DiagnosticLevel,}) => string = undefined as any;
    private readonly _dart_toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
public doCompare(other: any) : number {
    return this._dart_doCompare(other);
}
public debugFillProperties(properties: IDiagnosticPropertiesBuilder) : void {
    return this._dart_debugFillProperties(properties);
}
public compareTo(other: IFocusOrder) : number {
    return this._dart_compareTo(other);
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
public getHashCode() : number {
    return this._dart_getHashCode();
}
}
const toStringDefaultProps = {
    minLevel: DiagnosticLevel.info,
};
