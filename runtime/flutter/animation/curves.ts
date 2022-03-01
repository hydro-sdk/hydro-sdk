
import { Cubic } from "./cubic";
import { Offset } from "../../dart/ui/offset";
import { ThreePointCubic } from "./threePointCubic";
import { ElasticInCurve } from "./elasticInCurve";
import { ElasticOutCurve } from "./elasticOutCurve";
import { ElasticInOutCurve } from "./elasticInOutCurve";
export interface ICurves


{
}export class Curves


{    public static fastLinearToSlowEaseIn = new Cubic(0.18, 1.0, 0.04, 1.0);
    public static ease = new Cubic(0.25, 0.1, 0.25, 1.0);
    public static easeIn = new Cubic(0.42, 0.0, 1.0, 1.0);
    public static easeInToLinear = new Cubic(0.67, 0.03, 0.65, 0.09);
    public static easeInSine = new Cubic(0.47, 0.0, 0.745, 0.715);
    public static easeInQuad = new Cubic(0.55, 0.085, 0.68, 0.53);
    public static easeInCubic = new Cubic(0.55, 0.055, 0.675, 0.19);
    public static easeInQuart = new Cubic(0.895, 0.03, 0.685, 0.22);
    public static easeInQuint = new Cubic(0.755, 0.05, 0.855, 0.06);
    public static easeInExpo = new Cubic(0.95, 0.05, 0.795, 0.035);
    public static easeInCirc = new Cubic(0.6, 0.04, 0.98, 0.335);
    public static easeInBack = new Cubic(0.6, -0.28, 0.735, 0.045);
    public static easeOut = new Cubic(0.0, 0.0, 0.58, 1.0);
    public static linearToEaseOut = new Cubic(0.35, 0.91, 0.33, 0.97);
    public static easeOutSine = new Cubic(0.39, 0.575, 0.565, 1.0);
    public static easeOutQuad = new Cubic(0.25, 0.46, 0.45, 0.94);
    public static easeOutCubic = new Cubic(0.215, 0.61, 0.355, 1.0);
    public static easeOutQuart = new Cubic(0.165, 0.84, 0.44, 1.0);
    public static easeOutQuint = new Cubic(0.23, 1.0, 0.32, 1.0);
    public static easeOutExpo = new Cubic(0.19, 1.0, 0.22, 1.0);
    public static easeOutCirc = new Cubic(0.075, 0.82, 0.165, 1.0);
    public static easeOutBack = new Cubic(0.175, 0.885, 0.32, 1.275);
    public static easeInOut = new Cubic(0.42, 0.0, 0.58, 1.0);
    public static easeInOutSine = new Cubic(0.445, 0.05, 0.55, 0.95);
    public static easeInOutQuad = new Cubic(0.455, 0.03, 0.515, 0.955);
    public static easeInOutCubic = new Cubic(0.645, 0.045, 0.355, 1.0);
    public static easeInOutCubicEmphasized = new ThreePointCubic(new Offset(0.05, 0), new Offset(0.133333, 0.06), new Offset(0.166666, 0.4), new Offset(0.208333, 0.82), new Offset(0.25, 1));
    public static easeInOutQuart = new Cubic(0.77, 0.0, 0.175, 1.0);
    public static easeInOutQuint = new Cubic(0.86, 0.0, 0.07, 1.0);
    public static easeInOutExpo = new Cubic(1.0, 0.0, 0.0, 1.0);
    public static easeInOutCirc = new Cubic(0.785, 0.135, 0.15, 0.86);
    public static easeInOutBack = new Cubic(0.68, -0.55, 0.265, 1.55);
    public static fastOutSlowIn = new Cubic(0.4, 0.0, 0.2, 1.0);
    public static slowMiddle = new Cubic(0.15, 0.85, 0.85, 0.15);
    public static elasticIn = new ElasticInCurve();
    public static elasticOut = new ElasticOutCurve();
    public static elasticInOut = new ElasticInOutCurve();
}
