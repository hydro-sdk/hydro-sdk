import { IDuration } from "../../dart/core/duration";
import { ITicker } from "./ticker";
export interface ITickerProvider {
    createTicker: (onTick: (elapsed: IDuration) => void) => ITicker;
}
