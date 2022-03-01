
import { IAssetBundle } from "../services/assetBundle";
declare const flutter: {
painting: {
assetBundleImageKey: (this: void, assetBundleImageKey: IAssetBundleImageKey, props : {  bundle : IAssetBundle, name : string, scale : number,}) => IAssetBundleImageKey
}
};
export interface IAssetBundleImageKey


{
bundle: IAssetBundle;
name: string;
scale: number;
getHashCode: () => number;
toString: () => string;
}export class AssetBundleImageKey


{    public readonly bundle: IAssetBundle = undefined as any;
    public readonly name: string = undefined as any;
    public readonly scale: number = undefined as any;
public constructor( props : {  bundle : IAssetBundle, name : string, scale : number,}){
flutter.painting.assetBundleImageKey(this, props);}
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
public getHashCode() : number {
    return this._dart_getHashCode();
}
public toString() : string {
    return this._dart_toString();
}
}
