import { IValueListenable } from "../foundation/valueListenable";
import { IAnimatable } from "./animatable";
import { IAnimation } from "./animation";
import { IAnimationEagerListenerMixin } from "./animationEagerListenerMixin";
import { IAnimationLocalListenersMixin } from "./animationLocalListenersMixin";
import { IAnimationLocalStatusListenersMixin } from "./animationLocalStatusListenersMixin";
import { AnimationStatus } from "./animationStatus";
declare const flutter: {
    animation: {
        trainHoppingAnimation: (
            this: void,
            trainHoppingAnimation: ITrainHoppingAnimation,
            _currentTrain: IAnimation<number>,
            _nextTrain?: IAnimation<number> | undefined,
            props?: { onSwitchedTrain?: () => void | undefined }
        ) => ITrainHoppingAnimation;
    };
};
export interface ITrainHoppingAnimation {
    getCurrentTrain: () => IAnimation<number> | undefined;
    getStatus: () => AnimationStatus;
    getValue: () => number;
    dispose: () => void;
    toString: () => string;
    didRegisterListener: () => void;
    didUnregisterListener: () => void;
    addListener: (listener: () => void) => void;
    removeListener: (listener: () => void) => void;
    clearListeners: () => void;
    notifyListeners: () => void;
    addStatusListener: (listener: (status: AnimationStatus) => void) => void;
    removeStatusListener: (listener: (status: AnimationStatus) => void) => void;
    clearStatusListeners: () => void;
    notifyStatusListeners: (status: AnimationStatus) => void;
    drive: <U>(child: IAnimatable<U>) => IAnimation<U>;
    toStringDetails: () => string;
    getIsDismissed: () => boolean;
    getIsCompleted: () => boolean;
    getHashCode: () => number;
}
export class TrainHoppingAnimation
    implements
        IAnimation<number>,
        IAnimationEagerListenerMixin,
        IAnimationLocalListenersMixin,
        IAnimationLocalStatusListenersMixin,
        IValueListenable<number>
{
    public constructor(
        _currentTrain: IAnimation<number>,
        _nextTrain?: IAnimation<number> | undefined,
        props?: { onSwitchedTrain?: () => void | undefined }
    ) {
        flutter.animation.trainHoppingAnimation(
            this,
            _currentTrain,
            _nextTrain,
            props
        );
    }
    private readonly _dart_getCurrentTrain: () =>
        | IAnimation<number>
        | undefined = undefined as any;
    private readonly _dart_getStatus: () => AnimationStatus = undefined as any;
    private readonly _dart_getValue: () => number = undefined as any;
    private readonly _dart_dispose: () => void = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_didRegisterListener: () => void = undefined as any;
    private readonly _dart_didUnregisterListener: () => void = undefined as any;
    private readonly _dart_addListener: (listener: () => void) => void =
        undefined as any;
    private readonly _dart_removeListener: (listener: () => void) => void =
        undefined as any;
    private readonly _dart_clearListeners: () => void = undefined as any;
    private readonly _dart_notifyListeners: () => void = undefined as any;
    private readonly _dart_addStatusListener: (
        listener: (status: AnimationStatus) => void
    ) => void = undefined as any;
    private readonly _dart_removeStatusListener: (
        listener: (status: AnimationStatus) => void
    ) => void = undefined as any;
    private readonly _dart_clearStatusListeners: () => void = undefined as any;
    private readonly _dart_notifyStatusListeners: (
        status: AnimationStatus
    ) => void = undefined as any;
    private readonly _dart_drive: <U>(child: IAnimatable<U>) => IAnimation<U> =
        undefined as any;
    private readonly _dart_toStringDetails: () => string = undefined as any;
    private readonly _dart_getIsDismissed: () => boolean = undefined as any;
    private readonly _dart_getIsCompleted: () => boolean = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public getCurrentTrain(): IAnimation<number> | undefined {
        return this._dart_getCurrentTrain();
    }
    public getStatus(): AnimationStatus {
        return this._dart_getStatus();
    }
    public getValue(): number {
        return this._dart_getValue();
    }
    public dispose(): void {
        return this._dart_dispose();
    }
    public toString(): string {
        return this._dart_toString();
    }
    public didRegisterListener(): void {
        return this._dart_didRegisterListener();
    }
    public didUnregisterListener(): void {
        return this._dart_didUnregisterListener();
    }
    public addListener(listener: () => void): void {
        return this._dart_addListener(listener);
    }
    public removeListener(listener: () => void): void {
        return this._dart_removeListener(listener);
    }
    public clearListeners(): void {
        return this._dart_clearListeners();
    }
    public notifyListeners(): void {
        return this._dart_notifyListeners();
    }
    public addStatusListener(
        listener: (status: AnimationStatus) => void
    ): void {
        return this._dart_addStatusListener(listener);
    }
    public removeStatusListener(
        listener: (status: AnimationStatus) => void
    ): void {
        return this._dart_removeStatusListener(listener);
    }
    public clearStatusListeners(): void {
        return this._dart_clearStatusListeners();
    }
    public notifyStatusListeners(status: AnimationStatus): void {
        return this._dart_notifyStatusListeners(status);
    }
    public drive<U>(child: IAnimatable<U>): IAnimation<U> {
        return this._dart_drive(child);
    }
    public toStringDetails(): string {
        return this._dart_toStringDetails();
    }
    public getIsDismissed(): boolean {
        return this._dart_getIsDismissed();
    }
    public getIsCompleted(): boolean {
        return this._dart_getIsCompleted();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
