import { IRenderSemanticsGestureHandler } from "../rendering/renderSemanticsGestureHandler";
import { ISemanticsGestureDelegate } from "./semanticsGestureDelegate";
declare const flutter: {
    widgets: {
        _modalBarrierSemanticsDelegate: (
            this: void,
            _modalBarrierSemanticsDelegate: I_ModalBarrierSemanticsDelegate,
            props?: { onDismiss?: () => void | undefined }
        ) => I_ModalBarrierSemanticsDelegate;
    };
};
export interface I_ModalBarrierSemanticsDelegate {
    assignSemantics: (renderObject: IRenderSemanticsGestureHandler) => void;
    toString: () => string;
    getHashCode: () => number;
}
export class _ModalBarrierSemanticsDelegate
    implements ISemanticsGestureDelegate
{
    public constructor(props?: { onDismiss?: () => void | undefined }) {
        flutter.widgets._modalBarrierSemanticsDelegate(this, props);
    }
    private readonly _dart_assignSemantics: (
        renderObject: IRenderSemanticsGestureHandler
    ) => void = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public assignSemantics(renderObject: IRenderSemanticsGestureHandler): void {
        return this._dart_assignSemantics(renderObject);
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
