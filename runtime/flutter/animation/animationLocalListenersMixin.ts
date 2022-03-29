export interface IAnimationLocalListenersMixin {
    didRegisterListener: () => void;
    didUnregisterListener: () => void;
    addListener: (listener: () => void) => void;
    removeListener: (listener: () => void) => void;
    clearListeners: () => void;
    notifyListeners: () => void;
}
