import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IAction } from "./action";
import { IBuildContext } from "./buildContext";
import { IIntent } from "./intent";
export interface I_OverridableActionMixin<T> {
    debugAssertMutuallyRecursive: boolean;
    debugAssertIsActionEnabledMutuallyRecursive: boolean;
    debugAssertIsEnabledMutuallyRecursive: boolean;
    debugAssertConsumeKeyMutuallyRecursive: boolean;
    getDefaultAction: () => IAction<T>;
    getLookupContext: () => IBuildContext;
    invokeDefaultAction: (
        intent: T,
        fromAction?: IAction<T> | undefined,
        context?: IBuildContext | undefined
    ) => Object | undefined;
    getOverrideAction: (props: {
        declareDependency: boolean;
    }) => IAction<T> | undefined;
    invoke: (
        intent: T,
        context?: IBuildContext | undefined
    ) => Object | undefined;
    isOverrideActionEnabled: (overrideAction: IAction<T>) => boolean;
    getIsActionEnabled: () => boolean;
    isEnabled: (intent: T) => boolean;
    consumesKey: (intent: T) => boolean;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
}
