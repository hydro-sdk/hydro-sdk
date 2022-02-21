import { IIterable } from "../../dart/core/iterable";
import { ILicenseParagraph } from "./licenseParagraph";
export interface ILicenseEntry {
    getPackages: () => IIterable<string>;
    getParagraphs: () => IIterable<ILicenseParagraph>;
}
