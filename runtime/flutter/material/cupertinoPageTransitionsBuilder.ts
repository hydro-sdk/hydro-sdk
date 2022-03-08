import { IAnimation } from "../animation/animation";
import { IBuildContext } from "../widgets/buildContext";
import { IPageRoute } from "../widgets/pageRoute";
import { IWidget } from "../widgets/widget";
import { IPageTransitionsBuilder } from "./pageTransitionsBuilder";
declare const flutter: {
    material: {
        cupertinoPageTransitionsBuilder: (
            this: void,
            cupertinoPageTransitionsBuilder: ICupertinoPageTransitionsBuilder
        ) => ICupertinoPageTransitionsBuilder;
    };
};
export interface ICupertinoPageTransitionsBuilder {
    buildTransitions: <T>(
        route: IPageRoute<T>,
        context: IBuildContext,
        animation: IAnimation<number>,
        secondaryAnimation: IAnimation<number>,
        child: IWidget
    ) => IWidget;
    toString: () => string;
    getHashCode: () => number;
}
export class CupertinoPageTransitionsBuilder
    implements IPageTransitionsBuilder
{
    public constructor() {
        flutter.material.cupertinoPageTransitionsBuilder(this);
    }
    private readonly _dart_buildTransitions: <T>(
        route: IPageRoute<T>,
        context: IBuildContext,
        animation: IAnimation<number>,
        secondaryAnimation: IAnimation<number>,
        child: IWidget
    ) => IWidget = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public buildTransitions<T>(
        route: IPageRoute<T>,
        context: IBuildContext,
        animation: IAnimation<number>,
        secondaryAnimation: IAnimation<number>,
        child: IWidget
    ): IWidget {
        return this._dart_buildTransitions(
            route,
            context,
            animation,
            secondaryAnimation,
            child
        );
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
