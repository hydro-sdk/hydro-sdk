import { List } from "./../collection/list";
import { Offset } from "./offset";
import { PathFillType } from "./pathFillType";
import { PathOperation } from "./pathOperation";
import { Radius } from "./radius";
import { Rect } from "./rect";
import { RRect } from "./rRect";
declare const dart: {
    ui: {
        path: (this: void, path: Path) => Path;
        pathFrom: (source: Path) => Path;
        pathCombine: (
            operation: PathOperation,
            path1: Path,
            path2: Path
        ) => Path;
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
        rect: Rect,
        startAngle: number,
        sweepAngle: number,
        forceMoveTo: boolean
    ) => void;
    arcToPoint: (
        arcEnd: Offset,
        props: {
            clockwise: boolean;
            largeArc: boolean;
            radius: Radius;
            rotation: number;
        }
    ) => void;
    relativeArcToPoint: (
        arcEndDelta: Offset,
        props: {
            clockwise: boolean;
            largeArc: boolean;
            radius: Radius;
            rotation: number;
        }
    ) => void;
    addRect: (rect: Rect) => void;
    addOval: (oval: Rect) => void;
    addArc: (oval: Rect, startAngle: number, sweepAngle: number) => void;
    addPolygon: (points: List<Offset>, close: boolean) => void;
    addRRect: (rrect: RRect) => void;
    addPath: (
        path: Path,
        offset: Offset,
        props: { matrix4?: Float64List | undefined }
    ) => void;
    extendWithPath: (
        path: Path,
        offset: Offset,
        props: { matrix4?: Float64List | undefined }
    ) => void;
    close: () => void;
    reset: () => void;
    contains: (point: Offset) => boolean;
    shift: (offset: Offset) => Path;
    transform: (matrix4: Float64List) => Path;
    getBounds: () => Rect;
    computeMetrics: (props: { forceClosed: boolean }) => PathMetrics;
}
export class Path implements IPath {
    public constructor() {
        dart.ui.path(this);
    }
    public static from(source: Path): Path {
        return dart.ui.pathFrom(source);
    }
    public static combine(
        operation: PathOperation,
        path1: Path,
        path2: Path
    ): Path {
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
        rect: Rect,
        startAngle: number,
        sweepAngle: number,
        forceMoveTo: boolean
    ) => void = undefined as any;
    private readonly _dart_arcToPoint: (
        arcEnd: Offset,
        props: {
            clockwise: boolean;
            largeArc: boolean;
            radius: Radius;
            rotation: number;
        }
    ) => void = undefined as any;
    private readonly _dart_relativeArcToPoint: (
        arcEndDelta: Offset,
        props: {
            clockwise: boolean;
            largeArc: boolean;
            radius: Radius;
            rotation: number;
        }
    ) => void = undefined as any;
    private readonly _dart_addRect: (rect: Rect) => void = undefined as any;
    private readonly _dart_addOval: (oval: Rect) => void = undefined as any;
    private readonly _dart_addArc: (
        oval: Rect,
        startAngle: number,
        sweepAngle: number
    ) => void = undefined as any;
    private readonly _dart_addPolygon: (
        points: List<Offset>,
        close: boolean
    ) => void = undefined as any;
    private readonly _dart_addRRect: (rrect: RRect) => void = undefined as any;
    private readonly _dart_addPath: (
        path: Path,
        offset: Offset,
        props: { matrix4?: Float64List | undefined }
    ) => void = undefined as any;
    private readonly _dart_extendWithPath: (
        path: Path,
        offset: Offset,
        props: { matrix4?: Float64List | undefined }
    ) => void = undefined as any;
    private readonly _dart_close: () => void = undefined as any;
    private readonly _dart_reset: () => void = undefined as any;
    private readonly _dart_contains: (
        point: Offset
    ) => boolean = undefined as any;
    private readonly _dart_shift: (offset: Offset) => Path = undefined as any;
    private readonly _dart_transform: (
        matrix4: Float64List
    ) => Path = undefined as any;
    private readonly _dart_getBounds: () => Rect = undefined as any;
    private readonly _dart_computeMetrics: (props: {
        forceClosed: boolean;
    }) => PathMetrics = undefined as any;
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
        rect: Rect,
        startAngle: number,
        sweepAngle: number,
        forceMoveTo: boolean
    ): void {
        return this._dart_arcTo(rect, startAngle, sweepAngle, forceMoveTo);
    }
    public arcToPoint(
        arcEnd: Offset,
        props: {
            clockwise?: boolean;
            largeArc?: boolean;
            radius?: Radius;
            rotation?: number;
        }
    ): void {
        return this._dart_arcToPoint(arcEnd, {
            ...arcToPointDefaultProps,
            ...props,
        });
    }
    public relativeArcToPoint(
        arcEndDelta: Offset,
        props: {
            clockwise?: boolean;
            largeArc?: boolean;
            radius?: Radius;
            rotation?: number;
        }
    ): void {
        return this._dart_relativeArcToPoint(arcEndDelta, {
            ...relativeArcToPointDefaultProps,
            ...props,
        });
    }
    public addRect(rect: Rect): void {
        return this._dart_addRect(rect);
    }
    public addOval(oval: Rect): void {
        return this._dart_addOval(oval);
    }
    public addArc(oval: Rect, startAngle: number, sweepAngle: number): void {
        return this._dart_addArc(oval, startAngle, sweepAngle);
    }
    public addPolygon(points: List<Offset>, close: boolean): void {
        return this._dart_addPolygon(points, close);
    }
    public addRRect(rrect: RRect): void {
        return this._dart_addRRect(rrect);
    }
    public addPath(
        path: Path,
        offset: Offset,
        props: { matrix4?: Float64List | undefined }
    ): void {
        return this._dart_addPath(path, offset, props);
    }
    public extendWithPath(
        path: Path,
        offset: Offset,
        props: { matrix4?: Float64List | undefined }
    ): void {
        return this._dart_extendWithPath(path, offset, props);
    }
    public close(): void {
        return this._dart_close();
    }
    public reset(): void {
        return this._dart_reset();
    }
    public contains(point: Offset): boolean {
        return this._dart_contains(point);
    }
    public shift(offset: Offset): Path {
        return this._dart_shift(offset);
    }
    public transform(matrix4: Float64List): Path {
        return this._dart_transform(matrix4);
    }
    public getBounds(): Rect {
        return this._dart_getBounds();
    }
    public computeMetrics(props: { forceClosed?: boolean }): PathMetrics {
        return this._dart_computeMetrics({
            ...computeMetricsDefaultProps,
            ...props,
        });
    }
}
