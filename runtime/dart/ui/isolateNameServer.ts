import { ISendPort } from "../isolate/sendPort";
declare const dart: {
    ui: {
        isolateNameServerLookupPortByName: (
            name: string
        ) => ISendPort | undefined;
        isolateNameServerRegisterPortWithName: (
            port: ISendPort,
            name: string
        ) => boolean;
        isolateNameServerRemovePortNameMapping: (name: string) => boolean;
    };
};
export interface IIsolateNameServer {}
export class IsolateNameServer {
    public static lookupPortByName(name: string): ISendPort | undefined {
        return dart.ui.isolateNameServerLookupPortByName(name);
    }
    public static registerPortWithName(port: ISendPort, name: string): boolean {
        return dart.ui.isolateNameServerRegisterPortWithName(port, name);
    }
    public static removePortNameMapping(name: string): boolean {
        return dart.ui.isolateNameServerRemovePortNameMapping(name);
    }
}
