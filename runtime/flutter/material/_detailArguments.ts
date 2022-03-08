import { IList } from "../../dart/core/list";
import { ILicenseEntry } from "../foundation/licenseEntry";
declare const flutter: {
    material: {
        _detailArguments: (
            this: void,
            _detailArguments: I_DetailArguments,
            packageName: string,
            licenseEntries: IList<ILicenseEntry>
        ) => I_DetailArguments;
    };
};
export interface I_DetailArguments {
    packageName: string;
    licenseEntries: IList<ILicenseEntry>;
    getHashCode: () => number;
}
export class _DetailArguments {
    public readonly packageName: string = undefined as any;
    public readonly licenseEntries: IList<ILicenseEntry> = undefined as any;
    public constructor(
        packageName: string,
        licenseEntries: IList<ILicenseEntry>
    ) {
        flutter.material._detailArguments(this, packageName, licenseEntries);
    }
    private readonly _dart_getHashCode: () => number = undefined as any;
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
