import { IDuration } from "../../dart/core/duration";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKeyEvent } from "./keyEvent";
import { ILogicalKeyboardKey } from "./logicalKeyboardKey";
import { IPhysicalKeyboardKey } from "./physicalKeyboardKey";
declare const flutter: {
    services: {
        keyDownEvent: (
            this: void,
            keyDownEvent: IKeyDownEvent,
            props: {
                character?: string | undefined;
                synthesized: boolean;
                logicalKey: ILogicalKeyboardKey;
                physicalKey: IPhysicalKeyboardKey;
                timeStamp: IDuration;
            }
        ) => IKeyDownEvent;
    };
};
export interface IKeyDownEvent {
    physicalKey: IPhysicalKeyboardKey;
    logicalKey: ILogicalKeyboardKey;
    character: string | undefined;
    timeStamp: IDuration;
    synthesized: boolean;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    toStringShort: () => string;
    toString: (props: { minLevel: DiagnosticLevel }) => string;
    toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode;
    getHashCode: () => number;
}
export class KeyDownEvent
    implements Omit<IKeyEvent, "debugFillProperties">, IDiagnosticable
{
    public readonly physicalKey: IPhysicalKeyboardKey = undefined as any;
    public readonly logicalKey: ILogicalKeyboardKey = undefined as any;
    public readonly character: string | undefined = undefined as any;
    public readonly timeStamp: IDuration = undefined as any;
    public readonly synthesized: boolean = undefined as any;
    public constructor(props: {
        character?: string | undefined;
        synthesized?: boolean;
        logicalKey: ILogicalKeyboardKey;
        physicalKey: IPhysicalKeyboardKey;
        timeStamp: IDuration;
    }) {
        flutter.services.keyDownEvent(this, {
            ...keyDownEventDefaultProps,
            ...props,
        });
    }
    private readonly _dart_debugFillProperties: (
        properties: IDiagnosticPropertiesBuilder
    ) => void = undefined as any;
    private readonly _dart_toStringShort: () => string = undefined as any;
    private readonly _dart_toString: (props: {
        minLevel: DiagnosticLevel;
    }) => string = undefined as any;
    private readonly _dart_toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public debugFillProperties(properties: IDiagnosticPropertiesBuilder): void {
        return this._dart_debugFillProperties(properties);
    }
    public toStringShort(): string {
        return this._dart_toStringShort();
    }
    public toString(props: { minLevel?: DiagnosticLevel }): string {
        return this._dart_toString({
            ...toStringDefaultProps,
            ...props,
        });
    }
    public toDiagnosticsNode(props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }): IDiagnosticsNode {
        return this._dart_toDiagnosticsNode(props);
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
const keyDownEventDefaultProps = {
    synthesized: false,
};
const toStringDefaultProps = {
    minLevel: DiagnosticLevel.info,
};
