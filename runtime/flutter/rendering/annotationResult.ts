
import { IAnnotationEntry } from "./annotationEntry";
import { IIterable } from "../../dart/core/iterable";
declare const flutter: {
rendering: {
annotationResult: <T>(this: void, annotationResult: IAnnotationResult<T>) => IAnnotationResult<T>
}
};
export interface IAnnotationResult
<T>

{
add: (entry: IAnnotationEntry<T>) => void;
getEntries: () => IIterable<IAnnotationEntry<T>>;
getAnnotations: () => IIterable<T>;
}export class AnnotationResult
<T>

{public constructor(){
flutter.rendering.annotationResult(this);}
    private readonly _dart_add: (entry: IAnnotationEntry<T>) => void = undefined as any;
    private readonly _dart_getEntries: () => IIterable<IAnnotationEntry<T>> = undefined as any;
    private readonly _dart_getAnnotations: () => IIterable<T> = undefined as any;
public add(entry: IAnnotationEntry<T>) : void {
    return this._dart_add(entry);
}
public getEntries() : IIterable<IAnnotationEntry<T>> {
    return this._dart_getEntries();
}
public getAnnotations() : IIterable<T> {
    return this._dart_getAnnotations();
}
}
