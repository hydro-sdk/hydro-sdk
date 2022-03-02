import { Type } from "../../dart/core/type";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { IAction } from "./action";
import { IBuildContext } from "./buildContext";
import { IIntent } from "./intent";
export interface IContextAction<T> extends Omit<IAction<T>> {
    invoke: (
        intent: T,
        context?: IBuildContext | undefined
    ) => Object | undefined;
}
