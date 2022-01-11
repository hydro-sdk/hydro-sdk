import { ISize } from "../../dart/ui/size";
import { ILeaderLayer } from "./leaderLayer";
declare const flutter: {
    rendering: {
        layerLink: (this: void, layerLink: ILayerLink) => ILayerLink;
    };
};
export interface ILayerLink {
    leaderSize: ISize | undefined;
    getLeaderConnected: () => boolean;
    getDebugLeader: () => ILeaderLayer | undefined;
    toString: () => string;
}
export class LayerLink {
    public readonly leaderSize: ISize | undefined = undefined as any;
    public constructor() {
        flutter.rendering.layerLink(this);
    }
    private readonly _dart_getLeaderConnected: () => boolean = undefined as any;
    private readonly _dart_getDebugLeader: () => ILeaderLayer | undefined =
        undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    public getLeaderConnected(): boolean {
        return this._dart_getLeaderConnected();
    }
    public getDebugLeader(): ILeaderLayer | undefined {
        return this._dart_getDebugLeader();
    }
    public toString(): string {
        return this._dart_toString();
    }
}
