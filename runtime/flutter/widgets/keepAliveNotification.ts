import { IList } from "../../dart/core/list";
import { IListenable } from "../foundation/listenable";
import { IBuildContext } from "./buildContext";
import { IElement } from "./element";
import { INotification } from "./notification";
declare const flutter: {
    widgets: {
        keepAliveNotification: (
            this: void,
            keepAliveNotification: IKeepAliveNotification,
            handle: IListenable
        ) => IKeepAliveNotification;
    };
};
export interface IKeepAliveNotification {
    handle: IListenable;
    visitAncestor: (element: IElement) => boolean;
    dispatch: (target?: IBuildContext | undefined) => void;
    toString: () => string;
    debugFillDescription: (description: IList<string>) => void;
    getHashCode: () => number;
}
export class KeepAliveNotification implements INotification {
    public readonly handle: IListenable = undefined as any;
    public constructor(handle: IListenable) {
        flutter.widgets.keepAliveNotification(this, handle);
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
    private readonly _dart_getHashCode: () => number = undefined as any;
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
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
