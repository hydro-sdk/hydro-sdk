import { ISet } from "../../dart/core/set";
import { ISemanticsAction } from "../../dart/ui/semanticsAction";
import { AxisDirection } from "../painting/axisDirection";
import { ITickerProvider } from "../scheduler/tickerProvider";
import { IBuildContext } from "./buildContext";
export interface IScrollContext {
    getNotificationContext: () => IBuildContext | undefined;
    getStorageContext: () => IBuildContext;
    getVsync: () => ITickerProvider;
    getAxisDirection: () => AxisDirection;
    setIgnorePointer: (value: boolean) => void;
    setCanDrag: (value: boolean) => void;
    setSemanticsActions: (actions: ISet<ISemanticsAction>) => void;
    saveOffset: (offset: number) => void;
}
