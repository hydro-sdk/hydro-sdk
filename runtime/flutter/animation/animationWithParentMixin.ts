import { IAnimation } from "./animation";
import { AnimationStatus } from "./animationStatus";
export interface IAnimationWithParentMixin<T> {
    getParent: () => IAnimation<T>;
    addListener: (listener: () => void) => void;
    removeListener: (listener: () => void) => void;
    addStatusListener: (listener: (status: AnimationStatus) => void) => void;
    removeStatusListener: (listener: (status: AnimationStatus) => void) => void;
    getStatus: () => AnimationStatus;
}
