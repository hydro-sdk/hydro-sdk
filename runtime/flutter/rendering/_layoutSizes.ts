declare const flutter: {
    rendering: {
        _layoutSizes: (
            this: void,
            _layoutSizes: I_LayoutSizes,
            props: {
                allocatedSize: number;
                crossSize: number;
                mainSize: number;
            }
        ) => I_LayoutSizes;
    };
};
export interface I_LayoutSizes {
    mainSize: number;
    crossSize: number;
    allocatedSize: number;
}
export class _LayoutSizes {
    public readonly mainSize: number = undefined as any;
    public readonly crossSize: number = undefined as any;
    public readonly allocatedSize: number = undefined as any;
    public constructor(props: {
        allocatedSize: number;
        crossSize: number;
        mainSize: number;
    }) {
        flutter.rendering._layoutSizes(this, props);
    }
}
