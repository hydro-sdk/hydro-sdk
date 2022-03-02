import { IStream } from "../../dart/async/stream";
import { ILicenseEntry } from "./licenseEntry";
declare const flutter: {
    foundation: {
        licenseRegistryAddLicense: (
            collector: () => IStream<ILicenseEntry>
        ) => void;
        licenseRegistryLicenses: () => IStream<ILicenseEntry>;
        licenseRegistryReset: () => void;
    };
};
export interface ILicenseRegistry {}
export class LicenseRegistry {
    public static addLicense(collector: () => IStream<ILicenseEntry>): void {
        return flutter.foundation.licenseRegistryAddLicense(collector);
    }
    public static licenses(): IStream<ILicenseEntry> {
        return flutter.foundation.licenseRegistryLicenses();
    }
    public static reset(): void {
        return flutter.foundation.licenseRegistryReset();
    }
}
