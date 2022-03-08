import { ISet } from "../../dart/core/set";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IMouseCursor } from "../services/mouseCursor";
import { IMouseCursorSession } from "../services/mouseCursorSession";
import { MaterialState } from "./materialState";
import { IMaterialStateProperty } from "./materialStateProperty";
declare const flutter: {
    material: {
        materialStateMouseCursor: (
            this: void,
            materialStateMouseCursor: IMaterialStateMouseCursor
        ) => IMaterialStateMouseCursor;
    };
};
export interface IMaterialStateMouseCursor {
    createSession: (device: number) => IMouseCursorSession;
    resolve: (states: ISet<MaterialState>) => IMouseCursor;
    toString: (props: { minLevel: DiagnosticLevel }) => string;
    getDebugDescription: () => string;
    toStringShort: () => string;
    toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    getHashCode: () => number;
}
export class MaterialStateMouseCursor
    implements
        Omit<IMouseCursor, "toString">,
        IDiagnosticable,
        IMaterialStateProperty<IMouseCursor>
{
    public constructor() {
        flutter.material.materialStateMouseCursor(this);
    }
    private readonly _dart_createSession: (
        device: number
    ) => IMouseCursorSession = undefined as any;
    private readonly _dart_resolve: (
        states: ISet<MaterialState>
    ) => IMouseCursor = undefined as any;
    private readonly _dart_toString: (props: {
        minLevel: DiagnosticLevel;
    }) => string = undefined as any;
    private readonly _dart_getDebugDescription: () => string = undefined as any;
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
    public resolve(states: ISet<MaterialState>): IMouseCursor {
        return this._dart_resolve(states);
    }
    public toString(props: { minLevel?: DiagnosticLevel }): string {
        return this._dart_toString({
            ...toStringDefaultProps,
            ...props,
        });
    }
    public getDebugDescription(): string {
        return this._dart_getDebugDescription();
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
