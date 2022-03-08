import { IList } from "../../dart/core/list";
import { ICanvas } from "../../dart/ui/canvas";
import { IOffset } from "../../dart/ui/offset";
import { IRect } from "../../dart/ui/rect";
import { ISize } from "../../dart/ui/size";
import { TextDirection } from "../../dart/ui/textDirection";
import { IDecoration } from "../painting/decoration";
import { IEdgeInsetsGeometry } from "../painting/edgeInsetsGeometry";
import { ICustomPainter } from "../rendering/customPainter";
import { ICustomPainterSemantics } from "../rendering/customPainterSemantics";
import { IGlobalKey } from "../widgets/globalKey";
import { IState } from "../widgets/state";
import { IStatefulWidget } from "../widgets/statefulWidget";
import { TabBarIndicatorSize } from "./tabBarIndicatorSize";
import { ITabController } from "./tabController";
declare const flutter: {
    material: {
        _indicatorPainter: (
            this: void,
            _indicatorPainter: I_IndicatorPainter,
            props: {
                controller: ITabController;
                indicator: IDecoration;
                indicatorPadding: IEdgeInsetsGeometry;
                indicatorSize?: TabBarIndicatorSize | undefined;
                old?: I_IndicatorPainter | undefined;
                tabKeys: IList<IGlobalKey<IState<IStatefulWidget>>>;
            }
        ) => I_IndicatorPainter;
    };
};
export interface I_IndicatorPainter {
    controller: ITabController;
    indicator: IDecoration;
    indicatorSize: TabBarIndicatorSize | undefined;
    indicatorPadding: IEdgeInsetsGeometry;
    tabKeys: IList<IGlobalKey<IState<IStatefulWidget>>>;
    markNeedsPaint: () => void;
    dispose: () => void;
    saveTabOffsets: (
        tabOffsets?: IList<number> | undefined,
        textDirection?: TextDirection | undefined
    ) => void;
    getMaxTabIndex: () => number;
    centerOf: (tabIndex: number) => number;
    indicatorRect: (tabBarSize: ISize, tabIndex: number) => IRect;
    paint: (canvas: ICanvas, size: ISize) => void;
    shouldRepaint: (old: unknown) => boolean;
    addListener: (listener: () => void) => void;
    removeListener: (listener: () => void) => void;
    shouldRebuildSemantics: (oldDelegate: unknown) => boolean;
    hitTest: (position: IOffset) => boolean | undefined;
    toString: () => string;
    getSemanticsBuilder: () => (
        size: ISize
    ) => IList<ICustomPainterSemantics> | undefined;
    getHashCode: () => number;
}
export class _IndicatorPainter implements ICustomPainter {
    public readonly controller: ITabController = undefined as any;
    public readonly indicator: IDecoration = undefined as any;
    public readonly indicatorSize: TabBarIndicatorSize | undefined =
        undefined as any;
    public readonly indicatorPadding: IEdgeInsetsGeometry = undefined as any;
    public readonly tabKeys: IList<IGlobalKey<IState<IStatefulWidget>>> =
        undefined as any;
    public constructor(props: {
        controller: ITabController;
        indicator: IDecoration;
        indicatorPadding: IEdgeInsetsGeometry;
        indicatorSize?: TabBarIndicatorSize | undefined;
        old?: I_IndicatorPainter | undefined;
        tabKeys: IList<IGlobalKey<IState<IStatefulWidget>>>;
    }) {
        flutter.material._indicatorPainter(this, props);
    }
    private readonly _dart_markNeedsPaint: () => void = undefined as any;
    private readonly _dart_dispose: () => void = undefined as any;
    private readonly _dart_saveTabOffsets: (
        tabOffsets?: IList<number> | undefined,
        textDirection?: TextDirection | undefined
    ) => void = undefined as any;
    private readonly _dart_getMaxTabIndex: () => number = undefined as any;
    private readonly _dart_centerOf: (tabIndex: number) => number =
        undefined as any;
    private readonly _dart_indicatorRect: (
        tabBarSize: ISize,
        tabIndex: number
    ) => IRect = undefined as any;
    private readonly _dart_paint: (canvas: ICanvas, size: ISize) => void =
        undefined as any;
    private readonly _dart_shouldRepaint: (old: any) => boolean =
        undefined as any;
    private readonly _dart_addListener: (listener: () => void) => void =
        undefined as any;
    private readonly _dart_removeListener: (listener: () => void) => void =
        undefined as any;
    private readonly _dart_shouldRebuildSemantics: (
        oldDelegate: any
    ) => boolean = undefined as any;
    private readonly _dart_hitTest: (position: IOffset) => boolean | undefined =
        undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getSemanticsBuilder: () => (
        size: ISize
    ) => IList<ICustomPainterSemantics> | undefined = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public markNeedsPaint(): void {
        return this._dart_markNeedsPaint();
    }
    public dispose(): void {
        return this._dart_dispose();
    }
    public saveTabOffsets(
        tabOffsets?: IList<number> | undefined,
        textDirection?: TextDirection | undefined
    ): void {
        return this._dart_saveTabOffsets(tabOffsets, textDirection);
    }
    public getMaxTabIndex(): number {
        return this._dart_getMaxTabIndex();
    }
    public centerOf(tabIndex: number): number {
        return this._dart_centerOf(tabIndex);
    }
    public indicatorRect(tabBarSize: ISize, tabIndex: number): IRect {
        return this._dart_indicatorRect(tabBarSize, tabIndex);
    }
    public paint(canvas: ICanvas, size: ISize): void {
        return this._dart_paint(canvas, size);
    }
    public shouldRepaint(old: any): boolean {
        return this._dart_shouldRepaint(old);
    }
    public addListener(listener: () => void): void {
        return this._dart_addListener(listener);
    }
    public removeListener(listener: () => void): void {
        return this._dart_removeListener(listener);
    }
    public shouldRebuildSemantics(oldDelegate: any): boolean {
        return this._dart_shouldRebuildSemantics(oldDelegate);
    }
    public hitTest(position: IOffset): boolean | undefined {
        return this._dart_hitTest(position);
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getSemanticsBuilder(): (
        size: ISize
    ) => IList<ICustomPainterSemantics> | undefined {
        return this._dart_getSemanticsBuilder();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
