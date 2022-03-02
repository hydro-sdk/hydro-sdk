import { IGestureRecognizer } from "../gestures/gestureRecognizer";
export interface IGestureRecognizerFactory<T> {
    constructor: () => T;
    initializer: (instance: T) => void;
}
