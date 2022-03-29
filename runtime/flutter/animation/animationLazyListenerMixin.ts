export interface IAnimationLazyListenerMixin {
    didRegisterListener: () => void;
    didUnregisterListener: () => void;
    didStartListening: () => void;
    didStopListening: () => void;
    getIsListening: () => boolean;
}
