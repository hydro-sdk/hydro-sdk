export interface I_RenderSliverPersistentHeaderForWidgetsMixin {
    getMinExtent: () => number;
    getMaxExtent: () => number;
    updateChild: (shrinkOffset: number, overlapsContent: boolean) => void;
    triggerRebuild: () => void;
}
