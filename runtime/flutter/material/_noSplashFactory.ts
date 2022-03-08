import { IColor } from "../../dart/ui/color";
import { IOffset } from "../../dart/ui/offset";
import { IRect } from "../../dart/ui/rect";
import { TextDirection } from "../../dart/ui/textDirection";
import { IBorderRadius } from "../painting/borderRadius";
import { IShapeBorder } from "../painting/shapeBorder";
import { IRenderBox } from "../rendering/renderBox";
import { IInteractiveInkFeature } from "./interactiveInkFeature";
import { IInteractiveInkFeatureFactory } from "./interactiveInkFeatureFactory";
import { IMaterialInkController } from "./materialInkController";
declare const flutter: {
    material: {
        _noSplashFactory: (
            this: void,
            _noSplashFactory: I_NoSplashFactory
        ) => I_NoSplashFactory;
    };
};
export interface I_NoSplashFactory {
    create: (props: {
        borderRadius?: IBorderRadius | undefined;
        containedInkWell: boolean;
        customBorder?: IShapeBorder | undefined;
        onRemoved?: () => void | undefined;
        radius?: number | undefined;
        rectCallback?: () => IRect | undefined;
        color: IColor;
        controller: IMaterialInkController;
        position: IOffset;
        referenceBox: IRenderBox;
        textDirection: TextDirection;
    }) => IInteractiveInkFeature;
    toString: () => string;
    getHashCode: () => number;
}
export class _NoSplashFactory implements IInteractiveInkFeatureFactory {
    public constructor() {
        flutter.material._noSplashFactory(this);
    }
    private readonly _dart_create: (props: {
        borderRadius?: IBorderRadius | undefined;
        containedInkWell: boolean;
        customBorder?: IShapeBorder | undefined;
        onRemoved?: () => void | undefined;
        radius?: number | undefined;
        rectCallback?: () => IRect | undefined;
        color: IColor;
        controller: IMaterialInkController;
        position: IOffset;
        referenceBox: IRenderBox;
        textDirection: TextDirection;
    }) => IInteractiveInkFeature = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public create(props: {
        borderRadius?: IBorderRadius | undefined;
        containedInkWell?: boolean;
        customBorder?: IShapeBorder | undefined;
        onRemoved?: () => void | undefined;
        radius?: number | undefined;
        rectCallback?: () => IRect | undefined;
        color: IColor;
        controller: IMaterialInkController;
        position: IOffset;
        referenceBox: IRenderBox;
        textDirection: TextDirection;
    }): IInteractiveInkFeature {
        return this._dart_create({
            ...createDefaultProps,
            ...props,
        });
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
const createDefaultProps = {
    containedInkWell: false,
};
