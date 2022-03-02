import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { I_NoopMouseCursorSession } from "./_noopMouseCursorSession";
import { IMouseCursor } from "./mouseCursor";
import { IMouseCursorSession } from "./mouseCursorSession";
export interface I_NoopMouseCursor extends Omit<IMouseCursor> {
    createSession: (device: number) => I_NoopMouseCursorSession;
    getDebugDescription: () => string;
}
