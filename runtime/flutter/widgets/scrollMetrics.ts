import { Axis } from "../painting/axis";
import { AxisDirection } from "../painting/axisDirection";
export interface IScrollMetrics {
    copyWith: (props?: {
        axisDirection?: AxisDirection | undefined;
        maxScrollExtent?: number | undefined;
        minScrollExtent?: number | undefined;
        pixels?: number | undefined;
        viewportDimension?: number | undefined;
    }) => IScrollMetrics;
    getMinScrollExtent: () => number;
    getMaxScrollExtent: () => number;
    getHasContentDimensions: () => boolean;
    getPixels: () => number;
    getHasPixels: () => boolean;
    getViewportDimension: () => number;
    getHasViewportDimension: () => boolean;
    getAxisDirection: () => AxisDirection;
    getAxis: () => Axis;
    getOutOfRange: () => boolean;
    getAtEdge: () => boolean;
    getExtentBefore: () => number;
    getExtentInside: () => number;
    getExtentAfter: () => number;
}
