
import { DiagnosticLevel } from "./diagnosticLevel";
import { DiagnosticsTreeStyle } from "./diagnosticsTreeStyle";
import { IDiagnosticsNode } from "./diagnosticsNode";
import { IDiagnosticPropertiesBuilder } from "./diagnosticPropertiesBuilder";
export interface IDiagnosticable


{
toStringShort: () => string;
toString: ( props : {  minLevel : DiagnosticLevel,}) => string;
toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode;
debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
}