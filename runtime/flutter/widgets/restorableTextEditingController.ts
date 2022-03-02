import { IListenable } from "../foundation/listenable";
import { IRestorableChangeNotifier } from "./restorableChangeNotifier";
import { IState } from "./state";
import { IStatefulWidget } from "./statefulWidget";
import { ITextEditingController } from "./textEditingController";
declare const flutter: {
    widgets: {
        restorableTextEditingController: (
            this: void,
            restorableTextEditingController: IRestorableTextEditingController,
            props?: { text?: string | undefined }
        ) => IRestorableTextEditingController;
    };
};
export interface IRestorableTextEditingController {
    createDefaultValue: () => ITextEditingController;
    fromPrimitives: (data?: Object | undefined) => ITextEditingController;
    toPrimitives: () => Object;
    initWithValue: (value: ITextEditingController) => void;
    dispose: () => void;
    getValue: () => ITextEditingController;
    getEnabled: () => boolean;
    getState: () => IState<IStatefulWidget>;
    getIsRegistered: () => boolean;
    addListener: (listener: () => void) => void;
    removeListener: (listener: () => void) => void;
    getHasListeners: () => boolean;
    toString: () => string;
    getHashCode: () => number;
}
export class RestorableTextEditingController
    implements IRestorableChangeNotifier<ITextEditingController>, IListenable
{
    public constructor(props?: { text?: string | undefined }) {
        flutter.widgets.restorableTextEditingController(this, props);
    }
    private readonly _dart_createDefaultValue: () => ITextEditingController =
        undefined as any;
    private readonly _dart_fromPrimitives: (
        data?: Object | undefined
    ) => ITextEditingController = undefined as any;
    private readonly _dart_toPrimitives: () => Object = undefined as any;
    private readonly _dart_initWithValue: (
        value: ITextEditingController
    ) => void = undefined as any;
    private readonly _dart_dispose: () => void = undefined as any;
    private readonly _dart_getValue: () => ITextEditingController =
        undefined as any;
    private readonly _dart_getEnabled: () => boolean = undefined as any;
    private readonly _dart_getState: () => IState<IStatefulWidget> =
        undefined as any;
    private readonly _dart_getIsRegistered: () => boolean = undefined as any;
    private readonly _dart_addListener: (listener: () => void) => void =
        undefined as any;
    private readonly _dart_removeListener: (listener: () => void) => void =
        undefined as any;
    private readonly _dart_notifyListeners: () => void = undefined as any;
    private readonly _dart_getHasListeners: () => boolean = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public createDefaultValue(): ITextEditingController {
        return this._dart_createDefaultValue();
    }
    public fromPrimitives(data?: Object | undefined): ITextEditingController {
        return this._dart_fromPrimitives(data);
    }
    public toPrimitives(): Object {
        return this._dart_toPrimitives();
    }
    public initWithValue(value: ITextEditingController): void {
        return this._dart_initWithValue(value);
    }
    public dispose(): void {
        return this._dart_dispose();
    }
    public getValue(): ITextEditingController {
        return this._dart_getValue();
    }
    public getEnabled(): boolean {
        return this._dart_getEnabled();
    }
    public getState(): IState<IStatefulWidget> {
        return this._dart_getState();
    }
    public getIsRegistered(): boolean {
        return this._dart_getIsRegistered();
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
    public toString(): string {
        return this._dart_toString();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
