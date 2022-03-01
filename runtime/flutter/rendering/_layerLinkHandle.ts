
import { ILayerLink } from "./layerLink";
import { ILeaderLayer } from "./leaderLayer";
declare const flutter: {
rendering: {
_layerLinkHandle: (this: void, _layerLinkHandle: I_LayerLinkHandle, _link?: ILayerLink | undefined) => I_LayerLinkHandle
}
};
export interface I_LayerLinkHandle


{
getLeader: () => ILeaderLayer | undefined;
dispose: () => void;
}export class _LayerLinkHandle


{public constructor(_link?: ILayerLink | undefined){
flutter.rendering._layerLinkHandle(this, _link);}
    private readonly _dart_getLeader: () => ILeaderLayer | undefined = undefined as any;
    private readonly _dart_dispose: () => void = undefined as any;
public getLeader() : ILeaderLayer | undefined {
    return this._dart_getLeader();
}
public dispose() : void {
    return this._dart_dispose();
}
}
