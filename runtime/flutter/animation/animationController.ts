
import { AnimationBehavior } from "./animationBehavior";
import { IDuration } from "../../dart/core/duration";
import { ITickerProvider } from "../scheduler/tickerProvider";
import { IAnimation } from "./animation";
import { IValueListenable } from "../foundation/valueListenable";
import { AnimationStatus } from "./animationStatus";
import { IAnimatable } from "./animatable";
import { IAnimationEagerListenerMixin } from "./animationEagerListenerMixin";
import { IAnimationLocalListenersMixin } from "./animationLocalListenersMixin";
import { IAnimationLocalStatusListenersMixin } from "./animationLocalStatusListenersMixin";
import { ITickerFuture } from "../scheduler/tickerFuture";
import { ICurve } from "./curve";
import { ISpringDescription } from "../physics/springDescription";
import { ISimulation } from "../physics/simulation";
import { Curves } from "./curves";
declare const flutter: {
animation: {
animationController: (this: void, animationController: IAnimationController, props : {  animationBehavior : AnimationBehavior, debugLabel? : string | undefined, duration? : IDuration | undefined, lowerBound : number, reverseDuration? : IDuration | undefined, upperBound : number, value? : number | undefined, vsync : ITickerProvider,}) => IAnimationController
}
};
export interface IAnimationController


