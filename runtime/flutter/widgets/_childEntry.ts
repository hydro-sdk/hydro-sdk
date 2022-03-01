
import { IAnimation } from "../animation/animation";
import { IAnimationController } from "../animation/animationController";
import { IWidget } from "./widget";
declare const flutter: {
widgets: {
_childEntry: (this: void, _childEntry: I_ChildEntry, props : {  animation : IAnimation<number>, controller : IAnimationController, transition : IWidget, widgetChild : IWidget,}) => I_ChildEntry
}
};
export interface I_ChildEntry


{
controller: IAnimationController;
animation: IAnimation<number>;
transition: IWidget;
widgetChild: IWidget;
toString: () => string;
}export class _ChildEntry


{    public readonly controller: IAnimationController = undefined as any;
    public readonly animation: IAnimation<number> = undefined as any;
    public readonly transition: IWidget = undefined as any;
    public readonly widgetChild: IWidget = undefined as any;
public constructor( props : {  animation : IAnimation<number>, controller : IAnimationController, transition : IWidget, widgetChild : IWidget,}){
flutter.widgets._childEntry(this, props);}
    private readonly _dart_toString: () => string = undefined as any;
public toString() : string {
    return this._dart_toString();
}
}
