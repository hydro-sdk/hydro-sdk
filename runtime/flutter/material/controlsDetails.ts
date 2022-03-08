declare const flutter: {
    material: {
        controlsDetails: (
            this: void,
            controlsDetails: IControlsDetails,
            props: {
                onStepCancel?: () => void | undefined;
                onStepContinue?: () => void | undefined;
                currentStep: number;
                stepIndex: number;
            }
        ) => IControlsDetails;
    };
};
export interface IControlsDetails {
    currentStep: number;
    stepIndex: number;
    getIsActive: () => boolean;
}
export class ControlsDetails {
    public readonly currentStep: number = undefined as any;
    public readonly stepIndex: number = undefined as any;
    public constructor(props: {
        onStepCancel?: () => void | undefined;
        onStepContinue?: () => void | undefined;
        currentStep: number;
        stepIndex: number;
    }) {
        flutter.material.controlsDetails(this, props);
    }
    private readonly _dart_getIsActive: () => boolean = undefined as any;
    public getIsActive(): boolean {
        return this._dart_getIsActive();
    }
}
