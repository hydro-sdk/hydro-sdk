import { IList } from "../../dart/core/list";
import { IBuildContext } from "./buildContext";
import { IElement } from "./element";
import { INotification } from "./notification";
import { IScrollMetrics } from "./scrollMetrics";
import { IViewportNotificationMixin } from "./viewportNotificationMixin";
declare const flutter: {
    widgets: {
        scrollMetricsNotification: (
            this: void,
            scrollMetricsNotification: IScrollMetricsNotification,
            props: { context: IBuildContext; metrics: IScrollMetrics }
        ) => IScrollMetricsNotification;
    };
};
export interface IScrollMetricsNotification {
    metrics: IScrollMetrics;
    context: IBuildContext;
    debugFillDescription: (description: IList<string>) => void;
    visitAncestor: (element: IElement) => boolean;
    getDepth: () => number;
    dispatch: (target?: IBuildContext | undefined) => void;
    toString: () => string;
    getHashCode: () => number;
}
export class ScrollMetricsNotification
    implements INotification, IViewportNotificationMixin
{
    public readonly metrics: IScrollMetrics = undefined as any;
    public readonly context: IBuildContext = undefined as any;
    public constructor(props: {
        context: IBuildContext;
        metrics: IScrollMetrics;
    }) {
        flutter.widgets.scrollMetricsNotification(this, props);
    }
    private readonly _dart_debugFillDescription: (
        description: IList<string>
    ) => void = undefined as any;
    private readonly _dart_visitAncestor: (element: IElement) => boolean =
        undefined as any;
    private readonly _dart_getDepth: () => number = undefined as any;
    private readonly _dart_dispatch: (
        target?: IBuildContext | undefined
    ) => void = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public debugFillDescription(description: IList<string>): void {
        return this._dart_debugFillDescription(description);
    }
    public visitAncestor(element: IElement): boolean {
        return this._dart_visitAncestor(element);
    }
    public getDepth(): number {
        return this._dart_getDepth();
    }
    public dispatch(target?: IBuildContext | undefined): void {
        return this._dart_dispatch(target);
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
