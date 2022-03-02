import { IList } from "../../dart/core/list";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import { IDragEndDetails } from "../gestures/dragEndDetails";
import { IDragStartDetails } from "../gestures/dragStartDetails";
import { IDragUpdateDetails } from "../gestures/dragUpdateDetails";
import { IForcePressDetails } from "../gestures/forcePressDetails";
import { ILongPressEndDetails } from "../gestures/longPressEndDetails";
import { ILongPressMoveUpdateDetails } from "../gestures/longPressMoveUpdateDetails";
import { ILongPressStartDetails } from "../gestures/longPressStartDetails";
import { ITapDownDetails } from "../gestures/tapDownDetails";
import { ITapUpDetails } from "../gestures/tapUpDetails";
import { HitTestBehavior } from "../rendering/hitTestBehavior";
import { IState } from "./state";
import { IStatefulElement } from "./statefulElement";
import { IStatefulWidget } from "./statefulWidget";
import { IWidget } from "./widget";
declare const flutter: {
    widgets: {
        textSelectionGestureDetector: (
            this: void,
            textSelectionGestureDetector: ITextSelectionGestureDetector,
            props: {
                behavior?: HitTestBehavior | undefined;
                key?: IKey | undefined;
                onDoubleTapDown?: (
                    details: ITapDownDetails
                ) => void | undefined;
                onDragSelectionEnd?: (
                    details: IDragEndDetails
                ) => void | undefined;
                onDragSelectionStart?: (
                    details: IDragStartDetails
                ) => void | undefined;
                onDragSelectionUpdate?: (
                    startDetails: IDragStartDetails,
                    updateDetails: IDragUpdateDetails
                ) => void | undefined;
                onForcePressEnd?: (
                    details: IForcePressDetails
                ) => void | undefined;
                onForcePressStart?: (
                    details: IForcePressDetails
                ) => void | undefined;
                onSecondaryTap?: () => void | undefined;
                onSecondaryTapDown?: (
                    details: ITapDownDetails
                ) => void | undefined;
                onSingleLongTapEnd?: (
                    details: ILongPressEndDetails
                ) => void | undefined;
                onSingleLongTapMoveUpdate?: (
                    details: ILongPressMoveUpdateDetails
                ) => void | undefined;
                onSingleLongTapStart?: (
                    details: ILongPressStartDetails
                ) => void | undefined;
                onSingleTapCancel?: () => void | undefined;
                onSingleTapUp?: (details: ITapUpDetails) => void | undefined;
                onTapDown?: (details: ITapDownDetails) => void | undefined;
                child: IWidget;
            }
        ) => ITextSelectionGestureDetector;
    };
};
export interface ITextSelectionGestureDetector {
    behavior: HitTestBehavior | undefined;
    child: IWidget;
    key: IKey | undefined;
    createState: () => IState<IStatefulWidget>;
    createElement: () => IStatefulElement;
    toStringShort: () => string;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    getHashCode: () => number;
    toStringShallow: (props: {
        joiner: string;
        minLevel: DiagnosticLevel;
    }) => string;
    toStringDeep: (props: {
        minLevel: DiagnosticLevel;
        prefixLineOne: string;
        prefixOtherLines?: string | undefined;
    }) => string;
    toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode;
    debugDescribeChildren: () => IList<IDiagnosticsNode>;
    toString: (props: { minLevel: DiagnosticLevel }) => string;
}
export class TextSelectionGestureDetector
    implements IStatefulWidget, IDiagnosticable
{
    public readonly behavior: HitTestBehavior | undefined = undefined as any;
    public readonly child: IWidget = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        behavior?: HitTestBehavior | undefined;
        key?: IKey | undefined;
        onDoubleTapDown?: (details: ITapDownDetails) => void | undefined;
        onDragSelectionEnd?: (details: IDragEndDetails) => void | undefined;
        onDragSelectionStart?: (details: IDragStartDetails) => void | undefined;
        onDragSelectionUpdate?: (
            startDetails: IDragStartDetails,
            updateDetails: IDragUpdateDetails
        ) => void | undefined;
        onForcePressEnd?: (details: IForcePressDetails) => void | undefined;
        onForcePressStart?: (details: IForcePressDetails) => void | undefined;
        onSecondaryTap?: () => void | undefined;
        onSecondaryTapDown?: (details: ITapDownDetails) => void | undefined;
        onSingleLongTapEnd?: (
            details: ILongPressEndDetails
        ) => void | undefined;
        onSingleLongTapMoveUpdate?: (
            details: ILongPressMoveUpdateDetails
        ) => void | undefined;
        onSingleLongTapStart?: (
            details: ILongPressStartDetails
        ) => void | undefined;
        onSingleTapCancel?: () => void | undefined;
        onSingleTapUp?: (details: ITapUpDetails) => void | undefined;
        onTapDown?: (details: ITapDownDetails) => void | undefined;
        child: IWidget;
    }) {
        flutter.widgets.textSelectionGestureDetector(this, props);
    }
    private readonly _dart_createState: () => IState<IStatefulWidget> =
        undefined as any;
    private readonly _dart_createElement: () => IStatefulElement =
        undefined as any;
    private readonly _dart_toStringShort: () => string = undefined as any;
    private readonly _dart_debugFillProperties: (
        properties: IDiagnosticPropertiesBuilder
    ) => void = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_toStringShallow: (props: {
        joiner: string;
        minLevel: DiagnosticLevel;
    }) => string = undefined as any;
    private readonly _dart_toStringDeep: (props: {
        minLevel: DiagnosticLevel;
        prefixLineOne: string;
        prefixOtherLines?: string | undefined;
    }) => string = undefined as any;
    private readonly _dart_toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode = undefined as any;
    private readonly _dart_debugDescribeChildren: () => IList<IDiagnosticsNode> =
        undefined as any;
    private readonly _dart_toString: (props: {
        minLevel: DiagnosticLevel;
    }) => string = undefined as any;
    public createState(): IState<IStatefulWidget> {
        return this._dart_createState();
    }
    public createElement(): IStatefulElement {
        return this._dart_createElement();
    }
    public toStringShort(): string {
        return this._dart_toStringShort();
    }
    public debugFillProperties(properties: IDiagnosticPropertiesBuilder): void {
        return this._dart_debugFillProperties(properties);
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
    public toStringShallow(props: {
        joiner?: string;
        minLevel?: DiagnosticLevel;
    }): string {
        return this._dart_toStringShallow({
            ...toStringShallowDefaultProps,
            ...props,
        });
    }
    public toStringDeep(props: {
        minLevel?: DiagnosticLevel;
        prefixLineOne?: string;
        prefixOtherLines?: string | undefined;
    }): string {
        return this._dart_toStringDeep({
            ...toStringDeepDefaultProps,
            ...props,
        });
    }
    public toDiagnosticsNode(props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }): IDiagnosticsNode {
        return this._dart_toDiagnosticsNode(props);
    }
    public debugDescribeChildren(): IList<IDiagnosticsNode> {
        return this._dart_debugDescribeChildren();
    }
    public toString(props: { minLevel?: DiagnosticLevel }): string {
        return this._dart_toString({
            ...toStringDefaultProps,
            ...props,
        });
    }
}
const toStringShallowDefaultProps = {
    joiner: ", ",
    minLevel: DiagnosticLevel.debug,
};
const toStringDeepDefaultProps = {
    minLevel: DiagnosticLevel.debug,
    prefixLineOne: "",
};
const toStringDefaultProps = {
    minLevel: DiagnosticLevel.info,
};
