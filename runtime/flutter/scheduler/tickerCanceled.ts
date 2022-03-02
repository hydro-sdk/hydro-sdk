import { IException } from "../../dart/core/exception";
import { ITicker } from "./ticker";
declare const flutter: {
    scheduler: {
        tickerCanceled: (
            this: void,
            tickerCanceled: ITickerCanceled,
            ticker?: ITicker | undefined
        ) => ITickerCanceled;
    };
};
export interface ITickerCanceled {
    ticker: ITicker | undefined;
    toString: () => string;
}
export class TickerCanceled implements IException {
    public readonly ticker: ITicker | undefined = undefined as any;
    public constructor(ticker?: ITicker | undefined) {
        flutter.scheduler.tickerCanceled(this, ticker);
    }
    private readonly _dart_toString: () => string = undefined as any;
    public toString(): string {
        return this._dart_toString();
    }
}
