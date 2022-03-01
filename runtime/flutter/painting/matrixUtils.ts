
import { IMatrix4 } from "../../vector_math/matrix4";
import { IOffset } from "../../dart/ui/offset";
import { IRect } from "../../dart/ui/rect";
import { Axis } from "./axis";
declare const flutter: {
painting: {
matrixUtilsGetAsTranslation: (transform: IMatrix4) => IOffset | undefined;
matrixUtilsGetAsScale: (transform: IMatrix4) => number | undefined;
matrixUtilsMatrixEquals: (a?: IMatrix4 | undefined, b?: IMatrix4 | undefined) => boolean;
matrixUtilsIsIdentity: (a: IMatrix4) => boolean;
matrixUtilsTransformPoint: (transform: IMatrix4, point: IOffset) => IOffset;
matrixUtilsTransformRect: (transform: IMatrix4, rect: IRect) => IRect;
matrixUtilsInverseTransformRect: (transform: IMatrix4, rect: IRect) => IRect;
matrixUtilsCreateCylindricalProjectionTransform: ( props : {  orientation : Axis, perspective : number, angle : number, radius : number,}) => IMatrix4;
matrixUtilsForceToPoint: (offset: IOffset) => IMatrix4
}
};
export interface IMatrixUtils


{
}export class MatrixUtils


{public static getAsTranslation(transform: IMatrix4) : IOffset | undefined{
return flutter.painting.matrixUtilsGetAsTranslation(transform);
}public static getAsScale(transform: IMatrix4) : number | undefined{
return flutter.painting.matrixUtilsGetAsScale(transform);
}public static matrixEquals(a?: IMatrix4 | undefined, b?: IMatrix4 | undefined) : boolean{
return flutter.painting.matrixUtilsMatrixEquals(a, b);
}public static isIdentity(a: IMatrix4) : boolean{
return flutter.painting.matrixUtilsIsIdentity(a);
}public static transformPoint(transform: IMatrix4, point: IOffset) : IOffset{
return flutter.painting.matrixUtilsTransformPoint(transform, point);
}public static transformRect(transform: IMatrix4, rect: IRect) : IRect{
return flutter.painting.matrixUtilsTransformRect(transform, rect);
}public static inverseTransformRect(transform: IMatrix4, rect: IRect) : IRect{
return flutter.painting.matrixUtilsInverseTransformRect(transform, rect);
}public static createCylindricalProjectionTransform( props : {  orientation? : Axis, perspective? : number, angle : number, radius : number,}) : IMatrix4{
return flutter.painting.matrixUtilsCreateCylindricalProjectionTransform({
...createCylindricalProjectionTransformDefaultProps,
...props
});
}public static forceToPoint(offset: IOffset) : IMatrix4{
return flutter.painting.matrixUtilsForceToPoint(offset);
}}
const createCylindricalProjectionTransformDefaultProps = {
    orientation: Axis.vertical,
    perspective: 0.001,
};
