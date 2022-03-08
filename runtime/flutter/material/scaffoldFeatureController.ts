import { IFuture } from "../../dart/async/future";
import { IWidget } from "../widgets/widget";
export interface IScaffoldFeatureController<T, U> {
    getClosed: () => IFuture<U>;
}
