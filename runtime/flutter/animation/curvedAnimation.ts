import { IValueListenable } from "../foundation/valueListenable";
import { IAnimatable } from "./animatable";
import { IAnimation } from "./animation";
import { AnimationStatus } from "./animationStatus";
import { IAnimationWithParentMixin } from "./animationWithParentMixin";
import { ICurve } from "./curve";
declare const flutter: {
    animation: {
        curvedAnimation: (
            this: void,
            curvedAnimation: ICurvedAnimation,
            props: {
                reverseCurve?: ICurve | undefined;
                curve: ICurve;
                parent: IAnimation<number>;
            }
        ) => ICurvedAnimation;
    };
};
export interface ICurvedAnimation {
    parent: IAnimation<number>;
    curve: ICurve;
    reverseCurve: ICurve | undefined;
    isDisposed: boolean;
    dispose: () => void;
    getValue: () => number;
    toString: () => string;
    addListener: (listener: () => void) => void;
    removeListener: (listener: () => void) => void;
    addStatusListener: (listener: (status: AnimationStatus) => void) => void;
    removeStatusListener: (listener: (status: AnimationStatus) => void) => void;
    getParent: () => IAnimation<number>;
    getStatus: () => AnimationStatus;
    drive: <U>(child: IAnimatable<U>) => IAnimation<U>;
    toStringDetails: () => string;
    getIsDismissed: () => boolean;
    getIsCompleted: () => boolean;
    getHashCode: () => number;
}
export class CurvedAnimation
    implements
        IAnimation<number>,
        IAnimationWithParentMixin<number>,
        IValueListenable<number>
{
    public readonly parent: IAnimation<number> = undefined as any;
    public readonly curve: ICurve = undefined as any;
    public readonly reverseCurve: ICurve | undefined = undefined as any;
    public readonly isDisposed: boolean = undefined as any;
    public constructor(props: {
        reverseCurve?: ICurve | undefined;
        curve: ICurve;
        parent: IAnimation<number>;
    }) {
        flutter.animation.curvedAnimation(this, props);
    }
    private readonly _dart_dispose: () => void = undefined as any;
    private readonly _dart_getValue: () => number = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_addListener: (listener: () => void) => void =
        undefined as any;
    private readonly _dart_removeListener: (listener: () => void) => void =
        undefined as any;
    private readonly _dart_addStatusListener: (
        listener: (status: AnimationStatus) => void
    ) => void = undefined as any;
    private readonly _dart_removeStatusListener: (
        listener: (status: AnimationStatus) => void
    ) => void = undefined as any;
    private readonly _dart_getParent: () => IAnimation<number> =
        undefined as any;
    private readonly _dart_getStatus: () => AnimationStatus = undefined as any;
    private readonly _dart_drive: <U>(child: IAnimatable<U>) => IAnimation<U> =
        undefined as any;
    private readonly _dart_toStringDetails: () => string = undefined as any;
    private readonly _dart_getIsDismissed: () => boolean = undefined as any;
    private readonly _dart_getIsCompleted: () => boolean = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public dispose(): void {
        return this._dart_dispose();
    }
    public getValue(): number {
        return this._dart_getValue();
    }
    public toString(): string {
        return this._dart_toString();
    }
    public addListener(listener: () => void): void {
        return this._dart_addListener(listener);
    }
    public removeListener(listener: () => void): void {
        return this._dart_removeListener(listener);
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
    public getParent(): IAnimation<number> {
        return this._dart_getParent();
    }
    public getStatus(): AnimationStatus {
        return this._dart_getStatus();
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
