declare const flutter: {
    foundation: {
        licenseParagraph: (
            this: void,
            licenseParagraph: ILicenseParagraph,
            text: string,
            indent: number
        ) => ILicenseParagraph;
    };
};
export interface ILicenseParagraph {
    text: string;
    indent: number;
}
export class LicenseParagraph {
    public static centeredIndent = -1;
    public readonly text: string = undefined as any;
    public readonly indent: number = undefined as any;
    public constructor(text: string, indent: number) {
        flutter.foundation.licenseParagraph(this, text, indent);
    }
}
