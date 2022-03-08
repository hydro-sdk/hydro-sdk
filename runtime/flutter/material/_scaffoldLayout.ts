import { IOffset } from "../../dart/ui/offset";
import { ISize } from "../../dart/ui/size";
import { TextDirection } from "../../dart/ui/textDirection";
import { IEdgeInsets } from "../painting/edgeInsets";
import { IBoxConstraints } from "../rendering/boxConstraints";
import { IMultiChildLayoutDelegate } from "../rendering/multiChildLayoutDelegate";
import { I_ScaffoldGeometryNotifier } from "./_scaffoldGeometryNotifier";
import { IFloatingActionButtonAnimator } from "./floatingActionButtonAnimator";
import { IFloatingActionButtonLocation } from "./floatingActionButtonLocation";
declare const flutter: {
    material: {
        _scaffoldLayout: (
            this: void,
            _scaffoldLayout: I_ScaffoldLayout,
            props: {
                currentFloatingActionButtonLocation: IFloatingActionButtonLocation;
                extendBody: boolean;
                extendBodyBehindAppBar: boolean;
                extendBodyBehindMaterialBanner: boolean;
                floatingActionButtonMotionAnimator: IFloatingActionButtonAnimator;
                floatingActionButtonMoveAnimationProgress: number;
                geometryNotifier: I_ScaffoldGeometryNotifier;
                isSnackBarFloating: boolean;
                minInsets: IEdgeInsets;
                minViewPadding: IEdgeInsets;
                previousFloatingActionButtonLocation: IFloatingActionButtonLocation;
                snackBarWidth?: number | undefined;
                textDirection: TextDirection;
            }
        ) => I_ScaffoldLayout;
    };
};
export interface I_ScaffoldLayout {
    extendBody: boolean;
    extendBodyBehindAppBar: boolean;
    minInsets: IEdgeInsets;
    minViewPadding: IEdgeInsets;
    textDirection: TextDirection;
    geometryNotifier: I_ScaffoldGeometryNotifier;
    previousFloatingActionButtonLocation: IFloatingActionButtonLocation;
    currentFloatingActionButtonLocation: IFloatingActionButtonLocation;
    floatingActionButtonMoveAnimationProgress: number;
    floatingActionButtonMotionAnimator: IFloatingActionButtonAnimator;
    isSnackBarFloating: boolean;
    snackBarWidth: number | undefined;
    extendBodyBehindMaterialBanner: boolean;
    performLayout: (size: ISize) => void;
    shouldRelayout: (oldDelegate: unknown) => boolean;
    hasChild: (childId: Object) => boolean;
    layoutChild: (childId: Object, constraints: IBoxConstraints) => ISize;
    positionChild: (childId: Object, offset: IOffset) => void;
    getSize: (constraints: IBoxConstraints) => ISize;
    toString: () => string;
    getHashCode: () => number;
}
export class _ScaffoldLayout implements IMultiChildLayoutDelegate {
    public readonly extendBody: boolean = undefined as any;
    public readonly extendBodyBehindAppBar: boolean = undefined as any;
    public readonly minInsets: IEdgeInsets = undefined as any;
    public readonly minViewPadding: IEdgeInsets = undefined as any;
    public readonly textDirection: TextDirection = undefined as any;
    public readonly geometryNotifier: I_ScaffoldGeometryNotifier =
        undefined as any;
    public readonly previousFloatingActionButtonLocation: IFloatingActionButtonLocation =
        undefined as any;
    public readonly currentFloatingActionButtonLocation: IFloatingActionButtonLocation =
        undefined as any;
    public readonly floatingActionButtonMoveAnimationProgress: number =
        undefined as any;
    public readonly floatingActionButtonMotionAnimator: IFloatingActionButtonAnimator =
        undefined as any;
    public readonly isSnackBarFloating: boolean = undefined as any;
    public readonly snackBarWidth: number | undefined = undefined as any;
    public readonly extendBodyBehindMaterialBanner: boolean = undefined as any;
    public constructor(props: {
        currentFloatingActionButtonLocation: IFloatingActionButtonLocation;
        extendBody: boolean;
        extendBodyBehindAppBar: boolean;
        extendBodyBehindMaterialBanner: boolean;
        floatingActionButtonMotionAnimator: IFloatingActionButtonAnimator;
        floatingActionButtonMoveAnimationProgress: number;
        geometryNotifier: I_ScaffoldGeometryNotifier;
        isSnackBarFloating: boolean;
        minInsets: IEdgeInsets;
        minViewPadding: IEdgeInsets;
        previousFloatingActionButtonLocation: IFloatingActionButtonLocation;
        snackBarWidth?: number | undefined;
        textDirection: TextDirection;
    }) {
        flutter.material._scaffoldLayout(this, props);
    }
    private readonly _dart_performLayout: (size: ISize) => void =
        undefined as any;
    private readonly _dart_shouldRelayout: (oldDelegate: any) => boolean =
        undefined as any;
    private readonly _dart_hasChild: (childId: Object) => boolean =
        undefined as any;
    private readonly _dart_layoutChild: (
        childId: Object,
        constraints: IBoxConstraints
    ) => ISize = undefined as any;
    private readonly _dart_positionChild: (
        childId: Object,
        offset: IOffset
    ) => void = undefined as any;
    private readonly _dart_getSize: (constraints: IBoxConstraints) => ISize =
        undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public performLayout(size: ISize): void {
        return this._dart_performLayout(size);
    }
    public shouldRelayout(oldDelegate: any): boolean {
        return this._dart_shouldRelayout(oldDelegate);
    }
    public hasChild(childId: Object): boolean {
        return this._dart_hasChild(childId);
    }
    public layoutChild(childId: Object, constraints: IBoxConstraints): ISize {
        return this._dart_layoutChild(childId, constraints);
    }
    public positionChild(childId: Object, offset: IOffset): void {
        return this._dart_positionChild(childId, offset);
    }
    public getSize(constraints: IBoxConstraints): ISize {
        return this._dart_getSize(constraints);
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
