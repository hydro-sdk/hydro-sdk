
import { IHitTestResult } from "./hitTestResult";
import { IOffset } from "../../dart/ui/offset";
export interface IHitTestable


{
hitTest: (result: IHitTestResult, position: IOffset) => void;
}