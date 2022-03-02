import { IRect } from "../../dart/ui/rect";
import { TextDirection } from "../../dart/ui/textDirection";
import { IMatrix4 } from "../../vector_math/matrix4";
export interface IGradientTransform {
    transform: (
        bounds: IRect,
        props?: { textDirection?: TextDirection | undefined }
    ) => IMatrix4 | undefined;
}
