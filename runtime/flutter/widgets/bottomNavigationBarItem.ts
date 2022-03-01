
import { IWidget } from "./widget";
import { IColor } from "../../dart/ui/color";
declare const flutter: {
widgets: {
bottomNavigationBarItem: (this: void, bottomNavigationBarItem: IBottomNavigationBarItem, props : {  activeIcon? : IWidget | undefined, backgroundColor? : IColor | undefined, label? : string | undefined, title? : IWidget | undefined, tooltip? : string | undefined, icon : IWidget,}) => IBottomNavigationBarItem
}
};
export interface IBottomNavigationBarItem


{
icon: IWidget;
activeIcon: IWidget;
title: IWidget | undefined;
label: string | undefined;
backgroundColor: IColor | undefined;
tooltip: string | undefined;
}export class BottomNavigationBarItem


{    public readonly icon: IWidget = undefined as any;
    public readonly activeIcon: IWidget = undefined as any;
    public readonly title: IWidget | undefined = undefined as any;
    public readonly label: string | undefined = undefined as any;
    public readonly backgroundColor: IColor | undefined = undefined as any;
    public readonly tooltip: string | undefined = undefined as any;
public constructor( props : {  activeIcon? : IWidget | undefined, backgroundColor? : IColor | undefined, label? : string | undefined, title? : IWidget | undefined, tooltip? : string | undefined, icon : IWidget,}){
flutter.widgets.bottomNavigationBarItem(this, props);}
}
