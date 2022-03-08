import { IAnimation } from "../animation/animation";
import { IBuildContext } from "../widgets/buildContext";
import { IPageRoute } from "../widgets/pageRoute";
import { IWidget } from "../widgets/widget";
export interface IPageTransitionsBuilder {
    buildTransitions: <T>(
        route: IPageRoute<T>,
        context: IBuildContext,
        animation: IAnimation<number>,
        secondaryAnimation: IAnimation<number>,
        child: IWidget
    ) => IWidget;
}
