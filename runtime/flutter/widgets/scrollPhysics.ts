import { ISimulation } from "../physics/simulation";
import { ISpringDescription } from "../physics/springDescription";
import { ITolerance } from "../physics/tolerance";
import { IBuildContext } from "./buildContext";
import { IScrollMetrics } from "./scrollMetrics";
declare const flutter: {
    widgets: {
        scrollPhysics: (
            this: void,
            scrollPhysics: IScrollPhysics,
            props?: { parent?: IScrollPhysics | undefined }
        ) => IScrollPhysics;
    };
};
export interface IScrollPhysics {
    parent: IScrollPhysics | undefined;
    buildParent: (
        ancestor?: IScrollPhysics | undefined
    ) => IScrollPhysics | undefined;
    applyTo: (ancestor?: IScrollPhysics | undefined) => IScrollPhysics;
    applyPhysicsToUserOffset: (
        position: IScrollMetrics,
        offset: number
    ) => number;
    shouldAcceptUserOffset: (position: IScrollMetrics) => boolean;
    recommendDeferredLoading: (
        velocity: number,
        metrics: IScrollMetrics,
        context: IBuildContext
    ) => boolean;
    applyBoundaryConditions: (
        position: IScrollMetrics,
        value: number
    ) => number;
    adjustPositionForNewDimensions: (props: {
        isScrolling: boolean;
        newPosition: IScrollMetrics;
        oldPosition: IScrollMetrics;
        velocity: number;
    }) => number;
    createBallisticSimulation: (
        position: IScrollMetrics,
        velocity: number
    ) => ISimulation | undefined;
    getSpring: () => ISpringDescription;
    getTolerance: () => ITolerance;
    getMinFlingDistance: () => number;
    getMinFlingVelocity: () => number;
    getMaxFlingVelocity: () => number;
    carriedMomentum: (existingVelocity: number) => number;
    getDragStartDistanceMotionThreshold: () => number | undefined;
    getAllowImplicitScrolling: () => boolean;
    toString: () => string;
}
export class ScrollPhysics {
    public readonly parent: IScrollPhysics | undefined = undefined as any;
    public constructor(props?: { parent?: IScrollPhysics | undefined }) {
        flutter.widgets.scrollPhysics(this, props);
    }
    private readonly _dart_buildParent: (
        ancestor?: IScrollPhysics | undefined
    ) => IScrollPhysics | undefined = undefined as any;
    private readonly _dart_applyTo: (
        ancestor?: IScrollPhysics | undefined
    ) => IScrollPhysics = undefined as any;
    private readonly _dart_applyPhysicsToUserOffset: (
        position: IScrollMetrics,
        offset: number
    ) => number = undefined as any;
    private readonly _dart_shouldAcceptUserOffset: (
        position: IScrollMetrics
    ) => boolean = undefined as any;
    private readonly _dart_recommendDeferredLoading: (
        velocity: number,
        metrics: IScrollMetrics,
        context: IBuildContext
    ) => boolean = undefined as any;
    private readonly _dart_applyBoundaryConditions: (
        position: IScrollMetrics,
        value: number
    ) => number = undefined as any;
    private readonly _dart_adjustPositionForNewDimensions: (props: {
        isScrolling: boolean;
        newPosition: IScrollMetrics;
        oldPosition: IScrollMetrics;
        velocity: number;
    }) => number = undefined as any;
    private readonly _dart_createBallisticSimulation: (
        position: IScrollMetrics,
        velocity: number
    ) => ISimulation | undefined = undefined as any;
    private readonly _dart_getSpring: () => ISpringDescription =
        undefined as any;
    private readonly _dart_getTolerance: () => ITolerance = undefined as any;
    private readonly _dart_getMinFlingDistance: () => number = undefined as any;
    private readonly _dart_getMinFlingVelocity: () => number = undefined as any;
    private readonly _dart_getMaxFlingVelocity: () => number = undefined as any;
    private readonly _dart_carriedMomentum: (
        existingVelocity: number
    ) => number = undefined as any;
    private readonly _dart_getDragStartDistanceMotionThreshold: () =>
        | number
        | undefined = undefined as any;
    private readonly _dart_getAllowImplicitScrolling: () => boolean =
        undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    public buildParent(
        ancestor?: IScrollPhysics | undefined
    ): IScrollPhysics | undefined {
        return this._dart_buildParent(ancestor);
    }
    public applyTo(ancestor?: IScrollPhysics | undefined): IScrollPhysics {
        return this._dart_applyTo(ancestor);
    }
    public applyPhysicsToUserOffset(
        position: IScrollMetrics,
        offset: number
    ): number {
        return this._dart_applyPhysicsToUserOffset(position, offset);
    }
    public shouldAcceptUserOffset(position: IScrollMetrics): boolean {
        return this._dart_shouldAcceptUserOffset(position);
    }
    public recommendDeferredLoading(
        velocity: number,
        metrics: IScrollMetrics,
        context: IBuildContext
    ): boolean {
        return this._dart_recommendDeferredLoading(velocity, metrics, context);
    }
    public applyBoundaryConditions(
        position: IScrollMetrics,
        value: number
    ): number {
        return this._dart_applyBoundaryConditions(position, value);
    }
    public adjustPositionForNewDimensions(props: {
        isScrolling: boolean;
        newPosition: IScrollMetrics;
        oldPosition: IScrollMetrics;
        velocity: number;
    }): number {
        return this._dart_adjustPositionForNewDimensions(props);
    }
    public createBallisticSimulation(
        position: IScrollMetrics,
        velocity: number
    ): ISimulation | undefined {
        return this._dart_createBallisticSimulation(position, velocity);
    }
    public getSpring(): ISpringDescription {
        return this._dart_getSpring();
    }
    public getTolerance(): ITolerance {
        return this._dart_getTolerance();
    }
    public getMinFlingDistance(): number {
        return this._dart_getMinFlingDistance();
    }
    public getMinFlingVelocity(): number {
        return this._dart_getMinFlingVelocity();
    }
    public getMaxFlingVelocity(): number {
        return this._dart_getMaxFlingVelocity();
    }
    public carriedMomentum(existingVelocity: number): number {
        return this._dart_carriedMomentum(existingVelocity);
    }
    public getDragStartDistanceMotionThreshold(): number | undefined {
        return this._dart_getDragStartDistanceMotionThreshold();
    }
    public getAllowImplicitScrolling(): boolean {
        return this._dart_getAllowImplicitScrolling();
    }
    public toString(): string {
        return this._dart_toString();
    }
}
