import { IDuration } from "../../dart/core/duration";
import { IColor } from "../../dart/ui/color";
import { IAnimation } from "../animation/animation";
import { IValueListenable } from "../foundation/valueListenable";
import { IBuildContext } from "../widgets/buildContext";
import { IPageRoute } from "../widgets/pageRoute";
import { IRoute } from "../widgets/route";
import { ITransitionRoute } from "../widgets/transitionRoute";
import { IWidget } from "../widgets/widget";
export interface ICupertinoRouteTransitionMixin<T> {
    buildContent: (context: IBuildContext) => IWidget;
    getTitle: () => string | undefined;
    getPreviousTitle: () => IValueListenable<string | undefined>;
    didChangePrevious: (previousRoute?: IRoute<any> | undefined) => void;
    getTransitionDuration: () => IDuration;
    getBarrierColor: () => IColor | undefined;
    getBarrierLabel: () => string | undefined;
    canTransitionTo: (nextRoute: ITransitionRoute<any>) => boolean;
    getPopGestureInProgress: () => boolean;
    getPopGestureEnabled: () => boolean;
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
