import { IFuture } from "../../dart/async/future";
import { IChannelBuffers } from "../../dart/ui/channelBuffers";
import { IBinaryMessenger } from "./binaryMessenger";
import { IHardwareKeyboard } from "./hardwareKeyboard";
import { IKeyEventManager } from "./keyEventManager";
import { IRestorationManager } from "./restorationManager";
export interface IServicesBinding {
    initInstances: () => void;
    getKeyboard: () => IHardwareKeyboard;
    getKeyEventManager: () => IKeyEventManager;
    getDefaultBinaryMessenger: () => IBinaryMessenger;
    getChannelBuffers: () => IChannelBuffers;
    createBinaryMessenger: () => IBinaryMessenger;
    handleMemoryPressure: () => void;
    handleSystemMessage: (systemMessage: Object) => IFuture<void>;
    initLicenses: () => void;
    initServiceExtensions: () => void;
    evict: (asset: string) => void;
    readInitialLifecycleStateFromNativeWindow: () => void;
    getRestorationManager: () => IRestorationManager;
    createRestorationManager: () => IRestorationManager;
    setSystemUiChangeCallback: (
        callback?: (systemOverlaysAreVisible: boolean) => IFuture<void>
    ) => void;
}
