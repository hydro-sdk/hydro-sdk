import { Color } from "../../runtime/dart/ui/color";
import { FontStyle } from "../../runtime/dart/ui/fontStyle";
import { FontWeight } from "../../runtime/dart/ui/fontWeight";
import { CupertinoColors } from "../../runtime/flutter/cupertino/cupertinoColors";
import { TextStyle } from "../../runtime/flutter/painting/textStyle";

export const Styles = {
    productRowItemName: new TextStyle({
        color: Color.fromRGBO(0, 0, 0, 0.8),
        fontSize: 18,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.normal,
    }),

    productRowTotal: new TextStyle({
        color: Color.fromRGBO(0, 0, 0, 0.8),
        fontSize: 18,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.bold,
    }),

    productRowItemPrice: new TextStyle({
        color: new Color(0xFF8E8E93),
        fontSize: 13,
        fontWeight: FontWeight.w300,
    }),

    searchText: new TextStyle({
        color: Color.fromRGBO(0, 0, 0, 1),
        fontSize: 14,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.normal,
    }),

    deliveryTimeLabel: new TextStyle({
        color: new Color(0xFFC2C2C2),
        fontWeight: FontWeight.w300,
    }),

    deliveryTime: new TextStyle({
        color: CupertinoColors.inactiveGray.color,
    }),

    productRowDivider: new Color(0xFFD9D9D9),

    scaffoldBackground: new Color(0xfff0f0f0),

    searchBackground: new Color(0xffe0e0e0),

    searchCursorColor: Color.fromRGBO(0, 122, 255, 1),

    searchIconColor: Color.fromRGBO(128, 128, 128, 1),
}
