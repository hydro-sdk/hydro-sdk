import { AxisDirection } from "../painting/axisDirection";
export interface IScrollActivityDelegate {
    getAxisDirection: () => AxisDirection;
    setPixels: (pixels: number) => number;
    applyUserOffset: (delta: number) => void;
    goIdle: () => void;
    goBallistic: (velocity: number) => void;
}
