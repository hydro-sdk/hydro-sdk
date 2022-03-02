import { IListenable } from "../foundation/listenable";
import { IRestorableChangeNotifier } from "../widgets/restorableChangeNotifier";
import { IState } from "../widgets/state";
import { IStatefulWidget } from "../widgets/statefulWidget";
import { ICupertinoTabController } from "./cupertinoTabController";
declare const flutter: {
    cupertino: {
        restorableCupertinoTabController: (
            this: void,
            restorableCupertinoTabController: IRestorableCupertinoTabController,
            props: { initialIndex: number }
        ) => IRestorableCupertinoTabController;
    };
};
export interface IRestorableCupertinoTabController {
    createDefaultValue: () => ICupertinoTabController;
    fromPrimitives: (data?: Object | undefined) => ICupertinoTabController;
    toPrimitives: () => Object | undefined;
    initWithValue: (value: ICupertinoTabController) => void;
    dispose: () => void;
    getValue: () => ICupertinoTabController;
    getEnabled: () => boolean;
    getState: () => IState<IStatefulWidget>;
    getIsRegistered: () => boolean;
    addListener: (listener: () => void) => void;
    removeListener: (listener: () => void) => void;
    getHasListeners: () => boolean;
    toString: () => string;
    getHashCode: () => number;
}
export class RestorableCupertinoTabController
    implements IRestorableChangeNotifier<ICupertinoTabController>, IListenable
{
    public constructor(props: { initialIndex?: number }) {
        flutter.cupertino.restorableCupertinoTabController(this, {
            ...restorableCupertinoTabControllerDefaultProps,
            ...props,
        });
    }
    private readonly _dart_createDefaultValue: () => ICupertinoTabController =
        undefined as any;
    private readonly _dart_fromPrimitives: (
        data?: Object | undefined
    ) => ICupertinoTabController = undefined as any;
    private readonly _dart_toPrimitives: () => Object | undefined =
        undefined as any;
    private readonly _dart_initWithValue: (
        value: ICupertinoTabController
    ) => void = undefined as any;
    private readonly _dart_dispose: () => void = undefined as any;
    private readonly _dart_getValue: () => ICupertinoTabController =
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
    public createDefaultValue(): ICupertinoTabController {
        return this._dart_createDefaultValue();
    }
    public fromPrimitives(data?: Object | undefined): ICupertinoTabController {
        return this._dart_fromPrimitives(data);
    }
    public toPrimitives(): Object | undefined {
        return this._dart_toPrimitives();
    }
    public initWithValue(value: ICupertinoTabController): void {
        return this._dart_initWithValue(value);
    }
    public dispose(): void {
        return this._dart_dispose();
    }
    public getValue(): ICupertinoTabController {
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
const restorableCupertinoTabControllerDefaultProps = {
    initialIndex: 0,
};
