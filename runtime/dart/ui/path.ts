import { double } from "../core/double";
import { IList } from "../core/list";
import { IFloat64List } from "../typed_data/float64List";
import { IOffset } from "./offset";
import { PathFillType } from "./pathFillType";
import { IPathMetrics } from "./pathMetrics";
import { PathOperation } from "./pathOperation";
import { IRadius, Radius } from "./radius";
import { IRect } from "./rect";
import { IRRect } from "./rRect";
declare const dart: {
    ui: {
        path: (this: void, path: IPath) => IPath;
        pathFrom: (source: IPath) => IPath;
        pathCombine: (
            operation: PathOperation,
            path1: IPath,
            path2: IPath
        ) => IPath;
    };
};
const arcToPointDefaultProps = {
    clockwise: true,
    largeArc: false,
    radius: Radius.zero,
    rotation: 0.0,
};
const relativeArcToPointDefaultProps = {
    clockwise: true,
    largeArc: false,
    radius: Radius.zero,
    rotation: 0.0,
};
const computeMetricsDefaultProps = {
    forceClosed: false,
};
export interface IPath {
    getFillType: () => PathFillType;
    setFillType: (value: PathFillType) => void;
    moveTo: (x: number, y: number) => void;
    relativeMoveTo: (dx: number, dy: number) => void;
    lineTo: (x: number, y: number) => void;
    relativeLineTo: (dx: number, dy: number) => void;
    quadraticBezierTo: (x1: number, y1: number, x2: number, y2: number) => void;
    relativeQuadraticBezierTo: (
        x1: number,
        y1: number,
        x2: number,
        y2: number
    ) => void;
    cubicTo: (
        x1: number,
        y1: number,
        x2: number,
        y2: number,
        x3: number,
        y3: number
    ) => void;
    relativeCubicTo: (
        x1: number,
        y1: number,
        x2: number,
        y2: number,
        x3: number,
        y3: number
    ) => void;
    conicTo: (
        x1: number,
        y1: number,
        x2: number,
        y2: number,
        w: number
    ) => void;
    relativeConicTo: (
        x1: number,
        y1: number,
        x2: number,
        y2: number,
        w: number
    ) => void;
    arcTo: (
        rect: IRect,
        startAngle: number,
        sweepAngle: number,
        forceMoveTo: boolean
    ) => void;
    arcToPoint: (
        arcEnd: IOffset,
        props: {
            clockwise: boolean;
            largeArc: boolean;
            radius: IRadius;
            rotation: number;
        }
    ) => void;
    relativeArcToPoint: (
        arcEndDelta: IOffset,
        props: {
            clockwise: boolean;
            largeArc: boolean;
            radius: IRadius;
            rotation: number;
        }
    ) => void;
    addRect: (rect: IRect) => void;
    addOval: (oval: IRect) => void;
    addArc: (oval: IRect, startAngle: number, sweepAngle: number) => void;
    addPolygon: (points: IList<IOffset>, close: boolean) => void;
    addRRect: (rrect: IRRect) => void;
    addPath: (
        path: IPath,
        offset: IOffset,
        props: { matrix4?: IFloat64List | undefined }
    ) => void;
    extendWithPath: (
        path: IPath,
        offset: IOffset,
        props: { matrix4?: IFloat64List | undefined }
    ) => void;
    close: () => void;
    reset: () => void;
    contains: (point: IOffset) => boolean;
    shift: (offset: IOffset) => IPath;
    transform: (matrix4: IFloat64List) => IPath;
    getBounds: () => IRect;
    computeMetrics: (props: { forceClosed: boolean }) => IPathMetrics;
}
export class Path {
    public constructor() {
        dart.ui.path(this);
    }
    public static from(source: IPath): IPath {
        return dart.ui.pathFrom(source);
    }
    public static combine(
        operation: PathOperation,
        path1: IPath,
        path2: IPath
    ): IPath {
        return dart.ui.pathCombine(operation, path1, path2);
    }
    private readonly _dart_getFillType: () => PathFillType = undefined as any;
    private readonly _dart_setFillType: (
        value: PathFillType
    ) => void = undefined as any;
    private readonly _dart_moveTo: (
        x: number,
        y: number
    ) => void = undefined as any;
    private readonly _dart_relativeMoveTo: (
        dx: number,
        dy: number
    ) => void = undefined as any;
    private readonly _dart_lineTo: (
        x: number,
        y: number
    ) => void = undefined as any;
    private readonly _dart_relativeLineTo: (
        dx: number,
        dy: number
    ) => void = undefined as any;
    private readonly _dart_quadraticBezierTo: (
        x1: number,
        y1: number,
        x2: number,
        y2: number
    ) => void = undefined as any;
    private readonly _dart_relativeQuadraticBezierTo: (
        x1: number,
        y1: number,
        x2: number,
        y2: number
    ) => void = undefined as any;
    private readonly _dart_cubicTo: (
        x1: number,
        y1: number,
        x2: number,
        y2: number,
        x3: number,
        y3: number
    ) => void = undefined as any;
    private readonly _dart_relativeCubicTo: (
        x1: number,
        y1: number,
        x2: number,
        y2: number,
        x3: number,
        y3: number
    ) => void = undefined as any;
    private readonly _dart_conicTo: (
        x1: number,
        y1: number,
        x2: number,
        y2: number,
        w: number
    ) => void = undefined as any;
    private readonly _dart_relativeConicTo: (
        x1: number,
        y1: number,
        x2: number,
        y2: number,
        w: number
    ) => void = undefined as any;
    private readonly _dart_arcTo: (
        rect: IRect,
        startAngle: number,
        sweepAngle: number,
        forceMoveTo: boolean
    ) => void = undefined as any;
    private readonly _dart_arcToPoint: (
        arcEnd: IOffset,
        props: {
            clockwise: boolean;
            largeArc: boolean;
            radius: IRadius;
            rotation: number;
        }
    ) => void = undefined as any;
    private readonly _dart_relativeArcToPoint: (
        arcEndDelta: IOffset,
        props: {
            clockwise: boolean;
            largeArc: boolean;
            radius: IRadius;
            rotation: number;
        }
    ) => void = undefined as any;
    private readonly _dart_addRect: (rect: IRect) => void = undefined as any;
    private readonly _dart_addOval: (oval: IRect) => void = undefined as any;
    private readonly _dart_addArc: (
        oval: IRect,
        startAngle: number,
        sweepAngle: number
    ) => void = undefined as any;
    private readonly _dart_addPolygon: (
        points: IList<IOffset>,
        close: boolean
    ) => void = undefined as any;
    private readonly _dart_addRRect: (rrect: IRRect) => void = undefined as any;
    private readonly _dart_addPath: (
        path: IPath,
        offset: IOffset,
        props: { matrix4?: IFloat64List | undefined }
    ) => void = undefined as any;
    private readonly _dart_extendWithPath: (
        path: IPath,
        offset: IOffset,
        props: { matrix4?: IFloat64List | undefined }
    ) => void = undefined as any;
    private readonly _dart_close: () => void = undefined as any;
    private readonly _dart_reset: () => void = undefined as any;
    private readonly _dart_contains: (
        point: IOffset
    ) => boolean = undefined as any;
    private readonly _dart_shift: (offset: IOffset) => IPath = undefined as any;
    private readonly _dart_transform: (
        matrix4: IFloat64List
    ) => IPath = undefined as any;
    private readonly _dart_getBounds: () => IRect = undefined as any;
    private readonly _dart_computeMetrics: (props: {
        forceClosed: boolean;
    }) => IPathMetrics = undefined as any;
    public getFillType(): PathFillType {
        return this._dart_getFillType();
    }
    public setFillType(value: PathFillType): void {
        return this._dart_setFillType(value);
    }
    public moveTo(x: number, y: number): void {
        return this._dart_moveTo(x, y);
    }
    public relativeMoveTo(dx: number, dy: number): void {
        return this._dart_relativeMoveTo(dx, dy);
    }
    public lineTo(x: number, y: number): void {
        return this._dart_lineTo(x, y);
    }
    public relativeLineTo(dx: number, dy: number): void {
        return this._dart_relativeLineTo(dx, dy);
    }
    public quadraticBezierTo(
        x1: number,
        y1: number,
        x2: number,
        y2: number
    ): void {
        return this._dart_quadraticBezierTo(x1, y1, x2, y2);
    }
    public relativeQuadraticBezierTo(
        x1: number,
        y1: number,
        x2: number,
        y2: number
    ): void {
        return this._dart_relativeQuadraticBezierTo(x1, y1, x2, y2);
    }
    public cubicTo(
        x1: number,
        y1: number,
        x2: number,
        y2: number,
        x3: number,
        y3: number
    ): void {
        return this._dart_cubicTo(x1, y1, x2, y2, x3, y3);
    }
    public relativeCubicTo(
        x1: number,
        y1: number,
        x2: number,
        y2: number,
        x3: number,
        y3: number
    ): void {
        return this._dart_relativeCubicTo(x1, y1, x2, y2, x3, y3);
    }
    public conicTo(
        x1: number,
        y1: number,
        x2: number,
        y2: number,
        w: number
    ): void {
        return this._dart_conicTo(x1, y1, x2, y2, w);
    }
    public relativeConicTo(
        x1: number,
        y1: number,
        x2: number,
        y2: number,
        w: number
    ): void {
        return this._dart_relativeConicTo(x1, y1, x2, y2, w);
    }
    public arcTo(
        rect: IRect,
        startAngle: number,
        sweepAngle: number,
        forceMoveTo: boolean
    ): void {
        return this._dart_arcTo(rect, startAngle, sweepAngle, forceMoveTo);
    }
    public arcToPoint(
        arcEnd: IOffset,
        props: {
            clockwise?: boolean;
            largeArc?: boolean;
            radius?: IRadius;
            rotation?: number;
        }
    ): void {
        return this._dart_arcToPoint(arcEnd, {
            ...arcToPointDefaultProps,
            ...props,
        });
    }
    public relativeArcToPoint(
        arcEndDelta: IOffset,
        props: {
            clockwise?: boolean;
            largeArc?: boolean;
            radius?: IRadius;
            rotation?: number;
        }
    ): void {
        return this._dart_relativeArcToPoint(arcEndDelta, {
            ...relativeArcToPointDefaultProps,
            ...props,
        });
    }
    public addRect(rect: IRect): void {
        return this._dart_addRect(rect);
    }
    public addOval(oval: IRect): void {
        return this._dart_addOval(oval);
    }
    public addArc(oval: IRect, startAngle: number, sweepAngle: number): void {
        return this._dart_addArc(oval, startAngle, sweepAngle);
    }
    public addPolygon(points: IList<IOffset>, close: boolean): void {
        return this._dart_addPolygon(points, close);
    }
    public addRRect(rrect: IRRect): void {
        return this._dart_addRRect(rrect);
    }
    public addPath(
        path: IPath,
        offset: IOffset,
        props: { matrix4?: IFloat64List | undefined }
    ): void {
        return this._dart_addPath(path, offset, props);
    }
    public extendWithPath(
        path: IPath,
        offset: IOffset,
        props: { matrix4?: IFloat64List | undefined }
    ): void {
        return this._dart_extendWithPath(path, offset, props);
    }
    public close(): void {
        return this._dart_close();
    }
    public reset(): void {
        return this._dart_reset();
    }
    public contains(point: IOffset): boolean {
        return this._dart_contains(point);
    }
    public shift(offset: IOffset): IPath {
        return this._dart_shift(offset);
    }
    public transform(matrix4: IFloat64List): IPath {
        return this._dart_transform(matrix4);
    }
    public getBounds(): IRect {
        return this._dart_getBounds();
    }
    public computeMetrics(props: { forceClosed?: boolean }): IPathMetrics {
        return this._dart_computeMetrics({
            ...computeMetricsDefaultProps,
            ...props,
        });
    }
}
