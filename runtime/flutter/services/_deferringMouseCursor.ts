import { IIterable } from "../../dart/core/iterable";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IMouseCursor } from "./mouseCursor";
import { IMouseCursorSession } from "./mouseCursorSession";
declare const flutter: {
    services: {
        _deferringMouseCursorFirstNonDeferred: (
            cursors: IIterable<IMouseCursor>
        ) => IMouseCursor | undefined;
    };
};
export interface I_DeferringMouseCursor {
    createSession: (device: number) => IMouseCursorSession;
    getDebugDescription: () => string;
    toString: (props: { minLevel: DiagnosticLevel }) => string;
    toStringShort: () => string;
    toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    getHashCode: () => number;
}
export class _DeferringMouseCursor
    implements Omit<IMouseCursor, "toString">, IDiagnosticable
{
    public static firstNonDeferred(
        cursors: IIterable<IMouseCursor>
    ): IMouseCursor | undefined {
        return flutter.services._deferringMouseCursorFirstNonDeferred(cursors);
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
    private readonly _dart_getHashCode: () => number = undefined as any;
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
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
const toStringDefaultProps = {
    minLevel: DiagnosticLevel.info,
};
