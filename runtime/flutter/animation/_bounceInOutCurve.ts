
import { ICurve } from "./curve";
export interface I_BounceInOutCurve

 extends ICurve
{
transformInternal: (t: number) => number;
}