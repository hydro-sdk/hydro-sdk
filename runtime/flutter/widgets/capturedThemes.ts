import { IWidget } from "./widget";
export interface ICapturedThemes {
    wrap: (child: IWidget) => IWidget;
}
