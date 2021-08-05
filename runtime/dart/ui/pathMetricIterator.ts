import { IIterator } from "../core/iterator";
import { IPathMetric } from "./pathMetric";
export interface IPathMetricIterator {
    getCurrent: () => IPathMetric;
    moveNext: () => boolean;
}
