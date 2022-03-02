import { ICanvas } from "../../dart/ui/canvas";
import { IOffset } from "../../dart/ui/offset";
import { IBoxPainter } from "./boxPainter";
import { IFlutterLogoDecoration } from "./flutterLogoDecoration";
import { IImageConfiguration } from "./imageConfiguration";
declare const flutter: {
    painting: {
        _flutterLogoPainter: (
            this: void,
            _flutterLogoPainter: I_FlutterLogoPainter,
            _config: IFlutterLogoDecoration
        ) => I_FlutterLogoPainter;
    };
};
export interface I_FlutterLogoPainter {
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
export class _FlutterLogoPainter implements IBoxPainter {
    public readonly onChanged: () => void | undefined = undefined as any;
    public constructor(_config: IFlutterLogoDecoration) {
        flutter.painting._flutterLogoPainter(this, _config);
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
