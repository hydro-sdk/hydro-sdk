import { ICanvas } from "../../dart/ui/canvas";
import { IMatrix4 } from "../../vector_math/matrix4";
import { IRenderBox } from "../rendering/renderBox";
import { IMaterialInkController } from "./materialInkController";
declare const flutter: {
    material: {
        inkFeature: (
            this: void,
            inkFeature: IInkFeature,
            props: {
                onRemoved?: () => void | undefined;
                controller: IMaterialInkController;
                referenceBox: IRenderBox;
            }
        ) => IInkFeature;
    };
};
export interface IInkFeature {
    referenceBox: IRenderBox;
    getController: () => IMaterialInkController;
    dispose: () => void;
    paintFeature: (canvas: ICanvas, transform: IMatrix4) => void;
    toString: () => string;
}
export class InkFeature {
    public readonly referenceBox: IRenderBox = undefined as any;
    public constructor(props: {
        onRemoved?: () => void | undefined;
        controller: IMaterialInkController;
        referenceBox: IRenderBox;
    }) {
        flutter.material.inkFeature(this, props);
    }
    private readonly _dart_getController: () => IMaterialInkController =
        undefined as any;
    private readonly _dart_dispose: () => void = undefined as any;
    private readonly _dart_paintFeature: (
        canvas: ICanvas,
        transform: IMatrix4
    ) => void = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    public getController(): IMaterialInkController {
        return this._dart_getController();
    }
    public dispose(): void {
        return this._dart_dispose();
    }
    public paintFeature(canvas: ICanvas, transform: IMatrix4): void {
        return this._dart_paintFeature(canvas, transform);
    }
    public toString(): string {
        return this._dart_toString();
    }
}
