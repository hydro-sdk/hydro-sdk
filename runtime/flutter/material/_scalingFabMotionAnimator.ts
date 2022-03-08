import { IOffset } from "../../dart/ui/offset";
import { IAnimation } from "../animation/animation";
import { IFloatingActionButtonAnimator } from "./floatingActionButtonAnimator";
declare const flutter: {
    material: {
        _scalingFabMotionAnimator: (
            this: void,
            _scalingFabMotionAnimator: I_ScalingFabMotionAnimator
        ) => I_ScalingFabMotionAnimator;
    };
};
export interface I_ScalingFabMotionAnimator {
    getOffset: (props: {
        begin: IOffset;
        end: IOffset;
        progress: number;
    }) => IOffset;
    getScaleAnimation: (props: {
        parent: IAnimation<number>;
    }) => IAnimation<number>;
    getRotationAnimation: (props: {
        parent: IAnimation<number>;
    }) => IAnimation<number>;
    getAnimationRestart: (previousValue: number) => number;
    toString: () => string;
    getHashCode: () => number;
}
export class _ScalingFabMotionAnimator
    implements IFloatingActionButtonAnimator
{
    public constructor() {
        flutter.material._scalingFabMotionAnimator(this);
    }
    private readonly _dart_getOffset: (props: {
        begin: IOffset;
        end: IOffset;
        progress: number;
    }) => IOffset = undefined as any;
    private readonly _dart_getScaleAnimation: (props: {
        parent: IAnimation<number>;
    }) => IAnimation<number> = undefined as any;
    private readonly _dart_getRotationAnimation: (props: {
        parent: IAnimation<number>;
    }) => IAnimation<number> = undefined as any;
    private readonly _dart_getAnimationRestart: (
        previousValue: number
    ) => number = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public getOffset(props: {
        begin: IOffset;
        end: IOffset;
        progress: number;
    }): IOffset {
        return this._dart_getOffset(props);
    }
    public getScaleAnimation(props: {
        parent: IAnimation<number>;
    }): IAnimation<number> {
        return this._dart_getScaleAnimation(props);
    }
    public getRotationAnimation(props: {
        parent: IAnimation<number>;
    }): IAnimation<number> {
        return this._dart_getRotationAnimation(props);
    }
    public getAnimationRestart(previousValue: number): number {
        return this._dart_getAnimationRestart(previousValue);
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
