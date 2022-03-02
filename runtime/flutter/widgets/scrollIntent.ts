import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { AxisDirection } from "../painting/axisDirection";
import { IIntent } from "./intent";
import { ScrollIncrementType } from "./scrollIncrementType";
declare const flutter: {
    widgets: {
        scrollIntent: (
            this: void,
            scrollIntent: IScrollIntent,
            props: { type: ScrollIncrementType; direction: AxisDirection }
        ) => IScrollIntent;
    };
};
export interface IScrollIntent {
    direction: AxisDirection;
    type: ScrollIncrementType;
    toStringShort: () => string;
    toString: (props: { minLevel: DiagnosticLevel }) => string;
    toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    getHashCode: () => number;
}
export class ScrollIntent implements Omit<IIntent>, IDiagnosticable {
    public readonly direction: AxisDirection = undefined as any;
    public readonly type: ScrollIncrementType = undefined as any;
    public constructor(props: {
        type?: ScrollIncrementType;
        direction: AxisDirection;
    }) {
        flutter.widgets.scrollIntent(this, {
            ...scrollIntentDefaultProps,
            ...props,
        });
    }
    private readonly _dart_toStringShort: () => string = undefined as any;
    private readonly _dart_toString: (props: {
        minLevel: DiagnosticLevel;
    }) => string = undefined as any;
    private readonly _dart_toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode = undefined as any;
    private readonly _dart_debugFillProperties: (
        properties: IDiagnosticPropertiesBuilder
    ) => void = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
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
    public debugFillProperties(properties: IDiagnosticPropertiesBuilder): void {
        return this._dart_debugFillProperties(properties);
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
const scrollIntentDefaultProps = {
    type: ScrollIncrementType.line,
};
const toStringDefaultProps = {
    minLevel: DiagnosticLevel.info,
};
