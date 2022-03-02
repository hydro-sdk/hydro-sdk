import { IList } from "../../dart/core/list";
import { IBuildContext } from "./buildContext";
import { IElement } from "./element";
declare const flutter: {
    widgets: {
        notification: (
            this: void,
            notification: INotification
        ) => INotification;
    };
};
export interface INotification {
    visitAncestor: (element: IElement) => boolean;
    dispatch: (target?: IBuildContext | undefined) => void;
    toString: () => string;
    debugFillDescription: (description: IList<string>) => void;
}
export class Notification {
    public constructor() {
        flutter.widgets.notification(this);
    }
    private readonly _dart_visitAncestor: (element: IElement) => boolean =
        undefined as any;
    private readonly _dart_dispatch: (
        target?: IBuildContext | undefined
    ) => void = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_debugFillDescription: (
        description: IList<string>
    ) => void = undefined as any;
    public visitAncestor(element: IElement): boolean {
        return this._dart_visitAncestor(element);
    }
    public dispatch(target?: IBuildContext | undefined): void {
        return this._dart_dispatch(target);
    }
    public toString(): string {
        return this._dart_toString();
    }
    public debugFillDescription(description: IList<string>): void {
        return this._dart_debugFillDescription(description);
    }
}
