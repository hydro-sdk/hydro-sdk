
import { IList } from "../../dart/core/list";
import { IStackFrame } from "./stackFrame";
export interface IStackFilter


{
filter: (stackFrames: IList<IStackFrame>, reasons: IList<string | undefined>) => void;
}