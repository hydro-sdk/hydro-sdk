import { ICurve } from "./curve";
export interface I_BounceOutCurve extends ICurve {
    transformInternal: (t: number) => number;
}
