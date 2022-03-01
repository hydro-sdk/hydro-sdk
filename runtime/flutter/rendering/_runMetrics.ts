
declare const flutter: {
rendering: {
_runMetrics: (this: void, _runMetrics: I_RunMetrics, mainAxisExtent: number, crossAxisExtent: number, childCount: number) => I_RunMetrics
}
};
export interface I_RunMetrics


{
mainAxisExtent: number;
crossAxisExtent: number;
childCount: number;
}export class _RunMetrics


{    public readonly mainAxisExtent: number = undefined as any;
    public readonly crossAxisExtent: number = undefined as any;
    public readonly childCount: number = undefined as any;
public constructor(mainAxisExtent: number, crossAxisExtent: number, childCount: number){
flutter.rendering._runMetrics(this, mainAxisExtent, crossAxisExtent, childCount);}
}
