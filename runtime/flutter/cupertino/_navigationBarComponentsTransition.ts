import { IRect } from "../../dart/ui/rect";
import { TextDirection } from "../../dart/ui/textDirection";
import { IAnimation } from "../animation/animation";
import { ICurve } from "../animation/curve";
import { Curves } from "../animation/curves";
import { ITextStyle } from "../painting/textStyle";
import { IRelativeRect } from "../rendering/relativeRect";
import { IRenderBox } from "../rendering/renderBox";
import { IGlobalKey } from "../widgets/globalKey";
import { IState } from "../widgets/state";
import { IStatefulWidget } from "../widgets/statefulWidget";
import { IWidget } from "../widgets/widget";
import { I_FixedSizeSlidingTransition } from "./_fixedSizeSlidingTransition";
import { I_NavigationBarStaticComponentsKeys } from "./_navigationBarStaticComponentsKeys";
import { I_TransitionableNavigationBar } from "./_transitionableNavigationBar";
declare const flutter: {
    cupertino: {
        _navigationBarComponentsTransition: (
            this: void,
            _navigationBarComponentsTransition: I_NavigationBarComponentsTransition,
            props: {
                animation: IAnimation<number>;
                bottomNavBar: I_TransitionableNavigationBar;
                directionality: TextDirection;
                topNavBar: I_TransitionableNavigationBar;
            }
        ) => I_NavigationBarComponentsTransition;
    };
};
export interface I_NavigationBarComponentsTransition {
    animation: IAnimation<number>;
    bottomComponents: I_NavigationBarStaticComponentsKeys;
    topComponents: I_NavigationBarStaticComponentsKeys;
    bottomNavBarBox: IRenderBox;
    topNavBarBox: IRenderBox;
    bottomBackButtonTextStyle: ITextStyle;
    topBackButtonTextStyle: ITextStyle;
    bottomTitleTextStyle: ITextStyle;
    topTitleTextStyle: ITextStyle;
    bottomLargeTitleTextStyle: ITextStyle | undefined;
    topLargeTitleTextStyle: ITextStyle | undefined;
    bottomHasUserMiddle: boolean;
    topHasUserMiddle: boolean;
    bottomLargeExpanded: boolean;
    topLargeExpanded: boolean;
    transitionBox: IRect;
    forwardDirection: number;
    positionInTransitionBox: (
        key: IGlobalKey<IState<IStatefulWidget>>,
        props: { from: IRenderBox }
    ) => IRelativeRect;
    slideFromLeadingEdge: (props: {
        child: IWidget;
        fromKey: IGlobalKey<IState<IStatefulWidget>>;
        fromNavBarBox: IRenderBox;
        toKey: IGlobalKey<IState<IStatefulWidget>>;
        toNavBarBox: IRenderBox;
    }) => I_FixedSizeSlidingTransition;
    fadeInFrom: (t: number, props: { curve: ICurve }) => IAnimation<number>;
    fadeOutBy: (t: number, props: { curve: ICurve }) => IAnimation<number>;
    getBottomLeading: () => IWidget | undefined;
    getBottomBackChevron: () => IWidget | undefined;
    getBottomBackLabel: () => IWidget | undefined;
    getBottomMiddle: () => IWidget | undefined;
    getBottomLargeTitle: () => IWidget | undefined;
    getBottomTrailing: () => IWidget | undefined;
    getTopLeading: () => IWidget | undefined;
    getTopBackChevron: () => IWidget | undefined;
    getTopBackLabel: () => IWidget | undefined;
    getTopMiddle: () => IWidget | undefined;
    getTopTrailing: () => IWidget | undefined;
    getTopLargeTitle: () => IWidget | undefined;
}
export class _NavigationBarComponentsTransition {
    public readonly animation: IAnimation<number> = undefined as any;
    public readonly bottomComponents: I_NavigationBarStaticComponentsKeys =
        undefined as any;
    public readonly topComponents: I_NavigationBarStaticComponentsKeys =
        undefined as any;
    public readonly bottomNavBarBox: IRenderBox = undefined as any;
    public readonly topNavBarBox: IRenderBox = undefined as any;
    public readonly bottomBackButtonTextStyle: ITextStyle = undefined as any;
    public readonly topBackButtonTextStyle: ITextStyle = undefined as any;
    public readonly bottomTitleTextStyle: ITextStyle = undefined as any;
    public readonly topTitleTextStyle: ITextStyle = undefined as any;
    public readonly bottomLargeTitleTextStyle: ITextStyle | undefined =
        undefined as any;
    public readonly topLargeTitleTextStyle: ITextStyle | undefined =
        undefined as any;
    public readonly bottomHasUserMiddle: boolean = undefined as any;
    public readonly topHasUserMiddle: boolean = undefined as any;
    public readonly bottomLargeExpanded: boolean = undefined as any;
    public readonly topLargeExpanded: boolean = undefined as any;
    public readonly transitionBox: IRect = undefined as any;
    public readonly forwardDirection: number = undefined as any;
    public constructor(props: {
        animation: IAnimation<number>;
        bottomNavBar: I_TransitionableNavigationBar;
        directionality: TextDirection;
        topNavBar: I_TransitionableNavigationBar;
    }) {
        flutter.cupertino._navigationBarComponentsTransition(this, props);
    }
    private readonly _dart_positionInTransitionBox: (
        key: IGlobalKey<IState<IStatefulWidget>>,
        props: { from: IRenderBox }
    ) => IRelativeRect = undefined as any;
    private readonly _dart_slideFromLeadingEdge: (props: {
        child: IWidget;
        fromKey: IGlobalKey<IState<IStatefulWidget>>;
        fromNavBarBox: IRenderBox;
        toKey: IGlobalKey<IState<IStatefulWidget>>;
        toNavBarBox: IRenderBox;
    }) => I_FixedSizeSlidingTransition = undefined as any;
    private readonly _dart_fadeInFrom: (
        t: number,
        props: { curve: ICurve }
    ) => IAnimation<number> = undefined as any;
    private readonly _dart_fadeOutBy: (
        t: number,
        props: { curve: ICurve }
    ) => IAnimation<number> = undefined as any;
    private readonly _dart_getBottomLeading: () => IWidget | undefined =
        undefined as any;
    private readonly _dart_getBottomBackChevron: () => IWidget | undefined =
        undefined as any;
    private readonly _dart_getBottomBackLabel: () => IWidget | undefined =
        undefined as any;
    private readonly _dart_getBottomMiddle: () => IWidget | undefined =
        undefined as any;
    private readonly _dart_getBottomLargeTitle: () => IWidget | undefined =
        undefined as any;
    private readonly _dart_getBottomTrailing: () => IWidget | undefined =
        undefined as any;
    private readonly _dart_getTopLeading: () => IWidget | undefined =
        undefined as any;
    private readonly _dart_getTopBackChevron: () => IWidget | undefined =
        undefined as any;
    private readonly _dart_getTopBackLabel: () => IWidget | undefined =
        undefined as any;
    private readonly _dart_getTopMiddle: () => IWidget | undefined =
        undefined as any;
    private readonly _dart_getTopTrailing: () => IWidget | undefined =
        undefined as any;
    private readonly _dart_getTopLargeTitle: () => IWidget | undefined =
        undefined as any;
    public positionInTransitionBox(
        key: IGlobalKey<IState<IStatefulWidget>>,
        props: { from: IRenderBox }
    ): IRelativeRect {
        return this._dart_positionInTransitionBox(key, props);
    }
    public slideFromLeadingEdge(props: {
        child: IWidget;
        fromKey: IGlobalKey<IState<IStatefulWidget>>;
        fromNavBarBox: IRenderBox;
        toKey: IGlobalKey<IState<IStatefulWidget>>;
        toNavBarBox: IRenderBox;
    }): I_FixedSizeSlidingTransition {
        return this._dart_slideFromLeadingEdge(props);
    }
    public fadeInFrom(
        t: number,
        props: { curve?: ICurve }
    ): IAnimation<number> {
        return this._dart_fadeInFrom(t, {
            ...fadeInFromDefaultProps,
            ...props,
        });
    }
    public fadeOutBy(t: number, props: { curve?: ICurve }): IAnimation<number> {
        return this._dart_fadeOutBy(t, {
            ...fadeOutByDefaultProps,
            ...props,
        });
    }
    public getBottomLeading(): IWidget | undefined {
        return this._dart_getBottomLeading();
    }
    public getBottomBackChevron(): IWidget | undefined {
        return this._dart_getBottomBackChevron();
    }
    public getBottomBackLabel(): IWidget | undefined {
        return this._dart_getBottomBackLabel();
    }
    public getBottomMiddle(): IWidget | undefined {
        return this._dart_getBottomMiddle();
    }
    public getBottomLargeTitle(): IWidget | undefined {
        return this._dart_getBottomLargeTitle();
    }
    public getBottomTrailing(): IWidget | undefined {
        return this._dart_getBottomTrailing();
    }
    public getTopLeading(): IWidget | undefined {
        return this._dart_getTopLeading();
    }
    public getTopBackChevron(): IWidget | undefined {
        return this._dart_getTopBackChevron();
    }
    public getTopBackLabel(): IWidget | undefined {
        return this._dart_getTopBackLabel();
    }
    public getTopMiddle(): IWidget | undefined {
        return this._dart_getTopMiddle();
    }
    public getTopTrailing(): IWidget | undefined {
        return this._dart_getTopTrailing();
    }
    public getTopLargeTitle(): IWidget | undefined {
        return this._dart_getTopLargeTitle();
    }
}
const fadeInFromDefaultProps = {
    curve: Curves.easeIn,
};
const fadeOutByDefaultProps = {
    curve: Curves.easeOut,
};
