import { IOffset } from "../../dart/ui/offset";
declare const flutter: {
    painting: {
        _caretMetrics: (
            this: void,
            _caretMetrics: I_CaretMetrics,
            props: { fullHeight?: number | undefined; offset: IOffset }
        ) => I_CaretMetrics;
    };
};
export interface I_CaretMetrics {
    offset: IOffset;
    fullHeight: number | undefined;
}
export class _CaretMetrics {
    public readonly offset: IOffset = undefined as any;
    public readonly fullHeight: number | undefined = undefined as any;
    public constructor(props: {
        fullHeight?: number | undefined;
        offset: IOffset;
    }) {
        flutter.painting._caretMetrics(this, props);
    }
}
