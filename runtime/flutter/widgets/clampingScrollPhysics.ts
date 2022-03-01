
import { IScrollPhysics } from "./scrollPhysics";
import { IScrollMetrics } from "./scrollMetrics";
import { IBuildContext } from "./buildContext";
import { ISimulation } from "../physics/simulation";
import { ISpringDescription } from "../physics/springDescription";
import { ITolerance } from "../physics/tolerance";
declare const flutter: {
widgets: {
clampingScrollPhysics: (this: void, clampingScrollPhysics: IClampingScrollPhysics, props? : {  parent? : IScrollPhysics | undefined,}) => IClampingScrollPhysics
}
};
export interface IClampingScrollPhysics


{
parent: IScrollPhysics | undefined;
applyTo: (ancestor?: IScrollPhysics | undefined) => IClampingScrollPhysics;
applyBoundaryConditions: (position: IScrollMetrics, value: number) => number;
createBallisticSimulation: (position: IScrollMetrics, velocity: number) => ISimulation | undefined;
buildParent: (ancestor?: IScrollPhysics | undefined) => IScrollPhysics | undefined;
applyPhysicsToUserOffset: (position: IScrollMetrics, offset: number) => number;
shouldAcceptUserOffset: (position: IScrollMetrics) => boolean;
recommendDeferredLoading: (velocity: number, metrics: IScrollMetrics, context: IBuildContext) => boolean;
adjustPositionForNewDimensions: ( props : {  isScrolling : boolean, newPosition : IScrollMetrics, oldPosition : IScrollMetrics, velocity : number,}) => number;
carriedMomentum: (existingVelocity: number) => number;
toString: () => string;
getSpring: () => ISpringDescription;
getTolerance: () => ITolerance;
getMinFlingDistance: () => number;
getMinFlingVelocity: () => number;
getMaxFlingVelocity: () => number;
getDragStartDistanceMotionThreshold: () => number | undefined;
getAllowImplicitScrolling: () => boolean;
getHashCode: () => number;
}export class ClampingScrollPhysics

 implements IScrollPhysics
{    public readonly parent: IScrollPhysics | undefined = undefined as any;
public constructor( props? : {  parent? : IScrollPhysics | undefined,}){
flutter.widgets.clampingScrollPhysics(this, props);}
    private readonly _dart_applyTo: (ancestor?: IScrollPhysics | undefined) => IClampingScrollPhysics = undefined as any;
    private readonly _dart_applyBoundaryConditions: (position: IScrollMetrics, value: number) => number = undefined as any;
    private readonly _dart_createBallisticSimulation: (position: IScrollMetrics, velocity: number) => ISimulation | undefined = undefined as any;
    private readonly _dart_buildParent: (ancestor?: IScrollPhysics | undefined) => IScrollPhysics | undefined = undefined as any;
    private readonly _dart_applyPhysicsToUserOffset: (position: IScrollMetrics, offset: number) => number = undefined as any;
    private readonly _dart_shouldAcceptUserOffset: (position: IScrollMetrics) => boolean = undefined as any;
    private readonly _dart_recommendDeferredLoading: (velocity: number, metrics: IScrollMetrics, context: IBuildContext) => boolean = undefined as any;
    private readonly _dart_adjustPositionForNewDimensions: ( props : {  isScrolling : boolean, newPosition : IScrollMetrics, oldPosition : IScrollMetrics, velocity : number,}) => number = undefined as any;
    private readonly _dart_carriedMomentum: (existingVelocity: number) => number = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getSpring: () => ISpringDescription = undefined as any;
    private readonly _dart_getTolerance: () => ITolerance = undefined as any;
    private readonly _dart_getMinFlingDistance: () => number = undefined as any;
    private readonly _dart_getMinFlingVelocity: () => number = undefined as any;
    private readonly _dart_getMaxFlingVelocity: () => number = undefined as any;
    private readonly _dart_getDragStartDistanceMotionThreshold: () => number | undefined = undefined as any;
    private readonly _dart_getAllowImplicitScrolling: () => boolean = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
public applyTo(ancestor?: IScrollPhysics | undefined) : IClampingScrollPhysics {
    return this._dart_applyTo(ancestor);
}
public applyBoundaryConditions(position: IScrollMetrics, value: number) : number {
    return this._dart_applyBoundaryConditions(position, value);
}
public createBallisticSimulation(position: IScrollMetrics, velocity: number) : ISimulation | undefined {
    return this._dart_createBallisticSimulation(position, velocity);
}
public buildParent(ancestor?: IScrollPhysics | undefined) : IScrollPhysics | undefined {
    return this._dart_buildParent(ancestor);
}
public applyPhysicsToUserOffset(position: IScrollMetrics, offset: number) : number {
    return this._dart_applyPhysicsToUserOffset(position, offset);
}
public shouldAcceptUserOffset(position: IScrollMetrics) : boolean {
    return this._dart_shouldAcceptUserOffset(position);
}
public recommendDeferredLoading(velocity: number, metrics: IScrollMetrics, context: IBuildContext) : boolean {
    return this._dart_recommendDeferredLoading(velocity, metrics, context);
}
public adjustPositionForNewDimensions( props : {  isScrolling : boolean, newPosition : IScrollMetrics, oldPosition : IScrollMetrics, velocity : number,}) : number {
    return this._dart_adjustPositionForNewDimensions(props);
}
public carriedMomentum(existingVelocity: number) : number {
    return this._dart_carriedMomentum(existingVelocity);
}
public toString() : string {
    return this._dart_toString();
}
public getSpring() : ISpringDescription {
    return this._dart_getSpring();
}
public getTolerance() : ITolerance {
    return this._dart_getTolerance();
}
public getMinFlingDistance() : number {
    return this._dart_getMinFlingDistance();
}
public getMinFlingVelocity() : number {
    return this._dart_getMinFlingVelocity();
}
public getMaxFlingVelocity() : number {
    return this._dart_getMaxFlingVelocity();
}
public getDragStartDistanceMotionThreshold() : number | undefined {
    return this._dart_getDragStartDistanceMotionThreshold();
}
public getAllowImplicitScrolling() : boolean {
    return this._dart_getAllowImplicitScrolling();
}
public getHashCode() : number {
    return this._dart_getHashCode();
}
}
