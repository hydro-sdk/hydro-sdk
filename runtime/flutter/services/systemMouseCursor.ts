import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IMouseCursor } from "./mouseCursor";
import { IMouseCursorSession } from "./mouseCursorSession";
export interface ISystemMouseCursor extends Omit<IMouseCursor> {
    kind: string;
    getDebugDescription: () => string;
    createSession: (device: number) => IMouseCursorSession;
    getHashCode: () => number;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
}
