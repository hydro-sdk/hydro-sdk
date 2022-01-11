import { ILayer } from "./layer";
declare const flutter: {
    rendering: {
        layerHandle: <T>(
            this: void,
            layerHandle: ILayerHandle<T>,
            _layer?: T | undefined
        ) => ILayerHandle<T>;
    };
};
export interface ILayerHandle<T> {
    getLayer: () => T | undefined;
    setLayer: (layer?: T | undefined) => void;
    toString: () => string;
}
export class LayerHandle<T> {
    public constructor(_layer?: T | undefined) {
        flutter.rendering.layerHandle(this, _layer);
    }
    private readonly _dart_getLayer: () => T | undefined = undefined as any;
    private readonly _dart_setLayer: (layer?: T | undefined) => void =
        undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    public getLayer(): T | undefined {
        return this._dart_getLayer();
    }
    public setLayer(layer?: T | undefined): void {
        return this._dart_setLayer(layer);
    }
    public toString(): string {
        return this._dart_toString();
    }
}
