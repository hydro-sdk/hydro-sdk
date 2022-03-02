import { IList } from "../../dart/core/list";
import { IBuildContext } from "./buildContext";
import { IListWheelChildDelegate } from "./listWheelChildDelegate";
import { IWidget } from "./widget";
declare const flutter: {
    widgets: {
        listWheelChildLoopingListDelegate: (
            this: void,
            listWheelChildLoopingListDelegate: IListWheelChildLoopingListDelegate,
            props: { children: IList<IWidget> }
        ) => IListWheelChildLoopingListDelegate;
    };
};
export interface IListWheelChildLoopingListDelegate {
    children: IList<IWidget>;
    getEstimatedChildCount: () => number | undefined;
    trueIndexOf: (index: number) => number;
    build: (context: IBuildContext, index: number) => IWidget | undefined;
    shouldRebuild: (oldDelegate: unknown) => boolean;
    toString: () => string;
    getHashCode: () => number;
}
export class ListWheelChildLoopingListDelegate
    implements IListWheelChildDelegate
{
    public readonly children: IList<IWidget> = undefined as any;
    public constructor(props: { children: IList<IWidget> }) {
        flutter.widgets.listWheelChildLoopingListDelegate(this, props);
    }
    private readonly _dart_getEstimatedChildCount: () => number | undefined =
        undefined as any;
    private readonly _dart_trueIndexOf: (index: number) => number =
        undefined as any;
    private readonly _dart_build: (
        context: IBuildContext,
        index: number
    ) => IWidget | undefined = undefined as any;
    private readonly _dart_shouldRebuild: (oldDelegate: any) => boolean =
        undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public getEstimatedChildCount(): number | undefined {
        return this._dart_getEstimatedChildCount();
    }
    public trueIndexOf(index: number): number {
        return this._dart_trueIndexOf(index);
    }
    public build(context: IBuildContext, index: number): IWidget | undefined {
        return this._dart_build(context, index);
    }
    public shouldRebuild(oldDelegate: any): boolean {
        return this._dart_shouldRebuild(oldDelegate);
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
