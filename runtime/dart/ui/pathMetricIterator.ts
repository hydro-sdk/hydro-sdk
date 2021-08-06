import { IIterator } from "../core/iterator";
import { IPathMetric } from "./pathMetric";
export interface IPathMetricIterator extends IIterator<IPathMetric> {
    getCurrent: () => IPathMetric;
    moveNext: () => boolean;
}
