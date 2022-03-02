declare const flutter: {
    foundation: {
        debugReassembleConfig: (
            this: void,
            debugReassembleConfig: IDebugReassembleConfig,
            props?: { widgetName?: string | undefined }
        ) => IDebugReassembleConfig;
    };
};
export interface IDebugReassembleConfig {
    widgetName: string | undefined;
}
export class DebugReassembleConfig {
    public readonly widgetName: string | undefined = undefined as any;
    public constructor(props?: { widgetName?: string | undefined }) {
        flutter.foundation.debugReassembleConfig(this, props);
    }
}
