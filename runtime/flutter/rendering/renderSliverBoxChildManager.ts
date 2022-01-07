import { IRenderBox } from "./renderBox";
import { ISliverConstraints } from "./sliverConstraints";
declare const flutter: {
    rendering: {
        renderSliverBoxChildManager: (
            this: void,
            renderSliverBoxChildManager: IRenderSliverBoxChildManager
        ) => IRenderSliverBoxChildManager;
    };
};
export interface IRenderSliverBoxChildManager {
    createChild: (
        index: number,
        props?: { after?: IRenderBox | undefined }
    ) => void;
    removeChild: (child: IRenderBox) => void;
    estimateMaxScrollOffset: (
        constraints: ISliverConstraints,
        props?: {
            firstIndex?: number | undefined;
            lastIndex?: number | undefined;
            leadingScrollOffset?: number | undefined;
            trailingScrollOffset?: number | undefined;
        }
    ) => number;
    getChildCount: () => number;
    didAdoptChild: (child: IRenderBox) => void;
    setDidUnderflow: (value: boolean) => void;
    didStartLayout: () => void;
    didFinishLayout: () => void;
    debugAssertChildListLocked: () => boolean;
}
export class RenderSliverBoxChildManager {
    public constructor() {
        flutter.rendering.renderSliverBoxChildManager(this);
    }
    private readonly _dart_createChild: (
        index: number,
        props?: { after?: IRenderBox | undefined }
    ) => void = undefined as any;
    private readonly _dart_removeChild: (child: IRenderBox) => void =
        undefined as any;
    private readonly _dart_estimateMaxScrollOffset: (
        constraints: ISliverConstraints,
        props?: {
            firstIndex?: number | undefined;
            lastIndex?: number | undefined;
            leadingScrollOffset?: number | undefined;
            trailingScrollOffset?: number | undefined;
        }
    ) => number = undefined as any;
    private readonly _dart_getChildCount: () => number = undefined as any;
    private readonly _dart_didAdoptChild: (child: IRenderBox) => void =
        undefined as any;
    private readonly _dart_setDidUnderflow: (value: boolean) => void =
        undefined as any;
    private readonly _dart_didStartLayout: () => void = undefined as any;
    private readonly _dart_didFinishLayout: () => void = undefined as any;
    private readonly _dart_debugAssertChildListLocked: () => boolean =
        undefined as any;
    public createChild(
        index: number,
        props?: { after?: IRenderBox | undefined }
    ): void {
        return this._dart_createChild(index, props);
    }
    public removeChild(child: IRenderBox): void {
        return this._dart_removeChild(child);
    }
    public estimateMaxScrollOffset(
        constraints: ISliverConstraints,
        props?: {
            firstIndex?: number | undefined;
            lastIndex?: number | undefined;
            leadingScrollOffset?: number | undefined;
            trailingScrollOffset?: number | undefined;
        }
    ): number {
        return this._dart_estimateMaxScrollOffset(constraints, props);
    }
    public getChildCount(): number {
        return this._dart_getChildCount();
    }
    public didAdoptChild(child: IRenderBox): void {
        return this._dart_didAdoptChild(child);
    }
    public setDidUnderflow(value: boolean): void {
        return this._dart_setDidUnderflow(value);
    }
    public didStartLayout(): void {
        return this._dart_didStartLayout();
    }
    public didFinishLayout(): void {
        return this._dart_didFinishLayout();
    }
    public debugAssertChildListLocked(): boolean {
        return this._dart_debugAssertChildListLocked();
    }
}
