import { Widget } from "./widget";

declare const hydro : {
    globalBuildResult: () => Widget;
}

export function runApp(pred: (...args: any) => Widget): void {
    hydro.globalBuildResult = pred;
}