import { ICanvas } from "../../dart/ui/canvas";
import { IMatrix4 } from "../../vector_math/matrix4";
import { IDecoration } from "../painting/decoration";
import { IImageConfiguration } from "../painting/imageConfiguration";
import { IRenderBox } from "../rendering/renderBox";
import { IInkFeature } from "./inkFeature";
import { IMaterialInkController } from "./materialInkController";
declare const flutter: {
    material: {
        inkDecoration: (
            this: void,
            inkDecoration: IInkDecoration,
            props: {
                onRemoved?: () => void | undefined;
                configuration: IImageConfiguration;
                controller: IMaterialInkController;
                decoration?: IDecoration | undefined;
                referenceBox: IRenderBox;
            }
        ) => IInkDecoration;
    };
};
export interface IInkDecoration {
    referenceBox: IRenderBox;
    onRemoved: () => void | undefined;
    getDecoration: () => IDecoration | undefined;
    setDecoration: (value?: IDecoration | undefined) => void;
    getConfiguration: () => IImageConfiguration;
    setConfiguration: (value: IImageConfiguration) => void;
    dispose: () => void;
    paintFeature: (canvas: ICanvas, transform: IMatrix4) => void;
    toString: () => string;
    getController: () => IMaterialInkController;
    getHashCode: () => number;
}
export class InkDecoration implements IInkFeature {
    public readonly referenceBox: IRenderBox = undefined as any;
    public readonly onRemoved: () => void | undefined = undefined as any;
    public constructor(props: {
        onRemoved?: () => void | undefined;
        configuration: IImageConfiguration;
        controller: IMaterialInkController;
        decoration?: IDecoration | undefined;
        referenceBox: IRenderBox;
    }) {
        flutter.material.inkDecoration(this, props);
    }
    private readonly _dart_getDecoration: () => IDecoration | undefined =
        undefined as any;
    private readonly _dart_setDecoration: (
        value?: IDecoration | undefined
    ) => void = undefined as any;
    private readonly _dart_getConfiguration: () => IImageConfiguration =
        undefined as any;
    private readonly _dart_setConfiguration: (
        value: IImageConfiguration
    ) => void = undefined as any;
    private readonly _dart_dispose: () => void = undefined as any;
    private readonly _dart_paintFeature: (
        canvas: ICanvas,
        transform: IMatrix4
    ) => void = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getController: () => IMaterialInkController =
        undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public getDecoration(): IDecoration | undefined {
        return this._dart_getDecoration();
    }
    public setDecoration(value?: IDecoration | undefined): void {
        return this._dart_setDecoration(value);
    }
    public getConfiguration(): IImageConfiguration {
        return this._dart_getConfiguration();
    }
    public setConfiguration(value: IImageConfiguration): void {
        return this._dart_setConfiguration(value);
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
    public getController(): IMaterialInkController {
        return this._dart_getController();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
