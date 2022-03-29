import { IDuration } from "../../dart/core/duration";
import { IColor } from "../../dart/ui/color";
import { IAnimation } from "../animation/animation";
import { IBuildContext } from "../widgets/buildContext";
import { ITransitionRoute } from "../widgets/transitionRoute";
import { IWidget } from "../widgets/widget";
export interface IMaterialRouteTransitionMixin<T> {
    buildContent: (context: IBuildContext) => IWidget;
    getTransitionDuration: () => IDuration;
    getBarrierColor: () => IColor | undefined;
    getBarrierLabel: () => string | undefined;
    canTransitionTo: (nextRoute: ITransitionRoute<any>) => boolean;
    buildPage: (
        context: IBuildContext,
        animation: IAnimation<number>,
        secondaryAnimation: IAnimation<number>
    ) => IWidget;
    buildTransitions: (
        context: IBuildContext,
        animation: IAnimation<number>,
        secondaryAnimation: IAnimation<number>,
        child: IWidget
    ) => IWidget;
}
