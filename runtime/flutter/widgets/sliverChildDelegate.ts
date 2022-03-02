import { IList } from "../../dart/core/list";
import { IKey } from "../foundation/key";
import { IBuildContext } from "./buildContext";
import { IWidget } from "./widget";
declare const flutter: {
    widgets: {
        sliverChildDelegate: (
            this: void,
            sliverChildDelegate: ISliverChildDelegate
        ) => ISliverChildDelegate;
    };
};
export interface ISliverChildDelegate {
    build: (context: IBuildContext, index: number) => IWidget | undefined;
    getEstimatedChildCount: () => number | undefined;
    estimateMaxScrollOffset: (
        firstIndex: number,
        lastIndex: number,
        leadingScrollOffset: number,
        trailingScrollOffset: number
    ) => number | undefined;
    didFinishLayout: (firstIndex: number, lastIndex: number) => void;
    shouldRebuild: (oldDelegate: unknown) => boolean;
    findIndexByKey: (key: IKey) => number | undefined;
    toString: () => string;
    debugFillDescription: (description: IList<string>) => void;
}
export class SliverChildDelegate {
    public constructor() {
        flutter.widgets.sliverChildDelegate(this);
    }
    private readonly _dart_build: (
        context: IBuildContext,
        index: number
    ) => IWidget | undefined = undefined as any;
    private readonly _dart_getEstimatedChildCount: () => number | undefined =
        undefined as any;
    private readonly _dart_estimateMaxScrollOffset: (
        firstIndex: number,
        lastIndex: number,
        leadingScrollOffset: number,
        trailingScrollOffset: number
    ) => number | undefined = undefined as any;
    private readonly _dart_didFinishLayout: (
        firstIndex: number,
        lastIndex: number
    ) => void = undefined as any;
    private readonly _dart_shouldRebuild: (oldDelegate: any) => boolean =
        undefined as any;
    private readonly _dart_findIndexByKey: (key: IKey) => number | undefined =
        undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_debugFillDescription: (
        description: IList<string>
    ) => void = undefined as any;
    public build(context: IBuildContext, index: number): IWidget | undefined {
        return this._dart_build(context, index);
    }
    public getEstimatedChildCount(): number | undefined {
        return this._dart_getEstimatedChildCount();
    }
    public estimateMaxScrollOffset(
        firstIndex: number,
        lastIndex: number,
        leadingScrollOffset: number,
        trailingScrollOffset: number
    ): number | undefined {
        return this._dart_estimateMaxScrollOffset(
            firstIndex,
            lastIndex,
            leadingScrollOffset,
            trailingScrollOffset
        );
    }
    public didFinishLayout(firstIndex: number, lastIndex: number): void {
        return this._dart_didFinishLayout(firstIndex, lastIndex);
    }
    public shouldRebuild(oldDelegate: any): boolean {
        return this._dart_shouldRebuild(oldDelegate);
    }
    public findIndexByKey(key: IKey): number | undefined {
        return this._dart_findIndexByKey(key);
    }
    public toString(): string {
        return this._dart_toString();
    }
    public debugFillDescription(description: IList<string>): void {
        return this._dart_debugFillDescription(description);
    }
}
