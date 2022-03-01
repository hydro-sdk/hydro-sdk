
import { IList } from "../../dart/core/list";
import { ILicenseEntry } from "./licenseEntry";
import { IIterable } from "../../dart/core/iterable";
import { ILicenseParagraph } from "./licenseParagraph";
declare const flutter: {
foundation: {
licenseEntryWithLineBreaks: (this: void, licenseEntryWithLineBreaks: ILicenseEntryWithLineBreaks, packages: IList<string>, text: string) => ILicenseEntryWithLineBreaks
}
};
export interface ILicenseEntryWithLineBreaks


{
packages: IList<string>;
text: string;
getPackages: () => IList<string>;
getParagraphs: () => IIterable<ILicenseParagraph>;
toString: () => string;
getHashCode: () => number;
}export class LicenseEntryWithLineBreaks

 implements ILicenseEntry
{    public readonly packages: IList<string> = undefined as any;
    public readonly text: string = undefined as any;
public constructor(packages: IList<string>, text: string){
flutter.foundation.licenseEntryWithLineBreaks(this, packages, text);}
    private readonly _dart_getPackages: () => IList<string> = undefined as any;
    private readonly _dart_getParagraphs: () => IIterable<ILicenseParagraph> = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
public getPackages() : IList<string> {
    return this._dart_getPackages();
}
public getParagraphs() : IIterable<ILicenseParagraph> {
    return this._dart_getParagraphs();
}
public toString() : string {
    return this._dart_toString();
}
public getHashCode() : number {
    return this._dart_getHashCode();
}
}
