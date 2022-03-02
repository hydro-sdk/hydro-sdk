import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IMouseCursorSession } from "./mouseCursorSession";
declare const flutter: {
    services: {
        mouseCursor: (this: void, mouseCursor: IMouseCursor) => IMouseCursor;
    };
};
export interface IMouseCursor {
    createSession: (device: number) => IMouseCursorSession;
    getDebugDescription: () => string;
    toString: (props: { minLevel: DiagnosticLevel }) => string;
    toStringShort: () => string;
    toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
}
export class MouseCursor implements IDiagnosticable {
    public constructor() {
        flutter.services.mouseCursor(this);
    }
    private readonly _dart_createSession: (
        device: number
    ) => IMouseCursorSession = undefined as any;
    private readonly _dart_getDebugDescription: () => string = undefined as any;
    private readonly _dart_toString: (props: {
        minLevel: DiagnosticLevel;
    }) => string = undefined as any;
    private readonly _dart_toStringShort: () => string = undefined as any;
    private readonly _dart_toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode = undefined as any;
    private readonly _dart_debugFillProperties: (
        properties: IDiagnosticPropertiesBuilder
    ) => void = undefined as any;
    public createSession(device: number): IMouseCursorSession {
        return this._dart_createSession(device);
    }
    public getDebugDescription(): string {
        return this._dart_getDebugDescription();
    }
    public toString(props: { minLevel?: DiagnosticLevel }): string {
        return this._dart_toString({
            ...toStringDefaultProps,
            ...props,
        });
    }
    public toStringShort(): string {
        return this._dart_toStringShort();
    }
    public toDiagnosticsNode(props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }): IDiagnosticsNode {
        return this._dart_toDiagnosticsNode(props);
    }
    public debugFillProperties(properties: IDiagnosticPropertiesBuilder): void {
        return this._dart_debugFillProperties(properties);
    }
}
const toStringDefaultProps = {
    minLevel: DiagnosticLevel.info,
};
