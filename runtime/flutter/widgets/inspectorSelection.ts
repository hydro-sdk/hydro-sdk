
import { IList } from "../../dart/core/list";
import { IRenderObject } from "../rendering/renderObject";
import { IElement } from "./element";
declare const flutter: {
widgets: {
inspectorSelection: (this: void, inspectorSelection: IInspectorSelection) => IInspectorSelection
}
};
export interface IInspectorSelection


{
getCandidates: () => IList<IRenderObject>;
setCandidates: (value: IList<IRenderObject>) => void;
getIndex: () => number;
setIndex: (value: number) => void;
clear: () => void;
getCurrent: () => IRenderObject | undefined;
setCurrent: (value?: IRenderObject | undefined) => void;
getCurrentElement: () => IElement | undefined;
setCurrentElement: (element?: IElement | undefined) => void;
getActive: () => boolean;
}export class InspectorSelection


{public constructor(){
flutter.widgets.inspectorSelection(this);}
    private readonly _dart_getCandidates: () => IList<IRenderObject> = undefined as any;
    private readonly _dart_setCandidates: (value: IList<IRenderObject>) => void = undefined as any;
    private readonly _dart_getIndex: () => number = undefined as any;
    private readonly _dart_setIndex: (value: number) => void = undefined as any;
    private readonly _dart_clear: () => void = undefined as any;
    private readonly _dart_getCurrent: () => IRenderObject | undefined = undefined as any;
    private readonly _dart_setCurrent: (value?: IRenderObject | undefined) => void = undefined as any;
    private readonly _dart_getCurrentElement: () => IElement | undefined = undefined as any;
    private readonly _dart_setCurrentElement: (element?: IElement | undefined) => void = undefined as any;
    private readonly _dart_getActive: () => boolean = undefined as any;
public getCandidates() : IList<IRenderObject> {
    return this._dart_getCandidates();
}
public setCandidates(value: IList<IRenderObject>) : void {
    return this._dart_setCandidates(value);
}
public getIndex() : number {
    return this._dart_getIndex();
}
public setIndex(value: number) : void {
    return this._dart_setIndex(value);
}
public clear() : void {
    return this._dart_clear();
}
public getCurrent() : IRenderObject | undefined {
    return this._dart_getCurrent();
}
public setCurrent(value?: IRenderObject | undefined) : void {
    return this._dart_setCurrent(value);
}
public getCurrentElement() : IElement | undefined {
    return this._dart_getCurrentElement();
}
public setCurrentElement(element?: IElement | undefined) : void {
    return this._dart_setCurrentElement(element);
}
public getActive() : boolean {
    return this._dart_getActive();
}
}
