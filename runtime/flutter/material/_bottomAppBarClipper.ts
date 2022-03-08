import { IPath } from "../../dart/ui/path";
import { IRect } from "../../dart/ui/rect";
import { ISize } from "../../dart/ui/size";
import { IValueListenable } from "../foundation/valueListenable";
import { INotchedShape } from "../painting/notchedShape";
import { ICustomClipper } from "../rendering/customClipper";
import { IGlobalKey } from "../widgets/globalKey";
import { IState } from "../widgets/state";
import { IStatefulWidget } from "../widgets/statefulWidget";
import { IScaffoldGeometry } from "./scaffoldGeometry";
declare const flutter: {
    material: {
        _bottomAppBarClipper: (
            this: void,
            _bottomAppBarClipper: I_BottomAppBarClipper,
            props: {
                geometry: IValueListenable<IScaffoldGeometry>;
                materialKey: IGlobalKey<IState<IStatefulWidget>>;
                notchMargin: number;
                shape: INotchedShape;
            }
        ) => I_BottomAppBarClipper;
    };
};
export interface I_BottomAppBarClipper {
    geometry: IValueListenable<IScaffoldGeometry>;
    shape: INotchedShape;
    materialKey: IGlobalKey<IState<IStatefulWidget>>;
    notchMargin: number;
    getBottomNavigationBarTop: () => number;
    getClip: (size: ISize) => IPath;
    shouldReclip: (oldClipper: unknown) => boolean;
    addListener: (listener: () => void) => void;
    removeListener: (listener: () => void) => void;
    getApproximateClipRect: (size: ISize) => IRect;
    toString: () => string;
    getHashCode: () => number;
}
export class _BottomAppBarClipper implements ICustomClipper<IPath> {
    public readonly geometry: IValueListenable<IScaffoldGeometry> =
        undefined as any;
    public readonly shape: INotchedShape = undefined as any;
    public readonly materialKey: IGlobalKey<IState<IStatefulWidget>> =
        undefined as any;
    public readonly notchMargin: number = undefined as any;
    public constructor(props: {
        geometry: IValueListenable<IScaffoldGeometry>;
        materialKey: IGlobalKey<IState<IStatefulWidget>>;
        notchMargin: number;
        shape: INotchedShape;
    }) {
        flutter.material._bottomAppBarClipper(this, props);
    }
    private readonly _dart_getBottomNavigationBarTop: () => number =
        undefined as any;
    private readonly _dart_getClip: (size: ISize) => IPath = undefined as any;
    private readonly _dart_shouldReclip: (oldClipper: any) => boolean =
        undefined as any;
    private readonly _dart_addListener: (listener: () => void) => void =
        undefined as any;
    private readonly _dart_removeListener: (listener: () => void) => void =
        undefined as any;
    private readonly _dart_getApproximateClipRect: (size: ISize) => IRect =
        undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public getBottomNavigationBarTop(): number {
        return this._dart_getBottomNavigationBarTop();
    }
    public getClip(size: ISize): IPath {
        return this._dart_getClip(size);
    }
    public shouldReclip(oldClipper: any): boolean {
        return this._dart_shouldReclip(oldClipper);
    }
    public addListener(listener: () => void): void {
        return this._dart_addListener(listener);
    }
    public removeListener(listener: () => void): void {
        return this._dart_removeListener(listener);
    }
    public getApproximateClipRect(size: ISize): IRect {
        return this._dart_getApproximateClipRect(size);
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
