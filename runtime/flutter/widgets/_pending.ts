
import { ILocalizationsDelegate } from "./localizationsDelegate";
import { IFuture } from "../../dart/async/future";
declare const flutter: {
widgets: {
_pending: (this: void, _pending: I_Pending, delegate: ILocalizationsDelegate<any>, futureValue: IFuture<any>) => I_Pending
}
};
export interface I_Pending


{
delegate: ILocalizationsDelegate<any>;
futureValue: IFuture<any>;
}export class _Pending


{    public readonly delegate: ILocalizationsDelegate<any> = undefined as any;
    public readonly futureValue: IFuture<any> = undefined as any;
public constructor(delegate: ILocalizationsDelegate<any>, futureValue: IFuture<any>){
flutter.widgets._pending(this, delegate, futureValue);}
}
