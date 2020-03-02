import {Widget} from "./widget";

declare let buildResult: Widget;

export function runApp(pred: () => Widget) 
{
    buildResult = pred();
}