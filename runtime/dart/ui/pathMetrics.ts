import { IIterableBase } from "../collection/iterableBase";
import { IIterator } from "../core/iterator";
import { IPathMetric } from "./pathMetric";
export interface IPathMetrics extends IIterableBase<IPathMetric> {
    getIterator: () => IIterator<IPathMetric>;
}
