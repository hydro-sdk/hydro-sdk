import { IRenderSemanticsGestureHandler } from "../rendering/renderSemanticsGestureHandler";
import { IRawGestureDetectorState } from "./rawGestureDetectorState";
import { ISemanticsGestureDelegate } from "./semanticsGestureDelegate";
declare const flutter: {
    widgets: {
        _defaultSemanticsGestureDelegate: (
            this: void,
            _defaultSemanticsGestureDelegate: I_DefaultSemanticsGestureDelegate,
            detectorState: IRawGestureDetectorState
        ) => I_DefaultSemanticsGestureDelegate;
    };
};
export interface I_DefaultSemanticsGestureDelegate {
    detectorState: IRawGestureDetectorState;
    assignSemantics: (renderObject: IRenderSemanticsGestureHandler) => void;
    toString: () => string;
    getHashCode: () => number;
}
export class _DefaultSemanticsGestureDelegate
    implements ISemanticsGestureDelegate
{
    public readonly detectorState: IRawGestureDetectorState = undefined as any;
    public constructor(detectorState: IRawGestureDetectorState) {
        flutter.widgets._defaultSemanticsGestureDelegate(this, detectorState);
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
