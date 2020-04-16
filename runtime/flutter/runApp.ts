import { Widget } from "./widget";

declare let hydroGlobalBuildResult: () => Widget;

export function runApp(pred: (...args: any) => Widget): void {
    hydroGlobalBuildResult = pred;
}