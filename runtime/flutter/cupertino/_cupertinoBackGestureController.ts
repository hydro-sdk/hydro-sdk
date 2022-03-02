import { IAnimationController } from "../animation/animationController";
import { INavigatorState } from "../widgets/navigatorState";
declare const flutter: {
    cupertino: {
        _cupertinoBackGestureController: <T>(
            this: void,
            _cupertinoBackGestureController: I_CupertinoBackGestureController<T>,
            props: {
                controller: IAnimationController;
                navigator: INavigatorState;
            }
        ) => I_CupertinoBackGestureController<T>;
    };
};
export interface I_CupertinoBackGestureController<T> {
    controller: IAnimationController;
    navigator: INavigatorState;
    dragUpdate: (delta: number) => void;
    dragEnd: (velocity: number) => void;
}
export class _CupertinoBackGestureController<T> {
    public readonly controller: IAnimationController = undefined as any;
    public readonly navigator: INavigatorState = undefined as any;
    public constructor(props: {
        controller: IAnimationController;
        navigator: INavigatorState;
    }) {
        flutter.cupertino._cupertinoBackGestureController(this, props);
    }
    private readonly _dart_dragUpdate: (delta: number) => void =
        undefined as any;
    private readonly _dart_dragEnd: (velocity: number) => void =
        undefined as any;
    public dragUpdate(delta: number): void {
        return this._dart_dragUpdate(delta);
    }
    public dragEnd(velocity: number): void {
        return this._dart_dragEnd(velocity);
    }
}
