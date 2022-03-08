import { IOffset } from "../../dart/ui/offset";
import { IFloatingActionButtonAnimator } from "./floatingActionButtonAnimator";
import { IFloatingActionButtonLocation } from "./floatingActionButtonLocation";
import { IScaffoldPrelayoutGeometry } from "./scaffoldPrelayoutGeometry";
declare const flutter: {
    material: {
        _transitionSnapshotFabLocation: (
            this: void,
            _transitionSnapshotFabLocation: I_TransitionSnapshotFabLocation,
            begin: IFloatingActionButtonLocation,
            end: IFloatingActionButtonLocation,
            animator: IFloatingActionButtonAnimator,
            progress: number
        ) => I_TransitionSnapshotFabLocation;
    };
};
export interface I_TransitionSnapshotFabLocation {
    begin: IFloatingActionButtonLocation;
    end: IFloatingActionButtonLocation;
    animator: IFloatingActionButtonAnimator;
    progress: number;
    getOffset: (scaffoldGeometry: IScaffoldPrelayoutGeometry) => IOffset;
    toString: () => string;
    getHashCode: () => number;
}
export class _TransitionSnapshotFabLocation
    implements IFloatingActionButtonLocation
{
    public readonly begin: IFloatingActionButtonLocation = undefined as any;
    public readonly end: IFloatingActionButtonLocation = undefined as any;
    public readonly animator: IFloatingActionButtonAnimator = undefined as any;
    public readonly progress: number = undefined as any;
    public constructor(
        begin: IFloatingActionButtonLocation,
        end: IFloatingActionButtonLocation,
        animator: IFloatingActionButtonAnimator,
        progress: number
    ) {
        flutter.material._transitionSnapshotFabLocation(
            this,
            begin,
            end,
            animator,
            progress
        );
    }
    private readonly _dart_getOffset: (
        scaffoldGeometry: IScaffoldPrelayoutGeometry
    ) => IOffset = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public getOffset(scaffoldGeometry: IScaffoldPrelayoutGeometry): IOffset {
        return this._dart_getOffset(scaffoldGeometry);
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
