import { IAnimatable } from "../animation/animatable";
import { IAnimation } from "../animation/animation";
import { AnimationStatus } from "../animation/animationStatus";
import { IAnimationWithParentMixin } from "../animation/animationWithParentMixin";
import { IValueListenable } from "../foundation/valueListenable";
import { ITabController } from "./tabController";
declare const flutter: {
    material: {
        _dragAnimation: (
            this: void,
            _dragAnimation: I_DragAnimation,
            controller: ITabController,
            index: number
        ) => I_DragAnimation;
    };
};
export interface I_DragAnimation {
    controller: ITabController;
    index: number;
    getParent: () => IAnimation<number>;
    removeStatusListener: (listener: (status: AnimationStatus) => void) => void;
    removeListener: (listener: () => void) => void;
    getValue: () => number;
    addListener: (listener: () => void) => void;
    addStatusListener: (listener: (status: AnimationStatus) => void) => void;
    getStatus: () => AnimationStatus;
    drive: <U>(child: IAnimatable<U>) => IAnimation<U>;
    toString: () => string;
    toStringDetails: () => string;
    getIsDismissed: () => boolean;
    getIsCompleted: () => boolean;
    getHashCode: () => number;
}
export class _DragAnimation
    implements
        IAnimation<number>,
        IAnimationWithParentMixin<number>,
        IValueListenable<number>
{
    public readonly controller: ITabController = undefined as any;
    public readonly index: number = undefined as any;
    public constructor(controller: ITabController, index: number) {
        flutter.material._dragAnimation(this, controller, index);
    }
    private readonly _dart_getParent: () => IAnimation<number> =
        undefined as any;
    private readonly _dart_removeStatusListener: (
        listener: (status: AnimationStatus) => void
    ) => void = undefined as any;
    private readonly _dart_removeListener: (listener: () => void) => void =
        undefined as any;
    private readonly _dart_getValue: () => number = undefined as any;
    private readonly _dart_addListener: (listener: () => void) => void =
        undefined as any;
    private readonly _dart_addStatusListener: (
        listener: (status: AnimationStatus) => void
    ) => void = undefined as any;
    private readonly _dart_getStatus: () => AnimationStatus = undefined as any;
    private readonly _dart_drive: <U>(child: IAnimatable<U>) => IAnimation<U> =
        undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_toStringDetails: () => string = undefined as any;
    private readonly _dart_getIsDismissed: () => boolean = undefined as any;
    private readonly _dart_getIsCompleted: () => boolean = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public getParent(): IAnimation<number> {
        return this._dart_getParent();
    }
    public removeStatusListener(
        listener: (status: AnimationStatus) => void
    ): void {
        return this._dart_removeStatusListener(listener);
    }
    public removeListener(listener: () => void): void {
        return this._dart_removeListener(listener);
    }
    public getValue(): number {
        return this._dart_getValue();
    }
    public addListener(listener: () => void): void {
        return this._dart_addListener(listener);
    }
    public addStatusListener(
        listener: (status: AnimationStatus) => void
    ): void {
        return this._dart_addStatusListener(listener);
    }
    public getStatus(): AnimationStatus {
        return this._dart_getStatus();
    }
    public drive<U>(child: IAnimatable<U>): IAnimation<U> {
        return this._dart_drive(child);
    }
    public toString(): string {
        return this._dart_toString();
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
