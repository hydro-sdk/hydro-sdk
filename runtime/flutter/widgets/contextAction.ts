
import { IIntent } from "./intent";
import { IAction } from "./action";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { Type } from "../../dart/core/type";
import { IBuildContext } from "./buildContext";
export interface IContextAction
<T>
 extends Omit<IAction<T>, >
{
invoke: (intent: T, context?: IBuildContext | undefined) => Object | undefined;
}