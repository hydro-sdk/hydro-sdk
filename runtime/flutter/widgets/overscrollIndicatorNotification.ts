import { IList } from "../../dart/core/list";
import { IBuildContext } from "./buildContext";
import { IElement } from "./element";
import { INotification } from "./notification";
import { IViewportNotificationMixin } from "./viewportNotificationMixin";
declare const flutter: {
    widgets: {
        overscrollIndicatorNotification: (
            this: void,
            overscrollIndicatorNotification: IOverscrollIndicatorNotification,
            props: { leading: boolean }
        ) => IOverscrollIndicatorNotification;
    };
};
export interface IOverscrollIndicatorNotification {
    leading: boolean;
    paintOffset: number;
    disallowGlow: () => void;
    disallowIndicator: () => void;
    debugFillDescription: (description: IList<string>) => void;
    visitAncestor: (element: IElement) => boolean;
    getDepth: () => number;
    dispatch: (target?: IBuildContext | undefined) => void;
    toString: () => string;
    getHashCode: () => number;
}
export class OverscrollIndicatorNotification
    implements INotification, IViewportNotificationMixin
{
    public readonly leading: boolean = undefined as any;
    public readonly paintOffset: number = undefined as any;
    public constructor(props: { leading: boolean }) {
        flutter.widgets.overscrollIndicatorNotification(this, props);
    }
    private readonly _dart_disallowGlow: () => void = undefined as any;
    private readonly _dart_disallowIndicator: () => void = undefined as any;
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
    public disallowGlow(): void {
        return this._dart_disallowGlow();
    }
    public disallowIndicator(): void {
        return this._dart_disallowIndicator();
    }
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
