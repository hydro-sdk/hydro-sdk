import { IOffset } from "../../dart/ui/offset";
import { IHitTestResult } from "./hitTestResult";
export interface IHitTestable {
    hitTest: (result: IHitTestResult, position: IOffset) => void;
}
