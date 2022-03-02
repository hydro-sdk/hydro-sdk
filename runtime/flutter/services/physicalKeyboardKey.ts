import { IIterable } from "../../dart/core/iterable";
import { List } from "../../dart/core/list";
import { Map } from "../../dart/core/map";
import { IMapEntry, MapEntry } from "../../dart/core/mapEntry";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKeyboardKey } from "./keyboardKey";
declare const flutter: {
    services: {
        physicalKeyboardKey: (
            this: void,
            physicalKeyboardKey: IPhysicalKeyboardKey,
            usbHidUsage: number
        ) => IPhysicalKeyboardKey;
        physicalKeyboardKeyFindKeyByCode: (
            usageCode: number
        ) => IPhysicalKeyboardKey | undefined;
        physicalKeyboardKeyKnownPhysicalKeys: () => IIterable<IPhysicalKeyboardKey>;
    };
};
export interface IPhysicalKeyboardKey {
    usbHidUsage: number;
    getDebugName: () => string | undefined;
    getHashCode: () => number;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    toStringShort: () => string;
    toString: (props: { minLevel: DiagnosticLevel }) => string;
    toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode;
}
export class PhysicalKeyboardKey
    implements Omit<IKeyboardKey>, IDiagnosticable
{
    public static hyper = new PhysicalKeyboardKey(0x00000010);
    public static superKey = new PhysicalKeyboardKey(0x00000011);
    public static fn = new PhysicalKeyboardKey(0x00000012);
    public static fnLock = new PhysicalKeyboardKey(0x00000013);
    public static suspend = new PhysicalKeyboardKey(0x00000014);
    public static resume = new PhysicalKeyboardKey(0x00000015);
    public static turbo = new PhysicalKeyboardKey(0x00000016);
    public static privacyScreenToggle = new PhysicalKeyboardKey(0x00000017);
    public static sleep = new PhysicalKeyboardKey(0x00010082);
    public static wakeUp = new PhysicalKeyboardKey(0x00010083);
    public static displayToggleIntExt = new PhysicalKeyboardKey(0x000100b5);
    public static gameButton1 = new PhysicalKeyboardKey(0x0005ff01);
    public static gameButton2 = new PhysicalKeyboardKey(0x0005ff02);
    public static gameButton3 = new PhysicalKeyboardKey(0x0005ff03);
    public static gameButton4 = new PhysicalKeyboardKey(0x0005ff04);
    public static gameButton5 = new PhysicalKeyboardKey(0x0005ff05);
    public static gameButton6 = new PhysicalKeyboardKey(0x0005ff06);
    public static gameButton7 = new PhysicalKeyboardKey(0x0005ff07);
    public static gameButton8 = new PhysicalKeyboardKey(0x0005ff08);
    public static gameButton9 = new PhysicalKeyboardKey(0x0005ff09);
    public static gameButton10 = new PhysicalKeyboardKey(0x0005ff0a);
    public static gameButton11 = new PhysicalKeyboardKey(0x0005ff0b);
    public static gameButton12 = new PhysicalKeyboardKey(0x0005ff0c);
    public static gameButton13 = new PhysicalKeyboardKey(0x0005ff0d);
    public static gameButton14 = new PhysicalKeyboardKey(0x0005ff0e);
    public static gameButton15 = new PhysicalKeyboardKey(0x0005ff0f);
    public static gameButton16 = new PhysicalKeyboardKey(0x0005ff10);
    public static gameButtonA = new PhysicalKeyboardKey(0x0005ff11);
    public static gameButtonB = new PhysicalKeyboardKey(0x0005ff12);
    public static gameButtonC = new PhysicalKeyboardKey(0x0005ff13);
    public static gameButtonLeft1 = new PhysicalKeyboardKey(0x0005ff14);
    public static gameButtonLeft2 = new PhysicalKeyboardKey(0x0005ff15);
    public static gameButtonMode = new PhysicalKeyboardKey(0x0005ff16);
    public static gameButtonRight1 = new PhysicalKeyboardKey(0x0005ff17);
    public static gameButtonRight2 = new PhysicalKeyboardKey(0x0005ff18);
    public static gameButtonSelect = new PhysicalKeyboardKey(0x0005ff19);
    public static gameButtonStart = new PhysicalKeyboardKey(0x0005ff1a);
    public static gameButtonThumbLeft = new PhysicalKeyboardKey(0x0005ff1b);
    public static gameButtonThumbRight = new PhysicalKeyboardKey(0x0005ff1c);
    public static gameButtonX = new PhysicalKeyboardKey(0x0005ff1d);
    public static gameButtonY = new PhysicalKeyboardKey(0x0005ff1e);
    public static gameButtonZ = new PhysicalKeyboardKey(0x0005ff1f);
    public static usbReserved = new PhysicalKeyboardKey(0x00070000);
    public static usbErrorRollOver = new PhysicalKeyboardKey(0x00070001);
    public static usbPostFail = new PhysicalKeyboardKey(0x00070002);
    public static usbErrorUndefined = new PhysicalKeyboardKey(0x00070003);
    public static keyA = new PhysicalKeyboardKey(0x00070004);
    public static keyB = new PhysicalKeyboardKey(0x00070005);
    public static keyC = new PhysicalKeyboardKey(0x00070006);
    public static keyD = new PhysicalKeyboardKey(0x00070007);
    public static keyE = new PhysicalKeyboardKey(0x00070008);
    public static keyF = new PhysicalKeyboardKey(0x00070009);
    public static keyG = new PhysicalKeyboardKey(0x0007000a);
    public static keyH = new PhysicalKeyboardKey(0x0007000b);
    public static keyI = new PhysicalKeyboardKey(0x0007000c);
    public static keyJ = new PhysicalKeyboardKey(0x0007000d);
    public static keyK = new PhysicalKeyboardKey(0x0007000e);
    public static keyL = new PhysicalKeyboardKey(0x0007000f);
    public static keyM = new PhysicalKeyboardKey(0x00070010);
    public static keyN = new PhysicalKeyboardKey(0x00070011);
    public static keyO = new PhysicalKeyboardKey(0x00070012);
    public static keyP = new PhysicalKeyboardKey(0x00070013);
    public static keyQ = new PhysicalKeyboardKey(0x00070014);
    public static keyR = new PhysicalKeyboardKey(0x00070015);
    public static keyS = new PhysicalKeyboardKey(0x00070016);
    public static keyT = new PhysicalKeyboardKey(0x00070017);
    public static keyU = new PhysicalKeyboardKey(0x00070018);
    public static keyV = new PhysicalKeyboardKey(0x00070019);
    public static keyW = new PhysicalKeyboardKey(0x0007001a);
    public static keyX = new PhysicalKeyboardKey(0x0007001b);
    public static keyY = new PhysicalKeyboardKey(0x0007001c);
    public static keyZ = new PhysicalKeyboardKey(0x0007001d);
    public static digit1 = new PhysicalKeyboardKey(0x0007001e);
    public static digit2 = new PhysicalKeyboardKey(0x0007001f);
    public static digit3 = new PhysicalKeyboardKey(0x00070020);
    public static digit4 = new PhysicalKeyboardKey(0x00070021);
    public static digit5 = new PhysicalKeyboardKey(0x00070022);
    public static digit6 = new PhysicalKeyboardKey(0x00070023);
    public static digit7 = new PhysicalKeyboardKey(0x00070024);
    public static digit8 = new PhysicalKeyboardKey(0x00070025);
    public static digit9 = new PhysicalKeyboardKey(0x00070026);
    public static digit0 = new PhysicalKeyboardKey(0x00070027);
    public static enter = new PhysicalKeyboardKey(0x00070028);
    public static escape = new PhysicalKeyboardKey(0x00070029);
    public static backspace = new PhysicalKeyboardKey(0x0007002a);
    public static tab = new PhysicalKeyboardKey(0x0007002b);
    public static space = new PhysicalKeyboardKey(0x0007002c);
    public static minus = new PhysicalKeyboardKey(0x0007002d);
    public static equal = new PhysicalKeyboardKey(0x0007002e);
    public static bracketLeft = new PhysicalKeyboardKey(0x0007002f);
    public static bracketRight = new PhysicalKeyboardKey(0x00070030);
    public static backslash = new PhysicalKeyboardKey(0x00070031);
    public static semicolon = new PhysicalKeyboardKey(0x00070033);
    public static quote = new PhysicalKeyboardKey(0x00070034);
    public static backquote = new PhysicalKeyboardKey(0x00070035);
    public static comma = new PhysicalKeyboardKey(0x00070036);
    public static period = new PhysicalKeyboardKey(0x00070037);
    public static slash = new PhysicalKeyboardKey(0x00070038);
    public static capsLock = new PhysicalKeyboardKey(0x00070039);
    public static f1 = new PhysicalKeyboardKey(0x0007003a);
    public static f2 = new PhysicalKeyboardKey(0x0007003b);
    public static f3 = new PhysicalKeyboardKey(0x0007003c);
    public static f4 = new PhysicalKeyboardKey(0x0007003d);
    public static f5 = new PhysicalKeyboardKey(0x0007003e);
    public static f6 = new PhysicalKeyboardKey(0x0007003f);
    public static f7 = new PhysicalKeyboardKey(0x00070040);
    public static f8 = new PhysicalKeyboardKey(0x00070041);
    public static f9 = new PhysicalKeyboardKey(0x00070042);
    public static f10 = new PhysicalKeyboardKey(0x00070043);
    public static f11 = new PhysicalKeyboardKey(0x00070044);
    public static f12 = new PhysicalKeyboardKey(0x00070045);
    public static printScreen = new PhysicalKeyboardKey(0x00070046);
    public static scrollLock = new PhysicalKeyboardKey(0x00070047);
    public static pause = new PhysicalKeyboardKey(0x00070048);
    public static insert = new PhysicalKeyboardKey(0x00070049);
    public static home = new PhysicalKeyboardKey(0x0007004a);
    public static pageUp = new PhysicalKeyboardKey(0x0007004b);
    public static delete = new PhysicalKeyboardKey(0x0007004c);
    public static end = new PhysicalKeyboardKey(0x0007004d);
    public static pageDown = new PhysicalKeyboardKey(0x0007004e);
    public static arrowRight = new PhysicalKeyboardKey(0x0007004f);
    public static arrowLeft = new PhysicalKeyboardKey(0x00070050);
    public static arrowDown = new PhysicalKeyboardKey(0x00070051);
    public static arrowUp = new PhysicalKeyboardKey(0x00070052);
    public static numLock = new PhysicalKeyboardKey(0x00070053);
    public static numpadDivide = new PhysicalKeyboardKey(0x00070054);
    public static numpadMultiply = new PhysicalKeyboardKey(0x00070055);
    public static numpadSubtract = new PhysicalKeyboardKey(0x00070056);
    public static numpadAdd = new PhysicalKeyboardKey(0x00070057);
    public static numpadEnter = new PhysicalKeyboardKey(0x00070058);
    public static numpad1 = new PhysicalKeyboardKey(0x00070059);
    public static numpad2 = new PhysicalKeyboardKey(0x0007005a);
    public static numpad3 = new PhysicalKeyboardKey(0x0007005b);
    public static numpad4 = new PhysicalKeyboardKey(0x0007005c);
    public static numpad5 = new PhysicalKeyboardKey(0x0007005d);
    public static numpad6 = new PhysicalKeyboardKey(0x0007005e);
    public static numpad7 = new PhysicalKeyboardKey(0x0007005f);
    public static numpad8 = new PhysicalKeyboardKey(0x00070060);
    public static numpad9 = new PhysicalKeyboardKey(0x00070061);
    public static numpad0 = new PhysicalKeyboardKey(0x00070062);
    public static numpadDecimal = new PhysicalKeyboardKey(0x00070063);
    public static intlBackslash = new PhysicalKeyboardKey(0x00070064);
    public static contextMenu = new PhysicalKeyboardKey(0x00070065);
    public static power = new PhysicalKeyboardKey(0x00070066);
    public static numpadEqual = new PhysicalKeyboardKey(0x00070067);
    public static f13 = new PhysicalKeyboardKey(0x00070068);
    public static f14 = new PhysicalKeyboardKey(0x00070069);
    public static f15 = new PhysicalKeyboardKey(0x0007006a);
    public static f16 = new PhysicalKeyboardKey(0x0007006b);
    public static f17 = new PhysicalKeyboardKey(0x0007006c);
    public static f18 = new PhysicalKeyboardKey(0x0007006d);
    public static f19 = new PhysicalKeyboardKey(0x0007006e);
    public static f20 = new PhysicalKeyboardKey(0x0007006f);
    public static f21 = new PhysicalKeyboardKey(0x00070070);
    public static f22 = new PhysicalKeyboardKey(0x00070071);
    public static f23 = new PhysicalKeyboardKey(0x00070072);
    public static f24 = new PhysicalKeyboardKey(0x00070073);
    public static open = new PhysicalKeyboardKey(0x00070074);
    public static help = new PhysicalKeyboardKey(0x00070075);
    public static select = new PhysicalKeyboardKey(0x00070077);
    public static again = new PhysicalKeyboardKey(0x00070079);
    public static undo = new PhysicalKeyboardKey(0x0007007a);
    public static cut = new PhysicalKeyboardKey(0x0007007b);
    public static copy = new PhysicalKeyboardKey(0x0007007c);
    public static paste = new PhysicalKeyboardKey(0x0007007d);
    public static find = new PhysicalKeyboardKey(0x0007007e);
    public static audioVolumeMute = new PhysicalKeyboardKey(0x0007007f);
    public static audioVolumeUp = new PhysicalKeyboardKey(0x00070080);
    public static audioVolumeDown = new PhysicalKeyboardKey(0x00070081);
    public static numpadComma = new PhysicalKeyboardKey(0x00070085);
    public static intlRo = new PhysicalKeyboardKey(0x00070087);
    public static kanaMode = new PhysicalKeyboardKey(0x00070088);
    public static intlYen = new PhysicalKeyboardKey(0x00070089);
    public static convert = new PhysicalKeyboardKey(0x0007008a);
    public static nonConvert = new PhysicalKeyboardKey(0x0007008b);
    public static lang1 = new PhysicalKeyboardKey(0x00070090);
    public static lang2 = new PhysicalKeyboardKey(0x00070091);
    public static lang3 = new PhysicalKeyboardKey(0x00070092);
    public static lang4 = new PhysicalKeyboardKey(0x00070093);
    public static lang5 = new PhysicalKeyboardKey(0x00070094);
    public static abort = new PhysicalKeyboardKey(0x0007009b);
    public static props = new PhysicalKeyboardKey(0x000700a3);
    public static numpadParenLeft = new PhysicalKeyboardKey(0x000700b6);
    public static numpadParenRight = new PhysicalKeyboardKey(0x000700b7);
    public static numpadBackspace = new PhysicalKeyboardKey(0x000700bb);
    public static numpadMemoryStore = new PhysicalKeyboardKey(0x000700d0);
    public static numpadMemoryRecall = new PhysicalKeyboardKey(0x000700d1);
    public static numpadMemoryClear = new PhysicalKeyboardKey(0x000700d2);
    public static numpadMemoryAdd = new PhysicalKeyboardKey(0x000700d3);
    public static numpadMemorySubtract = new PhysicalKeyboardKey(0x000700d4);
    public static numpadSignChange = new PhysicalKeyboardKey(0x000700d7);
    public static numpadClear = new PhysicalKeyboardKey(0x000700d8);
    public static numpadClearEntry = new PhysicalKeyboardKey(0x000700d9);
    public static controlLeft = new PhysicalKeyboardKey(0x000700e0);
    public static shiftLeft = new PhysicalKeyboardKey(0x000700e1);
    public static altLeft = new PhysicalKeyboardKey(0x000700e2);
    public static metaLeft = new PhysicalKeyboardKey(0x000700e3);
    public static controlRight = new PhysicalKeyboardKey(0x000700e4);
    public static shiftRight = new PhysicalKeyboardKey(0x000700e5);
    public static altRight = new PhysicalKeyboardKey(0x000700e6);
    public static metaRight = new PhysicalKeyboardKey(0x000700e7);
    public static info = new PhysicalKeyboardKey(0x000c0060);
    public static closedCaptionToggle = new PhysicalKeyboardKey(0x000c0061);
    public static brightnessUp = new PhysicalKeyboardKey(0x000c006f);
    public static brightnessDown = new PhysicalKeyboardKey(0x000c0070);
    public static brightnessToggle = new PhysicalKeyboardKey(0x000c0072);
    public static brightnessMinimum = new PhysicalKeyboardKey(0x000c0073);
    public static brightnessMaximum = new PhysicalKeyboardKey(0x000c0074);
    public static brightnessAuto = new PhysicalKeyboardKey(0x000c0075);
    public static kbdIllumUp = new PhysicalKeyboardKey(0x000c0079);
    public static kbdIllumDown = new PhysicalKeyboardKey(0x000c007a);
    public static mediaLast = new PhysicalKeyboardKey(0x000c0083);
    public static launchPhone = new PhysicalKeyboardKey(0x000c008c);
    public static programGuide = new PhysicalKeyboardKey(0x000c008d);
    public static exit = new PhysicalKeyboardKey(0x000c0094);
    public static channelUp = new PhysicalKeyboardKey(0x000c009c);
    public static channelDown = new PhysicalKeyboardKey(0x000c009d);
    public static mediaPlay = new PhysicalKeyboardKey(0x000c00b0);
    public static mediaPause = new PhysicalKeyboardKey(0x000c00b1);
    public static mediaRecord = new PhysicalKeyboardKey(0x000c00b2);
    public static mediaFastForward = new PhysicalKeyboardKey(0x000c00b3);
    public static mediaRewind = new PhysicalKeyboardKey(0x000c00b4);
    public static mediaTrackNext = new PhysicalKeyboardKey(0x000c00b5);
    public static mediaTrackPrevious = new PhysicalKeyboardKey(0x000c00b6);
    public static mediaStop = new PhysicalKeyboardKey(0x000c00b7);
    public static eject = new PhysicalKeyboardKey(0x000c00b8);
    public static mediaPlayPause = new PhysicalKeyboardKey(0x000c00cd);
    public static speechInputToggle = new PhysicalKeyboardKey(0x000c00cf);
    public static bassBoost = new PhysicalKeyboardKey(0x000c00e5);
    public static mediaSelect = new PhysicalKeyboardKey(0x000c0183);
    public static launchWordProcessor = new PhysicalKeyboardKey(0x000c0184);
    public static launchSpreadsheet = new PhysicalKeyboardKey(0x000c0186);
    public static launchMail = new PhysicalKeyboardKey(0x000c018a);
    public static launchContacts = new PhysicalKeyboardKey(0x000c018d);
    public static launchCalendar = new PhysicalKeyboardKey(0x000c018e);
    public static launchApp2 = new PhysicalKeyboardKey(0x000c0192);
    public static launchApp1 = new PhysicalKeyboardKey(0x000c0194);
    public static launchInternetBrowser = new PhysicalKeyboardKey(0x000c0196);
    public static logOff = new PhysicalKeyboardKey(0x000c019c);
    public static lockScreen = new PhysicalKeyboardKey(0x000c019e);
    public static launchControlPanel = new PhysicalKeyboardKey(0x000c019f);
    public static selectTask = new PhysicalKeyboardKey(0x000c01a2);
    public static launchDocuments = new PhysicalKeyboardKey(0x000c01a7);
    public static spellCheck = new PhysicalKeyboardKey(0x000c01ab);
    public static launchKeyboardLayout = new PhysicalKeyboardKey(0x000c01ae);
    public static launchScreenSaver = new PhysicalKeyboardKey(0x000c01b1);
    public static launchAudioBrowser = new PhysicalKeyboardKey(0x000c01b7);
    public static launchAssistant = new PhysicalKeyboardKey(0x000c01cb);
    public static newKey = new PhysicalKeyboardKey(0x000c0201);
    public static close = new PhysicalKeyboardKey(0x000c0203);
    public static save = new PhysicalKeyboardKey(0x000c0207);
    public static print = new PhysicalKeyboardKey(0x000c0208);
    public static browserSearch = new PhysicalKeyboardKey(0x000c0221);
    public static browserHome = new PhysicalKeyboardKey(0x000c0223);
    public static browserBack = new PhysicalKeyboardKey(0x000c0224);
    public static browserForward = new PhysicalKeyboardKey(0x000c0225);
    public static browserStop = new PhysicalKeyboardKey(0x000c0226);
    public static browserRefresh = new PhysicalKeyboardKey(0x000c0227);
    public static browserFavorites = new PhysicalKeyboardKey(0x000c022a);
    public static zoomIn = new PhysicalKeyboardKey(0x000c022d);
    public static zoomOut = new PhysicalKeyboardKey(0x000c022e);
    public static zoomToggle = new PhysicalKeyboardKey(0x000c0232);
    public static redo = new PhysicalKeyboardKey(0x000c0279);
    public static mailReply = new PhysicalKeyboardKey(0x000c0289);
    public static mailForward = new PhysicalKeyboardKey(0x000c028b);
    public static mailSend = new PhysicalKeyboardKey(0x000c028c);
    public static keyboardLayoutSelect = new PhysicalKeyboardKey(0x000c029d);
    public static showAllWindows = new PhysicalKeyboardKey(0x000c029f);
    public static _knownPhysicalKeys = Map.fromEntries(
        <IIterable<IMapEntry<number, IPhysicalKeyboardKey>>>(
            (<unknown>(
                List.fromArray([
                    new MapEntry(0x00000010, PhysicalKeyboardKey.hyper),
                    new MapEntry(0x00000011, PhysicalKeyboardKey.superKey),
                    new MapEntry(0x00000012, PhysicalKeyboardKey.fn),
                    new MapEntry(0x00000013, PhysicalKeyboardKey.fnLock),
                    new MapEntry(0x00000014, PhysicalKeyboardKey.suspend),
                    new MapEntry(0x00000015, PhysicalKeyboardKey.resume),
                    new MapEntry(0x00000016, PhysicalKeyboardKey.turbo),
                    new MapEntry(
                        0x00000017,
                        PhysicalKeyboardKey.privacyScreenToggle
                    ),
                    new MapEntry(0x00010082, PhysicalKeyboardKey.sleep),
                    new MapEntry(0x00010083, PhysicalKeyboardKey.wakeUp),
                    new MapEntry(
                        0x000100b5,
                        PhysicalKeyboardKey.displayToggleIntExt
                    ),
                    new MapEntry(0x0005ff01, PhysicalKeyboardKey.gameButton1),
                    new MapEntry(0x0005ff02, PhysicalKeyboardKey.gameButton2),
                    new MapEntry(0x0005ff03, PhysicalKeyboardKey.gameButton3),
                    new MapEntry(0x0005ff04, PhysicalKeyboardKey.gameButton4),
                    new MapEntry(0x0005ff05, PhysicalKeyboardKey.gameButton5),
                    new MapEntry(0x0005ff06, PhysicalKeyboardKey.gameButton6),
                    new MapEntry(0x0005ff07, PhysicalKeyboardKey.gameButton7),
                    new MapEntry(0x0005ff08, PhysicalKeyboardKey.gameButton8),
                    new MapEntry(0x0005ff09, PhysicalKeyboardKey.gameButton9),
                    new MapEntry(0x0005ff0a, PhysicalKeyboardKey.gameButton10),
                    new MapEntry(0x0005ff0b, PhysicalKeyboardKey.gameButton11),
                    new MapEntry(0x0005ff0c, PhysicalKeyboardKey.gameButton12),
                    new MapEntry(0x0005ff0d, PhysicalKeyboardKey.gameButton13),
                    new MapEntry(0x0005ff0e, PhysicalKeyboardKey.gameButton14),
                    new MapEntry(0x0005ff0f, PhysicalKeyboardKey.gameButton15),
                    new MapEntry(0x0005ff10, PhysicalKeyboardKey.gameButton16),
                    new MapEntry(0x0005ff11, PhysicalKeyboardKey.gameButtonA),
                    new MapEntry(0x0005ff12, PhysicalKeyboardKey.gameButtonB),
                    new MapEntry(0x0005ff13, PhysicalKeyboardKey.gameButtonC),
                    new MapEntry(
                        0x0005ff14,
                        PhysicalKeyboardKey.gameButtonLeft1
                    ),
                    new MapEntry(
                        0x0005ff15,
                        PhysicalKeyboardKey.gameButtonLeft2
                    ),
                    new MapEntry(
                        0x0005ff16,
                        PhysicalKeyboardKey.gameButtonMode
                    ),
                    new MapEntry(
                        0x0005ff17,
                        PhysicalKeyboardKey.gameButtonRight1
                    ),
                    new MapEntry(
                        0x0005ff18,
                        PhysicalKeyboardKey.gameButtonRight2
                    ),
                    new MapEntry(
                        0x0005ff19,
                        PhysicalKeyboardKey.gameButtonSelect
                    ),
                    new MapEntry(
                        0x0005ff1a,
                        PhysicalKeyboardKey.gameButtonStart
                    ),
                    new MapEntry(
                        0x0005ff1b,
                        PhysicalKeyboardKey.gameButtonThumbLeft
                    ),
                    new MapEntry(
                        0x0005ff1c,
                        PhysicalKeyboardKey.gameButtonThumbRight
                    ),
                    new MapEntry(0x0005ff1d, PhysicalKeyboardKey.gameButtonX),
                    new MapEntry(0x0005ff1e, PhysicalKeyboardKey.gameButtonY),
                    new MapEntry(0x0005ff1f, PhysicalKeyboardKey.gameButtonZ),
                    new MapEntry(0x00070000, PhysicalKeyboardKey.usbReserved),
                    new MapEntry(
                        0x00070001,
                        PhysicalKeyboardKey.usbErrorRollOver
                    ),
                    new MapEntry(0x00070002, PhysicalKeyboardKey.usbPostFail),
                    new MapEntry(
                        0x00070003,
                        PhysicalKeyboardKey.usbErrorUndefined
                    ),
                    new MapEntry(0x00070004, PhysicalKeyboardKey.keyA),
                    new MapEntry(0x00070005, PhysicalKeyboardKey.keyB),
                    new MapEntry(0x00070006, PhysicalKeyboardKey.keyC),
                    new MapEntry(0x00070007, PhysicalKeyboardKey.keyD),
                    new MapEntry(0x00070008, PhysicalKeyboardKey.keyE),
                    new MapEntry(0x00070009, PhysicalKeyboardKey.keyF),
                    new MapEntry(0x0007000a, PhysicalKeyboardKey.keyG),
                    new MapEntry(0x0007000b, PhysicalKeyboardKey.keyH),
                    new MapEntry(0x0007000c, PhysicalKeyboardKey.keyI),
                    new MapEntry(0x0007000d, PhysicalKeyboardKey.keyJ),
                    new MapEntry(0x0007000e, PhysicalKeyboardKey.keyK),
                    new MapEntry(0x0007000f, PhysicalKeyboardKey.keyL),
                    new MapEntry(0x00070010, PhysicalKeyboardKey.keyM),
                    new MapEntry(0x00070011, PhysicalKeyboardKey.keyN),
                    new MapEntry(0x00070012, PhysicalKeyboardKey.keyO),
                    new MapEntry(0x00070013, PhysicalKeyboardKey.keyP),
                    new MapEntry(0x00070014, PhysicalKeyboardKey.keyQ),
                    new MapEntry(0x00070015, PhysicalKeyboardKey.keyR),
                    new MapEntry(0x00070016, PhysicalKeyboardKey.keyS),
                    new MapEntry(0x00070017, PhysicalKeyboardKey.keyT),
                    new MapEntry(0x00070018, PhysicalKeyboardKey.keyU),
                    new MapEntry(0x00070019, PhysicalKeyboardKey.keyV),
                    new MapEntry(0x0007001a, PhysicalKeyboardKey.keyW),
                    new MapEntry(0x0007001b, PhysicalKeyboardKey.keyX),
                    new MapEntry(0x0007001c, PhysicalKeyboardKey.keyY),
                    new MapEntry(0x0007001d, PhysicalKeyboardKey.keyZ),
                    new MapEntry(0x0007001e, PhysicalKeyboardKey.digit1),
                    new MapEntry(0x0007001f, PhysicalKeyboardKey.digit2),
                    new MapEntry(0x00070020, PhysicalKeyboardKey.digit3),
                    new MapEntry(0x00070021, PhysicalKeyboardKey.digit4),
                    new MapEntry(0x00070022, PhysicalKeyboardKey.digit5),
                    new MapEntry(0x00070023, PhysicalKeyboardKey.digit6),
                    new MapEntry(0x00070024, PhysicalKeyboardKey.digit7),
                    new MapEntry(0x00070025, PhysicalKeyboardKey.digit8),
                    new MapEntry(0x00070026, PhysicalKeyboardKey.digit9),
                    new MapEntry(0x00070027, PhysicalKeyboardKey.digit0),
                    new MapEntry(0x00070028, PhysicalKeyboardKey.enter),
                    new MapEntry(0x00070029, PhysicalKeyboardKey.escape),
                    new MapEntry(0x0007002a, PhysicalKeyboardKey.backspace),
                    new MapEntry(0x0007002b, PhysicalKeyboardKey.tab),
                    new MapEntry(0x0007002c, PhysicalKeyboardKey.space),
                    new MapEntry(0x0007002d, PhysicalKeyboardKey.minus),
                    new MapEntry(0x0007002e, PhysicalKeyboardKey.equal),
                    new MapEntry(0x0007002f, PhysicalKeyboardKey.bracketLeft),
                    new MapEntry(0x00070030, PhysicalKeyboardKey.bracketRight),
                    new MapEntry(0x00070031, PhysicalKeyboardKey.backslash),
                    new MapEntry(0x00070033, PhysicalKeyboardKey.semicolon),
                    new MapEntry(0x00070034, PhysicalKeyboardKey.quote),
                    new MapEntry(0x00070035, PhysicalKeyboardKey.backquote),
                    new MapEntry(0x00070036, PhysicalKeyboardKey.comma),
                    new MapEntry(0x00070037, PhysicalKeyboardKey.period),
                    new MapEntry(0x00070038, PhysicalKeyboardKey.slash),
                    new MapEntry(0x00070039, PhysicalKeyboardKey.capsLock),
                    new MapEntry(0x0007003a, PhysicalKeyboardKey.f1),
                    new MapEntry(0x0007003b, PhysicalKeyboardKey.f2),
                    new MapEntry(0x0007003c, PhysicalKeyboardKey.f3),
                    new MapEntry(0x0007003d, PhysicalKeyboardKey.f4),
                    new MapEntry(0x0007003e, PhysicalKeyboardKey.f5),
                    new MapEntry(0x0007003f, PhysicalKeyboardKey.f6),
                    new MapEntry(0x00070040, PhysicalKeyboardKey.f7),
                    new MapEntry(0x00070041, PhysicalKeyboardKey.f8),
                    new MapEntry(0x00070042, PhysicalKeyboardKey.f9),
                    new MapEntry(0x00070043, PhysicalKeyboardKey.f10),
                    new MapEntry(0x00070044, PhysicalKeyboardKey.f11),
                    new MapEntry(0x00070045, PhysicalKeyboardKey.f12),
                    new MapEntry(0x00070046, PhysicalKeyboardKey.printScreen),
                    new MapEntry(0x00070047, PhysicalKeyboardKey.scrollLock),
                    new MapEntry(0x00070048, PhysicalKeyboardKey.pause),
                    new MapEntry(0x00070049, PhysicalKeyboardKey.insert),
                    new MapEntry(0x0007004a, PhysicalKeyboardKey.home),
                    new MapEntry(0x0007004b, PhysicalKeyboardKey.pageUp),
                    new MapEntry(0x0007004c, PhysicalKeyboardKey.delete),
                    new MapEntry(0x0007004d, PhysicalKeyboardKey.end),
                    new MapEntry(0x0007004e, PhysicalKeyboardKey.pageDown),
                    new MapEntry(0x0007004f, PhysicalKeyboardKey.arrowRight),
                    new MapEntry(0x00070050, PhysicalKeyboardKey.arrowLeft),
                    new MapEntry(0x00070051, PhysicalKeyboardKey.arrowDown),
                    new MapEntry(0x00070052, PhysicalKeyboardKey.arrowUp),
                    new MapEntry(0x00070053, PhysicalKeyboardKey.numLock),
                    new MapEntry(0x00070054, PhysicalKeyboardKey.numpadDivide),
                    new MapEntry(
                        0x00070055,
                        PhysicalKeyboardKey.numpadMultiply
                    ),
                    new MapEntry(
                        0x00070056,
                        PhysicalKeyboardKey.numpadSubtract
                    ),
                    new MapEntry(0x00070057, PhysicalKeyboardKey.numpadAdd),
                    new MapEntry(0x00070058, PhysicalKeyboardKey.numpadEnter),
                    new MapEntry(0x00070059, PhysicalKeyboardKey.numpad1),
                    new MapEntry(0x0007005a, PhysicalKeyboardKey.numpad2),
                    new MapEntry(0x0007005b, PhysicalKeyboardKey.numpad3),
                    new MapEntry(0x0007005c, PhysicalKeyboardKey.numpad4),
                    new MapEntry(0x0007005d, PhysicalKeyboardKey.numpad5),
                    new MapEntry(0x0007005e, PhysicalKeyboardKey.numpad6),
                    new MapEntry(0x0007005f, PhysicalKeyboardKey.numpad7),
                    new MapEntry(0x00070060, PhysicalKeyboardKey.numpad8),
                    new MapEntry(0x00070061, PhysicalKeyboardKey.numpad9),
                    new MapEntry(0x00070062, PhysicalKeyboardKey.numpad0),
                    new MapEntry(0x00070063, PhysicalKeyboardKey.numpadDecimal),
                    new MapEntry(0x00070064, PhysicalKeyboardKey.intlBackslash),
                    new MapEntry(0x00070065, PhysicalKeyboardKey.contextMenu),
                    new MapEntry(0x00070066, PhysicalKeyboardKey.power),
                    new MapEntry(0x00070067, PhysicalKeyboardKey.numpadEqual),
                    new MapEntry(0x00070068, PhysicalKeyboardKey.f13),
                    new MapEntry(0x00070069, PhysicalKeyboardKey.f14),
                    new MapEntry(0x0007006a, PhysicalKeyboardKey.f15),
                    new MapEntry(0x0007006b, PhysicalKeyboardKey.f16),
                    new MapEntry(0x0007006c, PhysicalKeyboardKey.f17),
                    new MapEntry(0x0007006d, PhysicalKeyboardKey.f18),
                    new MapEntry(0x0007006e, PhysicalKeyboardKey.f19),
                    new MapEntry(0x0007006f, PhysicalKeyboardKey.f20),
                    new MapEntry(0x00070070, PhysicalKeyboardKey.f21),
                    new MapEntry(0x00070071, PhysicalKeyboardKey.f22),
                    new MapEntry(0x00070072, PhysicalKeyboardKey.f23),
                    new MapEntry(0x00070073, PhysicalKeyboardKey.f24),
                    new MapEntry(0x00070074, PhysicalKeyboardKey.open),
                    new MapEntry(0x00070075, PhysicalKeyboardKey.help),
                    new MapEntry(0x00070077, PhysicalKeyboardKey.select),
                    new MapEntry(0x00070079, PhysicalKeyboardKey.again),
                    new MapEntry(0x0007007a, PhysicalKeyboardKey.undo),
                    new MapEntry(0x0007007b, PhysicalKeyboardKey.cut),
                    new MapEntry(0x0007007c, PhysicalKeyboardKey.copy),
                    new MapEntry(0x0007007d, PhysicalKeyboardKey.paste),
                    new MapEntry(0x0007007e, PhysicalKeyboardKey.find),
                    new MapEntry(
                        0x0007007f,
                        PhysicalKeyboardKey.audioVolumeMute
                    ),
                    new MapEntry(0x00070080, PhysicalKeyboardKey.audioVolumeUp),
                    new MapEntry(
                        0x00070081,
                        PhysicalKeyboardKey.audioVolumeDown
                    ),
                    new MapEntry(0x00070085, PhysicalKeyboardKey.numpadComma),
                    new MapEntry(0x00070087, PhysicalKeyboardKey.intlRo),
                    new MapEntry(0x00070088, PhysicalKeyboardKey.kanaMode),
                    new MapEntry(0x00070089, PhysicalKeyboardKey.intlYen),
                    new MapEntry(0x0007008a, PhysicalKeyboardKey.convert),
                    new MapEntry(0x0007008b, PhysicalKeyboardKey.nonConvert),
                    new MapEntry(0x00070090, PhysicalKeyboardKey.lang1),
                    new MapEntry(0x00070091, PhysicalKeyboardKey.lang2),
                    new MapEntry(0x00070092, PhysicalKeyboardKey.lang3),
                    new MapEntry(0x00070093, PhysicalKeyboardKey.lang4),
                    new MapEntry(0x00070094, PhysicalKeyboardKey.lang5),
                    new MapEntry(0x0007009b, PhysicalKeyboardKey.abort),
                    new MapEntry(0x000700a3, PhysicalKeyboardKey.props),
                    new MapEntry(
                        0x000700b6,
                        PhysicalKeyboardKey.numpadParenLeft
                    ),
                    new MapEntry(
                        0x000700b7,
                        PhysicalKeyboardKey.numpadParenRight
                    ),
                    new MapEntry(
                        0x000700bb,
                        PhysicalKeyboardKey.numpadBackspace
                    ),
                    new MapEntry(
                        0x000700d0,
                        PhysicalKeyboardKey.numpadMemoryStore
                    ),
                    new MapEntry(
                        0x000700d1,
                        PhysicalKeyboardKey.numpadMemoryRecall
                    ),
                    new MapEntry(
                        0x000700d2,
                        PhysicalKeyboardKey.numpadMemoryClear
                    ),
                    new MapEntry(
                        0x000700d3,
                        PhysicalKeyboardKey.numpadMemoryAdd
                    ),
                    new MapEntry(
                        0x000700d4,
                        PhysicalKeyboardKey.numpadMemorySubtract
                    ),
                    new MapEntry(
                        0x000700d7,
                        PhysicalKeyboardKey.numpadSignChange
                    ),
                    new MapEntry(0x000700d8, PhysicalKeyboardKey.numpadClear),
                    new MapEntry(
                        0x000700d9,
                        PhysicalKeyboardKey.numpadClearEntry
                    ),
                    new MapEntry(0x000700e0, PhysicalKeyboardKey.controlLeft),
                    new MapEntry(0x000700e1, PhysicalKeyboardKey.shiftLeft),
                    new MapEntry(0x000700e2, PhysicalKeyboardKey.altLeft),
                    new MapEntry(0x000700e3, PhysicalKeyboardKey.metaLeft),
                    new MapEntry(0x000700e4, PhysicalKeyboardKey.controlRight),
                    new MapEntry(0x000700e5, PhysicalKeyboardKey.shiftRight),
                    new MapEntry(0x000700e6, PhysicalKeyboardKey.altRight),
                    new MapEntry(0x000700e7, PhysicalKeyboardKey.metaRight),
                    new MapEntry(0x000c0060, PhysicalKeyboardKey.info),
                    new MapEntry(
                        0x000c0061,
                        PhysicalKeyboardKey.closedCaptionToggle
                    ),
                    new MapEntry(0x000c006f, PhysicalKeyboardKey.brightnessUp),
                    new MapEntry(
                        0x000c0070,
                        PhysicalKeyboardKey.brightnessDown
                    ),
                    new MapEntry(
                        0x000c0072,
                        PhysicalKeyboardKey.brightnessToggle
                    ),
                    new MapEntry(
                        0x000c0073,
                        PhysicalKeyboardKey.brightnessMinimum
                    ),
                    new MapEntry(
                        0x000c0074,
                        PhysicalKeyboardKey.brightnessMaximum
                    ),
                    new MapEntry(
                        0x000c0075,
                        PhysicalKeyboardKey.brightnessAuto
                    ),
                    new MapEntry(0x000c0079, PhysicalKeyboardKey.kbdIllumUp),
                    new MapEntry(0x000c007a, PhysicalKeyboardKey.kbdIllumDown),
                    new MapEntry(0x000c0083, PhysicalKeyboardKey.mediaLast),
                    new MapEntry(0x000c008c, PhysicalKeyboardKey.launchPhone),
                    new MapEntry(0x000c008d, PhysicalKeyboardKey.programGuide),
                    new MapEntry(0x000c0094, PhysicalKeyboardKey.exit),
                    new MapEntry(0x000c009c, PhysicalKeyboardKey.channelUp),
                    new MapEntry(0x000c009d, PhysicalKeyboardKey.channelDown),
                    new MapEntry(0x000c00b0, PhysicalKeyboardKey.mediaPlay),
                    new MapEntry(0x000c00b1, PhysicalKeyboardKey.mediaPause),
                    new MapEntry(0x000c00b2, PhysicalKeyboardKey.mediaRecord),
                    new MapEntry(
                        0x000c00b3,
                        PhysicalKeyboardKey.mediaFastForward
                    ),
                    new MapEntry(0x000c00b4, PhysicalKeyboardKey.mediaRewind),
                    new MapEntry(
                        0x000c00b5,
                        PhysicalKeyboardKey.mediaTrackNext
                    ),
                    new MapEntry(
                        0x000c00b6,
                        PhysicalKeyboardKey.mediaTrackPrevious
                    ),
                    new MapEntry(0x000c00b7, PhysicalKeyboardKey.mediaStop),
                    new MapEntry(0x000c00b8, PhysicalKeyboardKey.eject),
                    new MapEntry(
                        0x000c00cd,
                        PhysicalKeyboardKey.mediaPlayPause
                    ),
                    new MapEntry(
                        0x000c00cf,
                        PhysicalKeyboardKey.speechInputToggle
                    ),
                    new MapEntry(0x000c00e5, PhysicalKeyboardKey.bassBoost),
                    new MapEntry(0x000c0183, PhysicalKeyboardKey.mediaSelect),
                    new MapEntry(
                        0x000c0184,
                        PhysicalKeyboardKey.launchWordProcessor
                    ),
                    new MapEntry(
                        0x000c0186,
                        PhysicalKeyboardKey.launchSpreadsheet
                    ),
                    new MapEntry(0x000c018a, PhysicalKeyboardKey.launchMail),
                    new MapEntry(
                        0x000c018d,
                        PhysicalKeyboardKey.launchContacts
                    ),
                    new MapEntry(
                        0x000c018e,
                        PhysicalKeyboardKey.launchCalendar
                    ),
                    new MapEntry(0x000c0192, PhysicalKeyboardKey.launchApp2),
                    new MapEntry(0x000c0194, PhysicalKeyboardKey.launchApp1),
                    new MapEntry(
                        0x000c0196,
                        PhysicalKeyboardKey.launchInternetBrowser
                    ),
                    new MapEntry(0x000c019c, PhysicalKeyboardKey.logOff),
                    new MapEntry(0x000c019e, PhysicalKeyboardKey.lockScreen),
                    new MapEntry(
                        0x000c019f,
                        PhysicalKeyboardKey.launchControlPanel
                    ),
                    new MapEntry(0x000c01a2, PhysicalKeyboardKey.selectTask),
                    new MapEntry(
                        0x000c01a7,
                        PhysicalKeyboardKey.launchDocuments
                    ),
                    new MapEntry(0x000c01ab, PhysicalKeyboardKey.spellCheck),
                    new MapEntry(
                        0x000c01ae,
                        PhysicalKeyboardKey.launchKeyboardLayout
                    ),
                    new MapEntry(
                        0x000c01b1,
                        PhysicalKeyboardKey.launchScreenSaver
                    ),
                    new MapEntry(
                        0x000c01b7,
                        PhysicalKeyboardKey.launchAudioBrowser
                    ),
                    new MapEntry(
                        0x000c01cb,
                        PhysicalKeyboardKey.launchAssistant
                    ),
                    new MapEntry(0x000c0201, PhysicalKeyboardKey.newKey),
                    new MapEntry(0x000c0203, PhysicalKeyboardKey.close),
                    new MapEntry(0x000c0207, PhysicalKeyboardKey.save),
                    new MapEntry(0x000c0208, PhysicalKeyboardKey.print),
                    new MapEntry(0x000c0221, PhysicalKeyboardKey.browserSearch),
                    new MapEntry(0x000c0223, PhysicalKeyboardKey.browserHome),
                    new MapEntry(0x000c0224, PhysicalKeyboardKey.browserBack),
                    new MapEntry(
                        0x000c0225,
                        PhysicalKeyboardKey.browserForward
                    ),
                    new MapEntry(0x000c0226, PhysicalKeyboardKey.browserStop),
                    new MapEntry(
                        0x000c0227,
                        PhysicalKeyboardKey.browserRefresh
                    ),
                    new MapEntry(
                        0x000c022a,
                        PhysicalKeyboardKey.browserFavorites
                    ),
                    new MapEntry(0x000c022d, PhysicalKeyboardKey.zoomIn),
                    new MapEntry(0x000c022e, PhysicalKeyboardKey.zoomOut),
                    new MapEntry(0x000c0232, PhysicalKeyboardKey.zoomToggle),
                    new MapEntry(0x000c0279, PhysicalKeyboardKey.redo),
                    new MapEntry(0x000c0289, PhysicalKeyboardKey.mailReply),
                    new MapEntry(0x000c028b, PhysicalKeyboardKey.mailForward),
                    new MapEntry(0x000c028c, PhysicalKeyboardKey.mailSend),
                    new MapEntry(
                        0x000c029d,
                        PhysicalKeyboardKey.keyboardLayoutSelect
                    ),
                    new MapEntry(
                        0x000c029f,
                        PhysicalKeyboardKey.showAllWindows
                    ),
                ])
            ))
        )
    );
    public static _debugNames = Unknown;
    public readonly usbHidUsage: number = undefined as any;
    public constructor(usbHidUsage: number) {
        flutter.services.physicalKeyboardKey(this, usbHidUsage);
    }
    public static findKeyByCode(
        usageCode: number
    ): IPhysicalKeyboardKey | undefined {
        return flutter.services.physicalKeyboardKeyFindKeyByCode(usageCode);
    }
    public static knownPhysicalKeys(): IIterable<IPhysicalKeyboardKey> {
        return flutter.services.physicalKeyboardKeyKnownPhysicalKeys();
    }
    private readonly _dart_getDebugName: () => string | undefined =
        undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_debugFillProperties: (
        properties: IDiagnosticPropertiesBuilder
    ) => void = undefined as any;
    private readonly _dart_toStringShort: () => string = undefined as any;
    private readonly _dart_toString: (props: {
        minLevel: DiagnosticLevel;
    }) => string = undefined as any;
    private readonly _dart_toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode = undefined as any;
    public getDebugName(): string | undefined {
        return this._dart_getDebugName();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
    public debugFillProperties(properties: IDiagnosticPropertiesBuilder): void {
        return this._dart_debugFillProperties(properties);
    }
    public toStringShort(): string {
        return this._dart_toStringShort();
    }
    public toString(props: { minLevel?: DiagnosticLevel }): string {
        return this._dart_toString({
            ...toStringDefaultProps,
            ...props,
        });
    }
    public toDiagnosticsNode(props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }): IDiagnosticsNode {
        return this._dart_toDiagnosticsNode(props);
    }
}
const toStringDefaultProps = {
    minLevel: DiagnosticLevel.info,
};
