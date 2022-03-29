import { AnimationStatus } from "./animationStatus";
export interface IAnimationLocalStatusListenersMixin {
    didRegisterListener: () => void;
    didUnregisterListener: () => void;
    addStatusListener: (listener: (status: AnimationStatus) => void) => void;
    removeStatusListener: (listener: (status: AnimationStatus) => void) => void;
    clearStatusListeners: () => void;
    notifyStatusListeners: (status: AnimationStatus) => void;
}
