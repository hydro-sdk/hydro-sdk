import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IPointerEnterEvent } from "../gestures/pointerEnterEvent";
import { IPointerExitEvent } from "../gestures/pointerExitEvent";
import { IMouseCursor, MouseCursor } from "./mouseCursor";
declare const flutter: {
    services: {
        mouseTrackerAnnotation: (
            this: void,
            mouseTrackerAnnotation: IMouseTrackerAnnotation,
            props: {
                cursor: IMouseCursor;
                onEnter?: (event: IPointerEnterEvent) => void | undefined;
                onExit?: (event: IPointerExitEvent) => void | undefined;
                validForMouseTracker: boolean;
            }
        ) => IMouseTrackerAnnotation;
    };
};
export interface IMouseTrackerAnnotation {
    cursor: IMouseCursor;
    validForMouseTracker: boolean;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    toStringShort: () => string;
    toString: (props: { minLevel: DiagnosticLevel }) => string;
    toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode;
}
export class MouseTrackerAnnotation implements IDiagnosticable {
    public readonly cursor: IMouseCursor = undefined as any;
    public readonly validForMouseTracker: boolean = undefined as any;
    public constructor(props: {
        cursor?: IMouseCursor;
        onEnter?: (event: IPointerEnterEvent) => void | undefined;
        onExit?: (event: IPointerExitEvent) => void | undefined;
        validForMouseTracker?: boolean;
    }) {
        flutter.services.mouseTrackerAnnotation(this, {
            ...mouseTrackerAnnotationDefaultProps,
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
const mouseTrackerAnnotationDefaultProps = {
    cursor: MouseCursor.defer,
    validForMouseTracker: true,
};
const toStringDefaultProps = {
    minLevel: DiagnosticLevel.info,
};
