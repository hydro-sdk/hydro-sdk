import { ICurve } from "./curve";
export interface I_Linear extends ICurve {
    transformInternal: (t: number) => number;
}
