import { ICanvas } from "../../dart/ui/canvas";
import { IOffset } from "../../dart/ui/offset";
import { IBoxPainter } from "../painting/boxPainter";
import { IImageConfiguration } from "../painting/imageConfiguration";
import { IUnderlineTabIndicator } from "./underlineTabIndicator";
declare const flutter: {
    material: {
        _underlinePainter: (
            this: void,
            _underlinePainter: I_UnderlinePainter,
            decoration: IUnderlineTabIndicator,
            onChanged?: () => void
        ) => I_UnderlinePainter;
    };
};
export interface I_UnderlinePainter {
    decoration: IUnderlineTabIndicator;
    onChanged: () => void | undefined;
    paint: (
        canvas: ICanvas,
        offset: IOffset,
        configuration: IImageConfiguration
    ) => void;
    dispose: () => void;
    toString: () => string;
    getHashCode: () => number;
}
export class _UnderlinePainter implements IBoxPainter {
    public readonly decoration: IUnderlineTabIndicator = undefined as any;
    public readonly onChanged: () => void | undefined = undefined as any;
    public constructor(
        decoration: IUnderlineTabIndicator,
        onChanged?: () => void
    ) {
        flutter.material._underlinePainter(this, decoration, onChanged);
    }
    private readonly _dart_paint: (
        canvas: ICanvas,
        offset: IOffset,
        configuration: IImageConfiguration
    ) => void = undefined as any;
    private readonly _dart_dispose: () => void = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public paint(
        canvas: ICanvas,
        offset: IOffset,
        configuration: IImageConfiguration
    ): void {
        return this._dart_paint(canvas, offset, configuration);
    }
    public dispose(): void {
        return this._dart_dispose();
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
