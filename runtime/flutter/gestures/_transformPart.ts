import { IMatrix4 } from "../../vector_math/matrix4";
export interface I_TransformPart {
    multiply: (rhs: IMatrix4) => IMatrix4;
}
