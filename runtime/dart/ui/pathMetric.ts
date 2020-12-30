import { Path } from "./path";
import { Tangent } from "./tangent";
declare const dart: {
    ui: {};
};
const extractPathDefaultProps = {
    startWithMoveTo: true,
};
export interface IPathMetric {
    length: number;
    isClosed: boolean;
    contourIndex: number;
    getTangentForOffset: (distance: number) => Tangent | undefined;
    extractPath: (
        start: number,
        end: number,
        props: { startWithMoveTo: boolean }
    ) => Path | undefined;
    toString: () => string;
}
export class PathMetric implements IPathMetric {
    public readonly length: number = undefined as any;
    public readonly isClosed: boolean = undefined as any;
    public readonly contourIndex: number = undefined as any;
    private readonly _dart_getTangentForOffset: (
        distance: number
    ) => Tangent | undefined = undefined as any;
    private readonly _dart_extractPath: (
        start: number,
        end: number,
        props: { startWithMoveTo: boolean }
    ) => Path | undefined = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    public getTangentForOffset(distance: number): Tangent | undefined {
        return this._dart_getTangentForOffset(distance);
    }
    public extractPath(
        start: number,
        end: number,
        props: { startWithMoveTo?: boolean }
    ): Path | undefined {
        return this._dart_extractPath(start, end, {
            ...extractPathDefaultProps,
            ...props,
        });
    }
    public toString(): string {
        return this._dart_toString();
    }
}
