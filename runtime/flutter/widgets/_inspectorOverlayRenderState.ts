import { IList } from "../../dart/core/list";
import { IRect } from "../../dart/ui/rect";
import { TextDirection } from "../../dart/ui/textDirection";
import { I_TransformedRect } from "./_transformedRect";
declare const flutter: {
    widgets: {
        _inspectorOverlayRenderState: (
            this: void,
            _inspectorOverlayRenderState: I_InspectorOverlayRenderState,
            props: {
                candidates: IList<I_TransformedRect>;
                overlayRect: IRect;
                selected: I_TransformedRect;
                textDirection: TextDirection;
                tooltip: string;
            }
        ) => I_InspectorOverlayRenderState;
    };
};
export interface I_InspectorOverlayRenderState {
    overlayRect: IRect;
    selected: I_TransformedRect;
    candidates: IList<I_TransformedRect>;
    tooltip: string;
    textDirection: TextDirection;
    getHashCode: () => number;
}
export class _InspectorOverlayRenderState {
    public readonly overlayRect: IRect = undefined as any;
    public readonly selected: I_TransformedRect = undefined as any;
    public readonly candidates: IList<I_TransformedRect> = undefined as any;
    public readonly tooltip: string = undefined as any;
    public readonly textDirection: TextDirection = undefined as any;
    public constructor(props: {
        candidates: IList<I_TransformedRect>;
        overlayRect: IRect;
        selected: I_TransformedRect;
        textDirection: TextDirection;
        tooltip: string;
    }) {
        flutter.widgets._inspectorOverlayRenderState(this, props);
    }
    private readonly _dart_getHashCode: () => number = undefined as any;
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
