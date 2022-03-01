
import { IDragStartDetails } from "../gestures/dragStartDetails";
import { IBuildContext } from "./buildContext";
import { IScrollMetrics } from "./scrollMetrics";
import { IScrollNotification } from "./scrollNotification";
import { IViewportNotificationMixin } from "./viewportNotificationMixin";
import { IList } from "../../dart/core/list";
import { IElement } from "./element";
declare const flutter: {
widgets: {
scrollStartNotification: (this: void, scrollStartNotification: IScrollStartNotification, props : {  dragDetails? : IDragStartDetails | undefined, context? : IBuildContext | undefined, metrics : IScrollMetrics,}) => IScrollStartNotification
}
};
export interface IScrollStartNotification


{
dragDetails: IDragStartDetails | undefined;
metrics: IScrollMetrics;
context: IBuildContext | undefined;
debugFillDescription: (description: IList<string>) => void;
visitAncestor: (element: IElement) => boolean;
getDepth: () => number;
dispatch: (target?: IBuildContext | undefined) => void;
toString: () => string;
getHashCode: () => number;
}export class ScrollStartNotification

 implements Omit<IScrollNotification, "debugFillDescription" | "visitAncestor">, IViewportNotificationMixin
{    public readonly dragDetails: IDragStartDetails | undefined = undefined as any;
    public readonly metrics: IScrollMetrics = undefined as any;
    public readonly context: IBuildContext | undefined = undefined as any;
public constructor( props : {  dragDetails? : IDragStartDetails | undefined, context? : IBuildContext | undefined, metrics : IScrollMetrics,}){
flutter.widgets.scrollStartNotification(this, props);}
    private readonly _dart_debugFillDescription: (description: IList<string>) => void = undefined as any;
    private readonly _dart_visitAncestor: (element: IElement) => boolean = undefined as any;
    private readonly _dart_getDepth: () => number = undefined as any;
    private readonly _dart_dispatch: (target?: IBuildContext | undefined) => void = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
public debugFillDescription(description: IList<string>) : void {
    return this._dart_debugFillDescription(description);
}
public visitAncestor(element: IElement) : boolean {
    return this._dart_visitAncestor(element);
}
public getDepth() : number {
    return this._dart_getDepth();
}
public dispatch(target?: IBuildContext | undefined) : void {
    return this._dart_dispatch(target);
}
public toString() : string {
    return this._dart_toString();
}
public getHashCode() : number {
    return this._dart_getHashCode();
}
}
