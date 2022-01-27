import { IPath } from "../../dart/ui/path";
import { IRect } from "../../dart/ui/rect";
import { INotchedShape } from "./notchedShape";
import { IShapeBorder } from "./shapeBorder";
declare const flutter: {
    painting: {
        automaticNotchedShape: (
            this: void,
            automaticNotchedShape: IAutomaticNotchedShape,
            host: IShapeBorder,
            guest?: IShapeBorder | undefined
        ) => IAutomaticNotchedShape;
    };
};
export interface IAutomaticNotchedShape {
    host: IShapeBorder;
    guest: IShapeBorder | undefined;
    getOuterPath: (hostRect: IRect, guestRect?: IRect | undefined) => IPath;
    toString: () => string;
    getHashCode: () => number;
}
export class AutomaticNotchedShape implements INotchedShape {
    public readonly host: IShapeBorder = undefined as any;
    public readonly guest: IShapeBorder | undefined = undefined as any;
    public constructor(host: IShapeBorder, guest?: IShapeBorder | undefined) {
        flutter.painting.automaticNotchedShape(this, host, guest);
    }
    private readonly _dart_getOuterPath: (
        hostRect: IRect,
        guestRect?: IRect | undefined
    ) => IPath = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public getOuterPath(hostRect: IRect, guestRect?: IRect | undefined): IPath {
        return this._dart_getOuterPath(hostRect, guestRect);
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
