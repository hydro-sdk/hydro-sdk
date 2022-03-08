import { IList } from "../../dart/core/list";
import { ILicenseEntry } from "../foundation/licenseEntry";
declare const flutter: {
    material: {
        _licenseData: (
            this: void,
            _licenseData: I_LicenseData
        ) => I_LicenseData;
    };
};
export interface I_LicenseData {
    licenses: IList<ILicenseEntry>;
    packageLicenseBindings: { [index: string]: IList<number> };
    packages: IList<string>;
    firstPackage: string | undefined;
    addLicense: (entry: ILicenseEntry) => void;
    sortPackages: (compare?: (a: string, b: string) => number) => void;
}
export class _LicenseData {
    public readonly licenses: IList<ILicenseEntry> = undefined as any;
    public readonly packageLicenseBindings: { [index: string]: IList<number> } =
        undefined as any;
    public readonly packages: IList<string> = undefined as any;
    public readonly firstPackage: string | undefined = undefined as any;
    public constructor() {
        flutter.material._licenseData(this);
    }
    private readonly _dart_addLicense: (entry: ILicenseEntry) => void =
        undefined as any;
    private readonly _dart_sortPackages: (
        compare?: (a: string, b: string) => number
    ) => void = undefined as any;
    public addLicense(entry: ILicenseEntry): void {
        return this._dart_addLicense(entry);
    }
    public sortPackages(compare?: (a: string, b: string) => number): void {
        return this._dart_sortPackages(compare);
    }
}
