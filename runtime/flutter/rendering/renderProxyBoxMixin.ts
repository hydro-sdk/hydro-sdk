import { IOffset } from "../../dart/ui/offset";
import { ISize } from "../../dart/ui/size";
import { TextBaseline } from "../../dart/ui/textBaseline";
import { IMatrix4 } from "../../vector_math/matrix4";
import { IBoxConstraints } from "./boxConstraints";
import { IBoxHitTestResult } from "./boxHitTestResult";
import { IPaintingContext } from "./paintingContext";
import { IRenderBox } from "./renderBox";
import { IRenderObject } from "./renderObject";
export interface IRenderProxyBoxMixin<T> {
    setupParentData: (child: unknown) => void;
    computeMinIntrinsicWidth: (height: number) => number;
    computeMaxIntrinsicWidth: (height: number) => number;
    computeMinIntrinsicHeight: (width: number) => number;
    computeMaxIntrinsicHeight: (width: number) => number;
    computeDistanceToActualBaseline: (
        baseline: TextBaseline
    ) => number | undefined;
    computeDryLayout: (constraints: IBoxConstraints) => ISize;
    performLayout: () => void;
    computeSizeForNoChild: (constraints: IBoxConstraints) => ISize;
    hitTestChildren: (
        result: IBoxHitTestResult,
        props: { position: IOffset }
    ) => boolean;
    applyPaintTransform: (child: unknown, transform: IMatrix4) => void;
    paint: (context: IPaintingContext, offset: IOffset) => void;
}
