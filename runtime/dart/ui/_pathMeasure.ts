import { IPath } from "./path";
import { ITangent } from "./tangent";
declare const dart: {
    ui: {
        _pathMeasure: (
            this: void,
            _pathMeasure: I_PathMeasure,
            path: IPath,
            forceClosed: boolean
        ) => I_PathMeasure;
    };
};
export interface I_PathMeasure {
    currentContourIndex: number;
    length: (contourIndex: number) => number;
    getTangentForOffset: (
        contourIndex: number,
        distance: number
    ) => ITangent | undefined;
    extractPath: (
        contourIndex: number,
        start: number,
        end: number,
        props: { startWithMoveTo: boolean }
    ) => IPath;
    isClosed: (contourIndex: number) => boolean;
}
export class _PathMeasure {
    public readonly currentContourIndex: number = undefined as any;
    public constructor(path: IPath, forceClosed: boolean) {
        dart.ui._pathMeasure(this, path, forceClosed);
    }
    private readonly _dart_length: (contourIndex: number) => number =
        undefined as any;
    private readonly _dart_getTangentForOffset: (
        contourIndex: number,
        distance: number
    ) => ITangent | undefined = undefined as any;
    private readonly _dart_extractPath: (
        contourIndex: number,
        start: number,
        end: number,
        props: { startWithMoveTo: boolean }
    ) => IPath = undefined as any;
    private readonly _dart_isClosed: (contourIndex: number) => boolean =
        undefined as any;
    public length(contourIndex: number): number {
        return this._dart_length(contourIndex);
    }
    public getTangentForOffset(
        contourIndex: number,
        distance: number
    ): ITangent | undefined {
        return this._dart_getTangentForOffset(contourIndex, distance);
    }
    public extractPath(
        contourIndex: number,
        start: number,
        end: number,
        props: { startWithMoveTo?: boolean }
    ): IPath {
        return this._dart_extractPath(contourIndex, start, end, {
            ...extractPathDefaultProps,
            ...props,
        });
    }
    public isClosed(contourIndex: number): boolean {
        return this._dart_isClosed(contourIndex);
    }
}
const extractPathDefaultProps = {
    startWithMoveTo: true,
};
