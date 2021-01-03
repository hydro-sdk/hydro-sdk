declare const flutter: {
    foundation: {
        textTreeConfiguration: (
            this: void,
            textTreeConfiguration: TextTreeConfiguration,
            props: {
                addBlankLineIfNoChildren: boolean;
                afterDescription: string;
                afterDescriptionIfBody: string;
                afterName: string;
                afterProperties: string;
                beforeName: string;
                beforeProperties: string;
                bodyIndent: string;
                footer: string;
                isBlankLineBetweenPropertiesAndChildren: boolean;
                isNameOnOwnLine: boolean;
                lineBreak: string;
                lineBreakProperties: boolean;
                mandatoryAfterProperties: string;
                mandatoryFooter: string;
                propertySeparator: string;
                showChildren: boolean;
                suffixLineOne: string;
                linkCharacter: string;
                prefixLastChildLineOne: string;
                prefixLineOne: string;
                prefixOtherLines: string;
                prefixOtherLinesRootNode: string;
                propertyPrefixIfChildren: string;
                propertyPrefixNoChildren: string;
            }
        ) => TextTreeConfiguration;
    };
};
const textTreeConfigurationDefaultProps = {
    addBlankLineIfNoChildren: true,
    afterDescription: "",
    afterDescriptionIfBody: "",
    afterName: ":",
    afterProperties: "",
    beforeName: "",
    beforeProperties: "",
    bodyIndent: "",
    footer: "",
    isBlankLineBetweenPropertiesAndChildren: true,
    isNameOnOwnLine: false,
    lineBreak: "\n",
    lineBreakProperties: true,
    mandatoryAfterProperties: "",
    mandatoryFooter: "",
    propertySeparator: "",
    showChildren: true,
    suffixLineOne: "",
};
export interface ITextTreeConfiguration {
    prefixLineOne: string;
    suffixLineOne: string;
    prefixOtherLines: string;
    prefixLastChildLineOne: string;
    prefixOtherLinesRootNode: string;
    propertyPrefixIfChildren: string;
    propertyPrefixNoChildren: string;
    linkCharacter: string;
    childLinkSpace: string;
    lineBreak: string;
    lineBreakProperties: boolean;
    beforeName: string;
    afterName: string;
    afterDescriptionIfBody: string;
    afterDescription: string;
    beforeProperties: string;
    afterProperties: string;
    mandatoryAfterProperties: string;
    propertySeparator: string;
    bodyIndent: string;
    showChildren: boolean;
    addBlankLineIfNoChildren: boolean;
    isNameOnOwnLine: boolean;
    footer: string;
    mandatoryFooter: string;
    isBlankLineBetweenPropertiesAndChildren: boolean;
}
export class TextTreeConfiguration {
    public readonly prefixLineOne: string = undefined as any;
    public readonly suffixLineOne: string = undefined as any;
    public readonly prefixOtherLines: string = undefined as any;
    public readonly prefixLastChildLineOne: string = undefined as any;
    public readonly prefixOtherLinesRootNode: string = undefined as any;
    public readonly propertyPrefixIfChildren: string = undefined as any;
    public readonly propertyPrefixNoChildren: string = undefined as any;
    public readonly linkCharacter: string = undefined as any;
    public readonly childLinkSpace: string = undefined as any;
    public readonly lineBreak: string = undefined as any;
    public readonly lineBreakProperties: boolean = undefined as any;
    public readonly beforeName: string = undefined as any;
    public readonly afterName: string = undefined as any;
    public readonly afterDescriptionIfBody: string = undefined as any;
    public readonly afterDescription: string = undefined as any;
    public readonly beforeProperties: string = undefined as any;
    public readonly afterProperties: string = undefined as any;
    public readonly mandatoryAfterProperties: string = undefined as any;
    public readonly propertySeparator: string = undefined as any;
    public readonly bodyIndent: string = undefined as any;
    public readonly showChildren: boolean = undefined as any;
    public readonly addBlankLineIfNoChildren: boolean = undefined as any;
    public readonly isNameOnOwnLine: boolean = undefined as any;
    public readonly footer: string = undefined as any;
    public readonly mandatoryFooter: string = undefined as any;
    public readonly isBlankLineBetweenPropertiesAndChildren: boolean = undefined as any;
    public constructor(props: {
        addBlankLineIfNoChildren?: boolean;
        afterDescription?: string;
        afterDescriptionIfBody?: string;
        afterName?: string;
        afterProperties?: string;
        beforeName?: string;
        beforeProperties?: string;
        bodyIndent?: string;
        footer?: string;
        isBlankLineBetweenPropertiesAndChildren?: boolean;
        isNameOnOwnLine?: boolean;
        lineBreak?: string;
        lineBreakProperties?: boolean;
        mandatoryAfterProperties?: string;
        mandatoryFooter?: string;
        propertySeparator?: string;
        showChildren?: boolean;
        suffixLineOne?: string;
        linkCharacter: string;
        prefixLastChildLineOne: string;
        prefixLineOne: string;
        prefixOtherLines: string;
        prefixOtherLinesRootNode: string;
        propertyPrefixIfChildren: string;
        propertyPrefixNoChildren: string;
    }) {
        flutter.foundation.textTreeConfiguration(this, {
            ...textTreeConfigurationDefaultProps,
            ...props,
        });
    }
}
