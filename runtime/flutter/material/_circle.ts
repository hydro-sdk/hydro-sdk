import { IColor } from "../../dart/ui/color";
import { IAnimationController } from "../animation/animationController";
import { ICurvedAnimation } from "../animation/curvedAnimation";
import { ITickerProvider } from "../scheduler/tickerProvider";
import { I_BottomNavigationBarState } from "./_bottomNavigationBarState";
declare const flutter: {
    material: {
        _circle: (
            this: void,
            _circle: I_Circle,
            props: {
                color: IColor;
                index: number;
                state: I_BottomNavigationBarState;
                vsync: ITickerProvider;
            }
        ) => I_Circle;
    };
};
export interface I_Circle {
    state: I_BottomNavigationBarState;
    index: number;
    color: IColor;
    controller: IAnimationController;
    animation: ICurvedAnimation;
    getHorizontalLeadingOffset: () => number;
    dispose: () => void;
}
export class _Circle {
    public readonly state: I_BottomNavigationBarState = undefined as any;
    public readonly index: number = undefined as any;
    public readonly color: IColor = undefined as any;
    public readonly controller: IAnimationController = undefined as any;
    public readonly animation: ICurvedAnimation = undefined as any;
    public constructor(props: {
        color: IColor;
        index: number;
        state: I_BottomNavigationBarState;
        vsync: ITickerProvider;
    }) {
        flutter.material._circle(this, props);
    }
    private readonly _dart_getHorizontalLeadingOffset: () => number =
        undefined as any;
    private readonly _dart_dispose: () => void = undefined as any;
    public getHorizontalLeadingOffset(): number {
        return this._dart_getHorizontalLeadingOffset();
    }
    public dispose(): void {
        return this._dart_dispose();
    }
}
