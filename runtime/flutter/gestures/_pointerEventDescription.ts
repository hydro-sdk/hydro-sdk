import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
export interface I_PointerEventDescription {
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    toStringFull: () => string;
}
