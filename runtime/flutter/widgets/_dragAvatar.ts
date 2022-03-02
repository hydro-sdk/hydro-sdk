import { IOffset, Offset } from "../../dart/ui/offset";
import { IDrag } from "../gestures/drag";
import { IDragEndDetails } from "../gestures/dragEndDetails";
import { IDragUpdateDetails } from "../gestures/dragUpdateDetails";
import { IVelocity } from "../gestures/velocity";
import { Axis } from "../painting/axis";
import { _DragEndKind } from "./_dragEndKind";
import { IOverlayState } from "./overlayState";
import { IWidget } from "./widget";
declare const flutter: {
    widgets: {
        _dragAvatar: <T>(
            this: void,
            _dragAvatar: I_DragAvatar<T>,
            props: {
                axis?: Axis | undefined;
                data?: T | undefined;
                dragStartPoint: IOffset;
                feedback?: IWidget | undefined;
                feedbackOffset: IOffset;
                onDragEnd?: (
                    velocity: IVelocity,
                    offset: IOffset,
                    wasAccepted: boolean
                ) => void | undefined;
                onDragUpdate?: (
                    details: IDragUpdateDetails
                ) => void | undefined;
                ignoringFeedbackSemantics: boolean;
                initialPosition: IOffset;
                overlayState: IOverlayState;
            }
        ) => I_DragAvatar<T>;
    };
};
export interface I_DragAvatar<T> {
    axis: Axis | undefined;
    dragStartPoint: IOffset;
    feedback: IWidget | undefined;
    feedbackOffset: IOffset;
    overlayState: IOverlayState;
    ignoringFeedbackSemantics: boolean;
    update: (details: IDragUpdateDetails) => void;
    end: (details: IDragEndDetails) => void;
    cancel: () => void;
    updateDrag: (globalPosition: IOffset) => void;
    finishDrag: (
        endKind: _DragEndKind,
        velocity?: IVelocity | undefined
    ) => void;
    toString: () => string;
    getHashCode: () => number;
}
export class _DragAvatar<T> implements IDrag {
    public readonly axis: Axis | undefined = undefined as any;
    public readonly dragStartPoint: IOffset = undefined as any;
    public readonly feedback: IWidget | undefined = undefined as any;
    public readonly feedbackOffset: IOffset = undefined as any;
    public readonly overlayState: IOverlayState = undefined as any;
    public readonly ignoringFeedbackSemantics: boolean = undefined as any;
    public constructor(props: {
        axis?: Axis | undefined;
        data?: T | undefined;
        dragStartPoint?: IOffset;
        feedback?: IWidget | undefined;
        feedbackOffset?: IOffset;
        onDragEnd?: (
            velocity: IVelocity,
            offset: IOffset,
            wasAccepted: boolean
        ) => void | undefined;
        onDragUpdate?: (details: IDragUpdateDetails) => void | undefined;
        ignoringFeedbackSemantics: boolean;
        initialPosition: IOffset;
        overlayState: IOverlayState;
    }) {
        flutter.widgets._dragAvatar(this, {
            ..._dragAvatarDefaultProps,
            ...props,
        });
    }
    private readonly _dart_update: (details: IDragUpdateDetails) => void =
        undefined as any;
    private readonly _dart_end: (details: IDragEndDetails) => void =
        undefined as any;
    private readonly _dart_cancel: () => void = undefined as any;
    private readonly _dart_updateDrag: (globalPosition: IOffset) => void =
        undefined as any;
    private readonly _dart_finishDrag: (
        endKind: _DragEndKind,
        velocity?: IVelocity | undefined
    ) => void = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public update(details: IDragUpdateDetails): void {
        return this._dart_update(details);
    }
    public end(details: IDragEndDetails): void {
        return this._dart_end(details);
    }
    public cancel(): void {
        return this._dart_cancel();
    }
    public updateDrag(globalPosition: IOffset): void {
        return this._dart_updateDrag(globalPosition);
    }
    public finishDrag(
        endKind: _DragEndKind,
        velocity?: IVelocity | undefined
    ): void {
        return this._dart_finishDrag(endKind, velocity);
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
const _dragAvatarDefaultProps = {
    dragStartPoint: Offset.zero,
    feedbackOffset: Offset.zero,
};
