import { ICanvas } from "../../dart/ui/canvas";
import { IOffset } from "../../dart/ui/offset";
import { IBoxDecoration } from "./boxDecoration";
import { IBoxPainter } from "./boxPainter";
import { IImageConfiguration } from "./imageConfiguration";
declare const flutter: {
    painting: {
        _boxDecorationPainter: (
            this: void,
            _boxDecorationPainter: I_BoxDecorationPainter,
            _decoration: IBoxDecoration,
            onChanged?: () => void
        ) => I_BoxDecorationPainter;
    };
};
export interface I_BoxDecorationPainter {
    onChanged: () => void | undefined;
    dispose: () => void;
    paint: (
        canvas: ICanvas,
        offset: IOffset,
        configuration: IImageConfiguration
    ) => void;
    toString: () => string;
    getHashCode: () => number;
}
export class _BoxDecorationPainter implements IBoxPainter {
    public readonly onChanged: () => void | undefined = undefined as any;
    public constructor(_decoration: IBoxDecoration, onChanged?: () => void) {
        flutter.painting._boxDecorationPainter(this, _decoration, onChanged);
    }
    private readonly _dart_dispose: () => void = undefined as any;
    private readonly _dart_paint: (
        canvas: ICanvas,
        offset: IOffset,
        configuration: IImageConfiguration
    ) => void = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public dispose(): void {
        return this._dart_dispose();
    }
    public paint(
        canvas: ICanvas,
        offset: IOffset,
        configuration: IImageConfiguration
    ): void {
        return this._dart_paint(canvas, offset, configuration);
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
