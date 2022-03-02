import { SystemMouseCursor } from "./systemMouseCursor";
declare const flutter: {
    services: {
        systemMouseCursorsNone: (this: void) => ISystemMouseCursor;
        systemMouseCursorsBasic: (this: void) => ISystemMouseCursor;
        systemMouseCursorsClick: (this: void) => ISystemMouseCursor;
        systemMouseCursorsForbidden: (this: void) => ISystemMouseCursor;
        systemMouseCursorsWait: (this: void) => ISystemMouseCursor;
        systemMouseCursorsProgress: (this: void) => ISystemMouseCursor;
        systemMouseCursorsContextMenu: (this: void) => ISystemMouseCursor;
        systemMouseCursorsHelp: (this: void) => ISystemMouseCursor;
        systemMouseCursorsText: (this: void) => ISystemMouseCursor;
        systemMouseCursorsVerticalText: (this: void) => ISystemMouseCursor;
        systemMouseCursorsCell: (this: void) => ISystemMouseCursor;
        systemMouseCursorsPrecise: (this: void) => ISystemMouseCursor;
        systemMouseCursorsMove: (this: void) => ISystemMouseCursor;
        systemMouseCursorsGrab: (this: void) => ISystemMouseCursor;
        systemMouseCursorsGrabbing: (this: void) => ISystemMouseCursor;
        systemMouseCursorsNoDrop: (this: void) => ISystemMouseCursor;
        systemMouseCursorsAlias: (this: void) => ISystemMouseCursor;
        systemMouseCursorsCopy: (this: void) => ISystemMouseCursor;
        systemMouseCursorsDisappearing: (this: void) => ISystemMouseCursor;
        systemMouseCursorsAllScroll: (this: void) => ISystemMouseCursor;
        systemMouseCursorsResizeLeftRight: (this: void) => ISystemMouseCursor;
        systemMouseCursorsResizeUpDown: (this: void) => ISystemMouseCursor;
        systemMouseCursorsResizeUpLeftDownRight: (
            this: void
        ) => ISystemMouseCursor;
        systemMouseCursorsResizeUpRightDownLeft: (
            this: void
        ) => ISystemMouseCursor;
        systemMouseCursorsResizeUp: (this: void) => ISystemMouseCursor;
        systemMouseCursorsResizeDown: (this: void) => ISystemMouseCursor;
        systemMouseCursorsResizeLeft: (this: void) => ISystemMouseCursor;
        systemMouseCursorsResizeRight: (this: void) => ISystemMouseCursor;
        systemMouseCursorsResizeUpLeft: (this: void) => ISystemMouseCursor;
        systemMouseCursorsResizeUpRight: (this: void) => ISystemMouseCursor;
        systemMouseCursorsResizeDownLeft: (this: void) => ISystemMouseCursor;
        systemMouseCursorsResizeDownRight: (this: void) => ISystemMouseCursor;
        systemMouseCursorsResizeColumn: (this: void) => ISystemMouseCursor;
        systemMouseCursorsResizeRow: (this: void) => ISystemMouseCursor;
        systemMouseCursorsZoomIn: (this: void) => ISystemMouseCursor;
        systemMouseCursorsZoomOut: (this: void) => ISystemMouseCursor;
    };
};
export interface ISystemMouseCursors {}
export class SystemMouseCursors {
    public static none = flutter.services.systemMouseCursorsNone();
    public static basic = flutter.services.systemMouseCursorsBasic();
    public static click = flutter.services.systemMouseCursorsClick();
    public static forbidden = flutter.services.systemMouseCursorsForbidden();
    public static wait = flutter.services.systemMouseCursorsWait();
    public static progress = flutter.services.systemMouseCursorsProgress();
    public static contextMenu =
        flutter.services.systemMouseCursorsContextMenu();
    public static help = flutter.services.systemMouseCursorsHelp();
    public static text = flutter.services.systemMouseCursorsText();
    public static verticalText =
        flutter.services.systemMouseCursorsVerticalText();
    public static cell = flutter.services.systemMouseCursorsCell();
    public static precise = flutter.services.systemMouseCursorsPrecise();
    public static move = flutter.services.systemMouseCursorsMove();
    public static grab = flutter.services.systemMouseCursorsGrab();
    public static grabbing = flutter.services.systemMouseCursorsGrabbing();
    public static noDrop = flutter.services.systemMouseCursorsNoDrop();
    public static alias = flutter.services.systemMouseCursorsAlias();
    public static copy = flutter.services.systemMouseCursorsCopy();
    public static disappearing =
        flutter.services.systemMouseCursorsDisappearing();
    public static allScroll = flutter.services.systemMouseCursorsAllScroll();
    public static resizeLeftRight =
        flutter.services.systemMouseCursorsResizeLeftRight();
    public static resizeUpDown =
        flutter.services.systemMouseCursorsResizeUpDown();
    public static resizeUpLeftDownRight =
        flutter.services.systemMouseCursorsResizeUpLeftDownRight();
    public static resizeUpRightDownLeft =
        flutter.services.systemMouseCursorsResizeUpRightDownLeft();
    public static resizeUp = flutter.services.systemMouseCursorsResizeUp();
    public static resizeDown = flutter.services.systemMouseCursorsResizeDown();
    public static resizeLeft = flutter.services.systemMouseCursorsResizeLeft();
    public static resizeRight =
        flutter.services.systemMouseCursorsResizeRight();
    public static resizeUpLeft =
        flutter.services.systemMouseCursorsResizeUpLeft();
    public static resizeUpRight =
        flutter.services.systemMouseCursorsResizeUpRight();
    public static resizeDownLeft =
        flutter.services.systemMouseCursorsResizeDownLeft();
    public static resizeDownRight =
        flutter.services.systemMouseCursorsResizeDownRight();
    public static resizeColumn =
        flutter.services.systemMouseCursorsResizeColumn();
    public static resizeRow = flutter.services.systemMouseCursorsResizeRow();
    public static zoomIn = flutter.services.systemMouseCursorsZoomIn();
    public static zoomOut = flutter.services.systemMouseCursorsZoomOut();
}
