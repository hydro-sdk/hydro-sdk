import { IPath } from "./path";
import { ITangent } from "./tangent";
export interface IPathMetric {
    length: number;
    isClosed: boolean;
    contourIndex: number;
    getTangentForOffset: (distance: number) => ITangent | undefined;
    extractPath: (
        start: number,
        end: number,
        props: { startWithMoveTo: boolean }
    ) => IPath;
    toString: () => string;
}
