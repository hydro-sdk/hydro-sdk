import { ITextPainter } from "../painting/textPainter";
declare const flutter: {
    material: {
        _tappableLabel: (
            this: void,
            _tappableLabel: I_TappableLabel,
            props: { onTap: () => void; painter: ITextPainter; value: number }
        ) => I_TappableLabel;
    };
};
export interface I_TappableLabel {
    value: number;
    painter: ITextPainter;
}
export class _TappableLabel {
    public readonly value: number = undefined as any;
    public readonly painter: ITextPainter = undefined as any;
    public constructor(props: {
        onTap: () => void;
        painter: ITextPainter;
        value: number;
    }) {
        flutter.material._tappableLabel(this, props);
    }
}
