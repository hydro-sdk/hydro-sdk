import { ICurve } from "./curve";
export interface I_BounceInCurve extends ICurve {
    transformInternal: (t: number) => number;
}
