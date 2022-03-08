import { IColor } from "../../dart/ui/color";
import { ITickerProvider } from "../scheduler/tickerProvider";
import { IInkFeature } from "./inkFeature";
export interface IMaterialInkController {
    getColor: () => IColor | undefined;
    getVsync: () => ITickerProvider;
    addInkFeature: (feature: IInkFeature) => void;
    markNeedsPaint: () => void;
}
