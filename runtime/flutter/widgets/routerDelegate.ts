
import { IListenable } from "../foundation/listenable";
import { IFuture } from "../../dart/async/future";
import { IBuildContext } from "./buildContext";
import { IWidget } from "./widget";
declare const flutter: {
widgets: {
routerDelegate: <T>(this: void, routerDelegate: IRouterDelegate<T>) => IRouterDelegate<T>
}
};
export interface IRouterDelegate
<T>

{
setInitialRoutePath: (configuration: T) => IFuture<void>;
setRestoredRoutePath: (configuration: T) => IFuture<void>;
setNewRoutePath: (configuration: T) => IFuture<void>;
popRoute: () => IFuture<boolean>;
getCurrentConfiguration: () => T | undefined;
build: (context: IBuildContext) => IWidget;
addListener: (listener : () => void) => void;
removeListener: (listener : () => void) => void;
toString: () => string;
getHashCode: () => number;
}export class RouterDelegate
<T>
 implements IListenable
{public constructor(){
flutter.widgets.routerDelegate(this);}
    private readonly _dart_setInitialRoutePath: (configuration: T) => IFuture<void> = undefined as any;
    private readonly _dart_setRestoredRoutePath: (configuration: T) => IFuture<void> = undefined as any;
    private readonly _dart_setNewRoutePath: (configuration: T) => IFuture<void> = undefined as any;
    private readonly _dart_popRoute: () => IFuture<boolean> = undefined as any;
    private readonly _dart_getCurrentConfiguration: () => T | undefined = undefined as any;
    private readonly _dart_build: (context: IBuildContext) => IWidget = undefined as any;
    private readonly _dart_addListener: (listener : () => void) => void = undefined as any;
    private readonly _dart_removeListener: (listener : () => void) => void = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
public setInitialRoutePath(configuration: T) : IFuture<void> {
    return this._dart_setInitialRoutePath(configuration);
}
public setRestoredRoutePath(configuration: T) : IFuture<void> {
    return this._dart_setRestoredRoutePath(configuration);
}
public setNewRoutePath(configuration: T) : IFuture<void> {
    return this._dart_setNewRoutePath(configuration);
}
public popRoute() : IFuture<boolean> {
    return this._dart_popRoute();
}
public getCurrentConfiguration() : T | undefined {
    return this._dart_getCurrentConfiguration();
}
public build(context: IBuildContext) : IWidget {
    return this._dart_build(context);
}
public addListener(listener : () => void) : void {
    return this._dart_addListener(listener);
}
public removeListener(listener : () => void) : void {
    return this._dart_removeListener(listener);
}
public toString() : string {
    return this._dart_toString();
}
public getHashCode() : number {
    return this._dart_getHashCode();
}
}
