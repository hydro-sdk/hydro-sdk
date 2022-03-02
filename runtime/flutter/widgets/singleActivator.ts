import { IIterable } from "../../dart/core/iterable";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { ILogicalKeyboardKey } from "../services/logicalKeyboardKey";
import { IRawKeyboard } from "../services/rawKeyboard";
import { IRawKeyEvent } from "../services/rawKeyEvent";
import { IShortcutActivator } from "./shortcutActivator";
declare const flutter: {
    widgets: {
        singleActivator: (
            this: void,
            singleActivator: ISingleActivator,
            trigger: ILogicalKeyboardKey,
            props: {
                alt: boolean;
                control: boolean;
                meta: boolean;
                shift: boolean;
            }
        ) => ISingleActivator;
    };
};
export interface ISingleActivator {
    trigger: ILogicalKeyboardKey;
    control: boolean;
    shift: boolean;
    alt: boolean;
    meta: boolean;
    getTriggers: () => IIterable<ILogicalKeyboardKey>;
    accepts: (event: IRawKeyEvent, state: IRawKeyboard) => boolean;
    debugDescribeKeys: () => string;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    toStringShort: () => string;
    toString: (props: { minLevel: DiagnosticLevel }) => string;
    toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode;
}
export class SingleActivator implements IDiagnosticable, IShortcutActivator {
    public readonly trigger: ILogicalKeyboardKey = undefined as any;
    public readonly control: boolean = undefined as any;
    public readonly shift: boolean = undefined as any;
    public readonly alt: boolean = undefined as any;
    public readonly meta: boolean = undefined as any;
    public constructor(
        trigger: ILogicalKeyboardKey,
        props: {
            alt?: boolean;
            control?: boolean;
            meta?: boolean;
            shift?: boolean;
        }
    ) {
        flutter.widgets.singleActivator(this, trigger, {
            ...singleActivatorDefaultProps,
            ...props,
        });
    }
    private readonly _dart_getTriggers: () => IIterable<ILogicalKeyboardKey> =
        undefined as any;
    private readonly _dart_accepts: (
        event: IRawKeyEvent,
        state: IRawKeyboard
    ) => boolean = undefined as any;
    private readonly _dart_debugDescribeKeys: () => string = undefined as any;
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
    public getTriggers(): IIterable<ILogicalKeyboardKey> {
        return this._dart_getTriggers();
    }
    public accepts(event: IRawKeyEvent, state: IRawKeyboard): boolean {
        return this._dart_accepts(event, state);
    }
    public debugDescribeKeys(): string {
        return this._dart_debugDescribeKeys();
    }
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
}
const singleActivatorDefaultProps = {
    alt: false,
    control: false,
    meta: false,
    shift: false,
};
const toStringDefaultProps = {
    minLevel: DiagnosticLevel.info,
};