{
lowerBound: number;
upperBound: number;
debugLabel: string | undefined;
animationBehavior: AnimationBehavior;
duration: IDuration | undefined;
reverseDuration: IDuration | undefined;
getView: () => IAnimation<number>;
resync: (vsync: ITickerProvider) => void;
getValue: () => number;
setValue: (newValue: number) => void;
reset: () => void;
getVelocity: () => number;
getLastElapsedDuration: () => IDuration | undefined;
getIsAnimating: () => boolean;
getStatus: () => AnimationStatus;
forward: ( props? : {  from? : number | undefined,}) => ITickerFuture;
reverse: ( props? : {  from? : number | undefined,}) => ITickerFuture;
animateTo: (target: number, props : {  curve : ICurve, duration? : IDuration | undefined,}) => ITickerFuture;
animateBack: (target: number, props : {  curve : ICurve, duration? : IDuration | undefined,}) => ITickerFuture;
repeat: ( props : {  max? : number | undefined, min? : number | undefined, period? : IDuration | undefined, reverse : boolean,}) => ITickerFuture;
fling: ( props : {  animationBehavior? : AnimationBehavior | undefined, springDescription? : ISpringDescription | undefined, velocity : number,}) => ITickerFuture;
animateWith: (simulation: ISimulation) => ITickerFuture;
stop: ( props : {  canceled : boolean,}) => void;
dispose: () => void;
toStringDetails: () => string;
didRegisterListener: () => void;
didUnregisterListener: () => void;
addListener: (listener : () => void) => void;
removeListener: (listener : () => void) => void;
clearListeners: () => void;
notifyListeners: () => void;
addStatusListener: (listener : (status: AnimationStatus) => void) => void;
removeStatusListener: (listener : (status: AnimationStatus) => void) => void;
clearStatusListeners: () => void;
notifyStatusListeners: (status: AnimationStatus) => void;
drive: <U>(child: IAnimatable<U>) => IAnimation<U>;
toString: () => string;
getIsDismissed: () => boolean;
getIsCompleted: () => boolean;
getHashCode: () => number;
}export class AnimationController

 implements IAnimation<number>, IAnimationEagerListenerMixin, IAnimationLocalListenersMixin, IAnimationLocalStatusListenersMixin, IValueListenable<number>
{    public readonly lowerBound: number = undefined as any;
    public readonly upperBound: number = undefined as any;
    public readonly debugLabel: string | undefined = undefined as any;
    public readonly animationBehavior: AnimationBehavior = undefined as any;
    public readonly duration: IDuration | undefined = undefined as any;
    public readonly reverseDuration: IDuration | undefined = undefined as any;
public constructor( props : {  animationBehavior? : AnimationBehavior, debugLabel? : string | undefined, duration? : IDuration | undefined, lowerBound? : number, reverseDuration? : IDuration | undefined, upperBound? : number, value? : number | undefined, vsync : ITickerProvider,}){
flutter.animation.animationController(this, {
...animationControllerDefaultProps,
...props
});}
    private readonly _dart_getView: () => IAnimation<number> = undefined as any;
    private readonly _dart_resync: (vsync: ITickerProvider) => void = undefined as any;
    private readonly _dart_getValue: () => number = undefined as any;
    private readonly _dart_setValue: (newValue: number) => void = undefined as any;
    private readonly _dart_reset: () => void = undefined as any;
    private readonly _dart_getVelocity: () => number = undefined as any;
    private readonly _dart_getLastElapsedDuration: () => IDuration | undefined = undefined as any;
    private readonly _dart_getIsAnimating: () => boolean = undefined as any;
    private readonly _dart_getStatus: () => AnimationStatus = undefined as any;
    private readonly _dart_forward: ( props? : {  from? : number | undefined,}) => ITickerFuture = undefined as any;
    private readonly _dart_reverse: ( props? : {  from? : number | undefined,}) => ITickerFuture = undefined as any;
    private readonly _dart_animateTo: (target: number, props : {  curve : ICurve, duration? : IDuration | undefined,}) => ITickerFuture = undefined as any;
    private readonly _dart_animateBack: (target: number, props : {  curve : ICurve, duration? : IDuration | undefined,}) => ITickerFuture = undefined as any;
    private readonly _dart_repeat: ( props : {  max? : number | undefined, min? : number | undefined, period? : IDuration | undefined, reverse : boolean,}) => ITickerFuture = undefined as any;
    private readonly _dart_fling: ( props : {  animationBehavior? : AnimationBehavior | undefined, springDescription? : ISpringDescription | undefined, velocity : number,}) => ITickerFuture = undefined as any;
    private readonly _dart_animateWith: (simulation: ISimulation) => ITickerFuture = undefined as any;
    private readonly _dart_stop: ( props : {  canceled : boolean,}) => void = undefined as any;
    private readonly _dart_dispose: () => void = undefined as any;
    private readonly _dart_toStringDetails: () => string = undefined as any;
    private readonly _dart_didRegisterListener: () => void = undefined as any;
    private readonly _dart_didUnregisterListener: () => void = undefined as any;
    private readonly _dart_addListener: (listener : () => void) => void = undefined as any;
    private readonly _dart_removeListener: (listener : () => void) => void = undefined as any;
    private readonly _dart_clearListeners: () => void = undefined as any;
    private readonly _dart_notifyListeners: () => void = undefined as any;
    private readonly _dart_addStatusListener: (listener : (status: AnimationStatus) => void) => void = undefined as any;
    private readonly _dart_removeStatusListener: (listener : (status: AnimationStatus) => void) => void = undefined as any;
    private readonly _dart_clearStatusListeners: () => void = undefined as any;
    private readonly _dart_notifyStatusListeners: (status: AnimationStatus) => void = undefined as any;
    private readonly _dart_drive: <U>(child: IAnimatable<U>) => IAnimation<U> = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getIsDismissed: () => boolean = undefined as any;
    private readonly _dart_getIsCompleted: () => boolean = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
public getView() : IAnimation<number> {
    return this._dart_getView();
}
public resync(vsync: ITickerProvider) : void {
    return this._dart_resync(vsync);
}
public getValue() : number {
    return this._dart_getValue();
}
public setValue(newValue: number) : void {
    return this._dart_setValue(newValue);
}
public reset() : void {
    return this._dart_reset();
}
public getVelocity() : number {
    return this._dart_getVelocity();
}
public getLastElapsedDuration() : IDuration | undefined {
    return this._dart_getLastElapsedDuration();
}
public getIsAnimating() : boolean {
    return this._dart_getIsAnimating();
}
public getStatus() : AnimationStatus {
    return this._dart_getStatus();
}
public forward( props? : {  from? : number | undefined,}) : ITickerFuture {
    return this._dart_forward(props);
}
public reverse( props? : {  from? : number | undefined,}) : ITickerFuture {
    return this._dart_reverse(props);
}
public animateTo(target: number, props : {  curve? : ICurve, duration? : IDuration | undefined,}) : ITickerFuture {
    return this._dart_animateTo(target, {
...animateToDefaultProps,
...props
});
}
public animateBack(target: number, props : {  curve? : ICurve, duration? : IDuration | undefined,}) : ITickerFuture {
    return this._dart_animateBack(target, {
...animateBackDefaultProps,
...props
});
}
public repeat( props : {  max? : number | undefined, min? : number | undefined, period? : IDuration | undefined, reverse? : boolean,}) : ITickerFuture {
    return this._dart_repeat({
...repeatDefaultProps,
...props
});
}
public fling( props : {  animationBehavior? : AnimationBehavior | undefined, springDescription? : ISpringDescription | undefined, velocity? : number,}) : ITickerFuture {
    return this._dart_fling({
...flingDefaultProps,
...props
});
}
public animateWith(simulation: ISimulation) : ITickerFuture {
    return this._dart_animateWith(simulation);
}
public stop( props : {  canceled? : boolean,}) : void {
    return this._dart_stop({
...stopDefaultProps,
...props
});
}
public dispose() : void {
    return this._dart_dispose();
}
public toStringDetails() : string {
    return this._dart_toStringDetails();
}
public didRegisterListener() : void {
    return this._dart_didRegisterListener();
}
public didUnregisterListener() : void {
    return this._dart_didUnregisterListener();
}
public addListener(listener : () => void) : void {
    return this._dart_addListener(listener);
}
public removeListener(listener : () => void) : void {
    return this._dart_removeListener(listener);
}
public clearListeners() : void {
    return this._dart_clearListeners();
}
public notifyListeners() : void {
    return this._dart_notifyListeners();
}
public addStatusListener(listener : (status: AnimationStatus) => void) : void {
    return this._dart_addStatusListener(listener);
}
public removeStatusListener(listener : (status: AnimationStatus) => void) : void {
    return this._dart_removeStatusListener(listener);
}
public clearStatusListeners() : void {
    return this._dart_clearStatusListeners();
}
public notifyStatusListeners(status: AnimationStatus) : void {
    return this._dart_notifyStatusListeners(status);
}
public drive<U>(child: IAnimatable<U>) : IAnimation<U> {
    return this._dart_drive(child);
}
public toString() : string {
    return this._dart_toString();
}
public getIsDismissed() : boolean {
    return this._dart_getIsDismissed();
}
public getIsCompleted() : boolean {
    return this._dart_getIsCompleted();
}
public getHashCode() : number {
    return this._dart_getHashCode();
}
}
const animationControllerDefaultProps = {
    animationBehavior: AnimationBehavior.normal,
    lowerBound: 0.0,
    upperBound: 1.0,
};
const animateToDefaultProps = {
    curve: Curves.linear,
};
const animateBackDefaultProps = {
    curve: Curves.linear,
};
const repeatDefaultProps = {
    reverse: false,
};
const flingDefaultProps = {
    velocity: 1.0,
};
const stopDefaultProps = {
    canceled: true,
};
