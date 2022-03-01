
import { INotification } from "./notification";
import { IElement } from "./element";
import { IBuildContext } from "./buildContext";
import { IList } from "../../dart/core/list";
declare const flutter: {
widgets: {
layoutChangedNotification: (this: void, layoutChangedNotification: ILayoutChangedNotification) => ILayoutChangedNotification
}
};
export interface ILayoutChangedNotification


{
visitAncestor: (element: IElement) => boolean;
dispatch: (target?: IBuildContext | undefined) => void;
toString: () => string;
debugFillDescription: (description: IList<string>) => void;
getHashCode: () => number;
}export class LayoutChangedNotification

 implements INotification
{public constructor(){
flutter.widgets.layoutChangedNotification(this);}
    private readonly _dart_visitAncestor: (element: IElement) => boolean = undefined as any;
    private readonly _dart_dispatch: (target?: IBuildContext | undefined) => void = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_debugFillDescription: (description: IList<string>) => void = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
public visitAncestor(element: IElement) : boolean {
    return this._dart_visitAncestor(element);
}
public dispatch(target?: IBuildContext | undefined) : void {
    return this._dart_dispatch(target);
}
public toString() : string {
    return this._dart_toString();
}
public debugFillDescription(description: IList<string>) : void {
    return this._dart_debugFillDescription(description);
}
public getHashCode() : number {
    return this._dart_getHashCode();
}
}
