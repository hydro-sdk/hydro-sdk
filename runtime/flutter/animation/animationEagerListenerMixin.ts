export interface IAnimationEagerListenerMixin {
    didRegisterListener: () => void;
    didUnregisterListener: () => void;
    dispose: () => void;
}
