
import { I_HeroFlightManifest } from "./_heroFlightManifest";
import { ITween } from "../animation/tween";
import { IRect } from "../../dart/ui/rect";
import { IWidget } from "./widget";
import { IOverlayEntry } from "./overlayEntry";
declare const flutter: {
widgets: {
_heroFlight: (this: void, _heroFlight: I_HeroFlight, onFlightEnded : (flight: I_HeroFlight) => void) => I_HeroFlight
}
};
export interface I_HeroFlight


{
heroRectTween: ITween<IRect | undefined>;
shuttle: IWidget | undefined;
manifest: I_HeroFlightManifest;
overlayEntry: IOverlayEntry | undefined;
onTick: () => void;
start: (initialManifest: I_HeroFlightManifest) => void;
divert: (newManifest: I_HeroFlightManifest) => void;
abort: () => void;
toString: () => string;
}export class _HeroFlight


{    public readonly heroRectTween: ITween<IRect | undefined> = undefined as any;
    public readonly shuttle: IWidget | undefined = undefined as any;
    public readonly manifest: I_HeroFlightManifest = undefined as any;
    public readonly overlayEntry: IOverlayEntry | undefined = undefined as any;
public constructor(onFlightEnded : (flight: I_HeroFlight) => void){
flutter.widgets._heroFlight(this, onFlightEnded);}
    private readonly _dart_onTick: () => void = undefined as any;
    private readonly _dart_start: (initialManifest: I_HeroFlightManifest) => void = undefined as any;
    private readonly _dart_divert: (newManifest: I_HeroFlightManifest) => void = undefined as any;
    private readonly _dart_abort: () => void = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
public onTick() : void {
    return this._dart_onTick();
}
public start(initialManifest: I_HeroFlightManifest) : void {
    return this._dart_start(initialManifest);
}
public divert(newManifest: I_HeroFlightManifest) : void {
    return this._dart_divert(newManifest);
}
public abort() : void {
    return this._dart_abort();
}
public toString() : string {
    return this._dart_toString();
}
}
