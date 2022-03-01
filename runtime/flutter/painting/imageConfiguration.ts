
import { IAssetBundle } from "../services/assetBundle";
import { ILocale } from "../../dart/ui/locale";
import { TargetPlatform } from "../foundation/targetPlatform";
import { ISize } from "../../dart/ui/size";
import { TextDirection } from "../../dart/ui/textDirection";
declare const flutter: {
painting: {
imageConfiguration: (this: void, imageConfiguration: IImageConfiguration, props? : {  bundle? : IAssetBundle | undefined, devicePixelRatio? : number | undefined, locale? : ILocale | undefined, platform? : TargetPlatform | undefined, size? : ISize | undefined, textDirection? : TextDirection | undefined,}) => IImageConfiguration
}
};
export interface IImageConfiguration


{
bundle: IAssetBundle | undefined;
devicePixelRatio: number | undefined;
locale: ILocale | undefined;
textDirection: TextDirection | undefined;
size: ISize | undefined;
platform: TargetPlatform | undefined;
copyWith: ( props? : {  bundle? : IAssetBundle | undefined, devicePixelRatio? : number | undefined, locale? : ILocale | undefined, platform? : TargetPlatform | undefined, size? : ISize | undefined, textDirection? : TextDirection | undefined,}) => IImageConfiguration;
getHashCode: () => number;
toString: () => string;
}export class ImageConfiguration


{    public static empty = new ImageConfiguration();
    public readonly bundle: IAssetBundle | undefined = undefined as any;
    public readonly devicePixelRatio: number | undefined = undefined as any;
    public readonly locale: ILocale | undefined = undefined as any;
    public readonly textDirection: TextDirection | undefined = undefined as any;
    public readonly size: ISize | undefined = undefined as any;
    public readonly platform: TargetPlatform | undefined = undefined as any;
public constructor( props? : {  bundle? : IAssetBundle | undefined, devicePixelRatio? : number | undefined, locale? : ILocale | undefined, platform? : TargetPlatform | undefined, size? : ISize | undefined, textDirection? : TextDirection | undefined,}){
flutter.painting.imageConfiguration(this, props);}
    private readonly _dart_copyWith: ( props? : {  bundle? : IAssetBundle | undefined, devicePixelRatio? : number | undefined, locale? : ILocale | undefined, platform? : TargetPlatform | undefined, size? : ISize | undefined, textDirection? : TextDirection | undefined,}) => IImageConfiguration = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
public copyWith( props? : {  bundle? : IAssetBundle | undefined, devicePixelRatio? : number | undefined, locale? : ILocale | undefined, platform? : TargetPlatform | undefined, size? : ISize | undefined, textDirection? : TextDirection | undefined,}) : IImageConfiguration {
    return this._dart_copyWith(props);
}
public getHashCode() : number {
    return this._dart_getHashCode();
}
public toString() : string {
    return this._dart_toString();
}
}
