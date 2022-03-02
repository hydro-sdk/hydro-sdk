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
import { IRenderEditable } from "../rendering/renderEditable";
import { IEditableTextState } from "../widgets/editableTextState";
import { ITextSelectionGestureDetectorBuilder } from "../widgets/textSelectionGestureDetectorBuilder";
import { ITextSelectionGestureDetectorBuilderDelegate } from "../widgets/textSelectionGestureDetectorBuilderDelegate";
import { IWidget } from "../widgets/widget";
import { I_CupertinoTextFieldState } from "./_cupertinoTextFieldState";
declare const flutter: {
    cupertino: {
        _cupertinoTextFieldSelectionGestureDetectorBuilder: (
            this: void,
            _cupertinoTextFieldSelectionGestureDetectorBuilder: I_CupertinoTextFieldSelectionGestureDetectorBuilder,
            props: { state: I_CupertinoTextFieldState }
        ) => I_CupertinoTextFieldSelectionGestureDetectorBuilder;
    };
};
export interface I_CupertinoTextFieldSelectionGestureDetectorBuilder {
    delegate: ITextSelectionGestureDetectorBuilderDelegate;
    onSingleTapUp: (details: ITapUpDetails) => void;
    onDragSelectionEnd: (details: IDragEndDetails) => void;
    onTapDown: (details: ITapDownDetails) => void;
    onForcePressStart: (details: IForcePressDetails) => void;
    onForcePressEnd: (details: IForcePressDetails) => void;
    onSingleTapCancel: () => void;
    onSingleLongTapStart: (details: ILongPressStartDetails) => void;
    onSingleLongTapMoveUpdate: (details: ILongPressMoveUpdateDetails) => void;
    onSingleLongTapEnd: (details: ILongPressEndDetails) => void;
    onSecondaryTap: () => void;
    onSecondaryTapDown: (details: ITapDownDetails) => void;
    onDoubleTapDown: (details: ITapDownDetails) => void;
    onDragSelectionStart: (details: IDragStartDetails) => void;
    onDragSelectionUpdate: (
        startDetails: IDragStartDetails,
        updateDetails: IDragUpdateDetails
    ) => void;
    buildGestureDetector: (props: {
        behavior?: HitTestBehavior | undefined;
        key?: IKey | undefined;
        child: IWidget;
    }) => IWidget;
    getShouldShowSelectionToolbar: () => boolean;
    getEditableText: () => IEditableTextState;
    getRenderEditable: () => IRenderEditable;
    toString: () => string;
    getHashCode: () => number;
}
export class _CupertinoTextFieldSelectionGestureDetectorBuilder
    implements ITextSelectionGestureDetectorBuilder
{
    public readonly delegate: ITextSelectionGestureDetectorBuilderDelegate =
        undefined as any;
    public constructor(props: { state: I_CupertinoTextFieldState }) {
        flutter.cupertino._cupertinoTextFieldSelectionGestureDetectorBuilder(
            this,
            props
        );
    }
    private readonly _dart_onSingleTapUp: (details: ITapUpDetails) => void =
        undefined as any;
    private readonly _dart_onDragSelectionEnd: (
        details: IDragEndDetails
    ) => void = undefined as any;
    private readonly _dart_onTapDown: (details: ITapDownDetails) => void =
        undefined as any;
    private readonly _dart_onForcePressStart: (
        details: IForcePressDetails
    ) => void = undefined as any;
    private readonly _dart_onForcePressEnd: (
        details: IForcePressDetails
    ) => void = undefined as any;
    private readonly _dart_onSingleTapCancel: () => void = undefined as any;
    private readonly _dart_onSingleLongTapStart: (
        details: ILongPressStartDetails
    ) => void = undefined as any;
    private readonly _dart_onSingleLongTapMoveUpdate: (
        details: ILongPressMoveUpdateDetails
    ) => void = undefined as any;
    private readonly _dart_onSingleLongTapEnd: (
        details: ILongPressEndDetails
    ) => void = undefined as any;
    private readonly _dart_onSecondaryTap: () => void = undefined as any;
    private readonly _dart_onSecondaryTapDown: (
        details: ITapDownDetails
    ) => void = undefined as any;
    private readonly _dart_onDoubleTapDown: (details: ITapDownDetails) => void =
        undefined as any;
    private readonly _dart_onDragSelectionStart: (
        details: IDragStartDetails
    ) => void = undefined as any;
    private readonly _dart_onDragSelectionUpdate: (
        startDetails: IDragStartDetails,
        updateDetails: IDragUpdateDetails
    ) => void = undefined as any;
    private readonly _dart_buildGestureDetector: (props: {
        behavior?: HitTestBehavior | undefined;
        key?: IKey | undefined;
        child: IWidget;
    }) => IWidget = undefined as any;
    private readonly _dart_getShouldShowSelectionToolbar: () => boolean =
        undefined as any;
    private readonly _dart_getEditableText: () => IEditableTextState =
        undefined as any;
    private readonly _dart_getRenderEditable: () => IRenderEditable =
        undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public onSingleTapUp(details: ITapUpDetails): void {
        return this._dart_onSingleTapUp(details);
    }
    public onDragSelectionEnd(details: IDragEndDetails): void {
        return this._dart_onDragSelectionEnd(details);
    }
    public onTapDown(details: ITapDownDetails): void {
        return this._dart_onTapDown(details);
    }
    public onForcePressStart(details: IForcePressDetails): void {
        return this._dart_onForcePressStart(details);
    }
    public onForcePressEnd(details: IForcePressDetails): void {
        return this._dart_onForcePressEnd(details);
    }
    public onSingleTapCancel(): void {
        return this._dart_onSingleTapCancel();
    }
    public onSingleLongTapStart(details: ILongPressStartDetails): void {
        return this._dart_onSingleLongTapStart(details);
    }
    public onSingleLongTapMoveUpdate(
        details: ILongPressMoveUpdateDetails
    ): void {
        return this._dart_onSingleLongTapMoveUpdate(details);
    }
    public onSingleLongTapEnd(details: ILongPressEndDetails): void {
        return this._dart_onSingleLongTapEnd(details);
    }
    public onSecondaryTap(): void {
        return this._dart_onSecondaryTap();
    }
    public onSecondaryTapDown(details: ITapDownDetails): void {
        return this._dart_onSecondaryTapDown(details);
    }
    public onDoubleTapDown(details: ITapDownDetails): void {
        return this._dart_onDoubleTapDown(details);
    }
    public onDragSelectionStart(details: IDragStartDetails): void {
        return this._dart_onDragSelectionStart(details);
    }
    public onDragSelectionUpdate(
        startDetails: IDragStartDetails,
        updateDetails: IDragUpdateDetails
    ): void {
        return this._dart_onDragSelectionUpdate(startDetails, updateDetails);
    }
    public buildGestureDetector(props: {
        behavior?: HitTestBehavior | undefined;
        key?: IKey | undefined;
        child: IWidget;
    }): IWidget {
        return this._dart_buildGestureDetector(props);
    }
    public getShouldShowSelectionToolbar(): boolean {
        return this._dart_getShouldShowSelectionToolbar();
    }
    public getEditableText(): IEditableTextState {
        return this._dart_getEditableText();
    }
    public getRenderEditable(): IRenderEditable {
        return this._dart_getRenderEditable();
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
