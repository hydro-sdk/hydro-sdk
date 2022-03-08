import { IAnimationController } from "../animation/animationController";
import { ICurvedAnimation } from "../animation/curvedAnimation";
declare const flutter: {
    material: {
        _animationTuple: (
            this: void,
            _animationTuple: I_AnimationTuple,
            props: {
                gapStart: number;
                controller: IAnimationController;
                endAnimation: ICurvedAnimation;
                gapAnimation: ICurvedAnimation;
                startAnimation: ICurvedAnimation;
            }
        ) => I_AnimationTuple;
    };
};
export interface I_AnimationTuple {
    controller: IAnimationController;
    startAnimation: ICurvedAnimation;
    endAnimation: ICurvedAnimation;
    gapAnimation: ICurvedAnimation;
    gapStart: number;
}
export class _AnimationTuple {
    public readonly controller: IAnimationController = undefined as any;
    public readonly startAnimation: ICurvedAnimation = undefined as any;
    public readonly endAnimation: ICurvedAnimation = undefined as any;
    public readonly gapAnimation: ICurvedAnimation = undefined as any;
    public readonly gapStart: number = undefined as any;
    public constructor(props: {
        gapStart?: number;
        controller: IAnimationController;
        endAnimation: ICurvedAnimation;
        gapAnimation: ICurvedAnimation;
        startAnimation: ICurvedAnimation;
    }) {
        flutter.material._animationTuple(this, {
            ..._animationTupleDefaultProps,
            ...props,
        });
    }
}
const _animationTupleDefaultProps = {
    gapStart: 0.0,
};
