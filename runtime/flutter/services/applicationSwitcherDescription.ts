declare const flutter: {
    services: {
        applicationSwitcherDescription: (
            this: void,
            applicationSwitcherDescription: IApplicationSwitcherDescription,
            props?: {
                label?: string | undefined;
                primaryColor?: number | undefined;
            }
        ) => IApplicationSwitcherDescription;
    };
};
export interface IApplicationSwitcherDescription {
    label: string | undefined;
    primaryColor: number | undefined;
}
export class ApplicationSwitcherDescription {
    public readonly label: string | undefined = undefined as any;
    public readonly primaryColor: number | undefined = undefined as any;
    public constructor(props?: {
        label?: string | undefined;
        primaryColor?: number | undefined;
    }) {
        flutter.services.applicationSwitcherDescription(this, props);
    }
}
