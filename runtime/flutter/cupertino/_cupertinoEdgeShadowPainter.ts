import { ICanvas } from "../../dart/ui/canvas";
import { IOffset } from "../../dart/ui/offset";
import { IBoxPainter } from "../painting/boxPainter";
import { IImageConfiguration } from "../painting/imageConfiguration";
import { I_CupertinoEdgeShadowDecoration } from "./_cupertinoEdgeShadowDecoration";
declare const flutter: {
    cupertino: {
        _cupertinoEdgeShadowPainter: (
            this: void,
            _cupertinoEdgeShadowPainter: I_CupertinoEdgeShadowPainter,
            _decoration: I_CupertinoEdgeShadowDecoration,
            onChange?: () => void
        ) => I_CupertinoEdgeShadowPainter;
    };
};
export interface I_CupertinoEdgeShadowPainter {
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
export class _CupertinoEdgeShadowPainter implements IBoxPainter {
    public readonly onChanged: () => void | undefined = undefined as any;
    public constructor(
        _decoration: I_CupertinoEdgeShadowDecoration,
        onChange?: () => void
    ) {
        flutter.cupertino._cupertinoEdgeShadowPainter(
            this,
            _decoration,
            onChange
        );
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
