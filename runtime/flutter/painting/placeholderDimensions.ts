import { PlaceholderAlignment } from "../../dart/ui/placeholderAlignment";
import { ISize } from "../../dart/ui/size";
import { TextBaseline } from "../../dart/ui/textBaseline";
declare const flutter: {
    painting: {
        placeholderDimensions: (
            this: void,
            placeholderDimensions: IPlaceholderDimensions,
            props: {
                baseline?: TextBaseline | undefined;
                baselineOffset?: number | undefined;
                alignment: PlaceholderAlignment;
                size: ISize;
            }
        ) => IPlaceholderDimensions;
    };
};
export interface IPlaceholderDimensions {
    size: ISize;
    alignment: PlaceholderAlignment;
    baselineOffset: number | undefined;
    baseline: TextBaseline | undefined;
    toString: () => string;
}
export class PlaceholderDimensions {
    public static empty = new PlaceholderDimensions();
    public readonly size: ISize = undefined as any;
    public readonly alignment: PlaceholderAlignment = undefined as any;
    public readonly baselineOffset: number | undefined = undefined as any;
    public readonly baseline: TextBaseline | undefined = undefined as any;
    public constructor(props: {
        baseline?: TextBaseline | undefined;
        baselineOffset?: number | undefined;
        alignment: PlaceholderAlignment;
        size: ISize;
    }) {
        flutter.painting.placeholderDimensions(this, props);
    }
    private readonly _dart_toString: () => string = undefined as any;
    public toString(): string {
        return this._dart_toString();
    }
}
