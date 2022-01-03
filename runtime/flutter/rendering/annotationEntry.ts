import { IOffset } from "../../dart/ui/offset";
declare const flutter: {
    rendering: {
        annotationEntry: <T>(
            this: void,
            annotationEntry: IAnnotationEntry<T>,
            props: { annotation: T; localPosition: IOffset }
        ) => IAnnotationEntry<T>;
    };
};
export interface IAnnotationEntry<T> {
    localPosition: IOffset;
    toString: () => string;
}
export class AnnotationEntry<T> {
    public readonly localPosition: IOffset = undefined as any;
    public constructor(props: { annotation: T; localPosition: IOffset }) {
        flutter.rendering.annotationEntry(this, props);
    }
    private readonly _dart_toString: () => string = undefined as any;
    public toString(): string {
        return this._dart_toString();
    }
}
