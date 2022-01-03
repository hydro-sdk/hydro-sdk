import { IOffset } from "../../dart/ui/offset";
import { ISemanticsAction } from "../../dart/ui/semanticsAction";
import { IChangeNotifier } from "../foundation/changeNotifier";
import { IListenable } from "../foundation/listenable";
import { ISemanticsNode } from "./semanticsNode";
declare const flutter: {
    semantics: {
        semanticsOwner: (
            this: void,
            semanticsOwner: ISemanticsOwner
        ) => ISemanticsOwner;
    };
};
export interface ISemanticsOwner {
    getRootSemanticsNode: () => ISemanticsNode | undefined;
    dispose: () => void;
    sendSemanticsUpdate: () => void;
    performAction: (id: number, action: ISemanticsAction, args: any) => void;
    performActionAt: (
        position: IOffset,
        action: ISemanticsAction,
        args: any
    ) => void;
    toString: () => string;
    addListener: (listener: () => void) => void;
    removeListener: (listener: () => void) => void;
    notifyListeners: () => void;
    getHasListeners: () => boolean;
    getHashCode: () => number;
}
export class SemanticsOwner implements IChangeNotifier, IListenable {
    public constructor() {
        flutter.semantics.semanticsOwner(this);
    }
    private readonly _dart_getRootSemanticsNode: () =>
        | ISemanticsNode
        | undefined = undefined as any;
    private readonly _dart_dispose: () => void = undefined as any;
    private readonly _dart_sendSemanticsUpdate: () => void = undefined as any;
    private readonly _dart_performAction: (
        id: number,
        action: ISemanticsAction,
        args: any
    ) => void = undefined as any;
    private readonly _dart_performActionAt: (
        position: IOffset,
        action: ISemanticsAction,
        args: any
    ) => void = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_addListener: (listener: () => void) => void =
        undefined as any;
    private readonly _dart_removeListener: (listener: () => void) => void =
        undefined as any;
    private readonly _dart_notifyListeners: () => void = undefined as any;
    private readonly _dart_getHasListeners: () => boolean = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public getRootSemanticsNode(): ISemanticsNode | undefined {
        return this._dart_getRootSemanticsNode();
    }
    public dispose(): void {
        return this._dart_dispose();
    }
    public sendSemanticsUpdate(): void {
        return this._dart_sendSemanticsUpdate();
    }
    public performAction(
        id: number,
        action: ISemanticsAction,
        args: any
    ): void {
        return this._dart_performAction(id, action, args);
    }
    public performActionAt(
        position: IOffset,
        action: ISemanticsAction,
        args: any
    ): void {
        return this._dart_performActionAt(position, action, args);
    }
    public toString(): string {
        return this._dart_toString();
    }
    public addListener(listener: () => void): void {
        return this._dart_addListener(listener);
    }
    public removeListener(listener: () => void): void {
        return this._dart_removeListener(listener);
    }
    public notifyListeners(): void {
        return this._dart_notifyListeners();
    }
    public getHasListeners(): boolean {
        return this._dart_getHasListeners();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
