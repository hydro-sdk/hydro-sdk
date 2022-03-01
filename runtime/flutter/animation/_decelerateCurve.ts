
import { ICurve } from "./curve";
export interface I_DecelerateCurve

 extends ICurve
{
transformInternal: (t: number) => number;
}