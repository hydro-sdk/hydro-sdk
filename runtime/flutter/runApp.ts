import { Widget } from "./widget";

declare const hydro: {
    globalBuildResult: (this: void) => Widget;
};

export function runApp(
    this: void,
    pred: (this: void, ...args: any) => Widget
): void {
    hydro.globalBuildResult = pred;
}
