import { IRenderSemanticsGestureHandler } from "../rendering/renderSemanticsGestureHandler";
declare const flutter: {
    widgets: {
        semanticsGestureDelegate: (
            this: void,
            semanticsGestureDelegate: ISemanticsGestureDelegate
        ) => ISemanticsGestureDelegate;
    };
};
export interface ISemanticsGestureDelegate {
    assignSemantics: (renderObject: IRenderSemanticsGestureHandler) => void;
    toString: () => string;
}
export class SemanticsGestureDelegate {
    public constructor() {
        flutter.widgets.semanticsGestureDelegate(this);
    }
    private readonly _dart_assignSemantics: (
        renderObject: IRenderSemanticsGestureHandler
    ) => void = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    public assignSemantics(renderObject: IRenderSemanticsGestureHandler): void {
        return this._dart_assignSemantics(renderObject);
    }
    public toString(): string {
        return this._dart_toString();
    }
}
