import { ISize } from "../../dart/ui/size";
declare const flutter: {
    painting: {
        fittedSizes: (
            this: void,
            fittedSizes: IFittedSizes,
            source: ISize,
            destination: ISize
        ) => IFittedSizes;
    };
};
export interface IFittedSizes {
    source: ISize;
    destination: ISize;
}
export class FittedSizes {
    public readonly source: ISize = undefined as any;
    public readonly destination: ISize = undefined as any;
    public constructor(source: ISize, destination: ISize) {
        flutter.painting.fittedSizes(this, source, destination);
    }
}
