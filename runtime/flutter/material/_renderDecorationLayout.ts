import { IMap } from "../../dart/core/map";
import { IRenderBox } from "../rendering/renderBox";
declare const flutter: {
    material: {
        _renderDecorationLayout: (
            this: void,
            _renderDecorationLayout: I_RenderDecorationLayout,
            props: {
                boxToBaseline: IMap<IRenderBox | undefined, number>;
                containerHeight: number;
                inputBaseline: number;
                outlineBaseline: number;
                subtextBaseline: number;
                subtextHeight: number;
            }
        ) => I_RenderDecorationLayout;
    };
};
export interface I_RenderDecorationLayout {
    boxToBaseline: IMap<IRenderBox | undefined, number>;
    inputBaseline: number;
    outlineBaseline: number;
    subtextBaseline: number;
    containerHeight: number;
    subtextHeight: number;
}
export class _RenderDecorationLayout {
    public readonly boxToBaseline: IMap<IRenderBox | undefined, number> =
        undefined as any;
    public readonly inputBaseline: number = undefined as any;
    public readonly outlineBaseline: number = undefined as any;
    public readonly subtextBaseline: number = undefined as any;
    public readonly containerHeight: number = undefined as any;
    public readonly subtextHeight: number = undefined as any;
    public constructor(props: {
        boxToBaseline: IMap<IRenderBox | undefined, number>;
        containerHeight: number;
        inputBaseline: number;
        outlineBaseline: number;
        subtextBaseline: number;
        subtextHeight: number;
    }) {
        flutter.material._renderDecorationLayout(this, props);
    }
}
