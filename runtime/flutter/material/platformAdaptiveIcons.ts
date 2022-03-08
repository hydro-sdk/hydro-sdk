import { IIconData } from "../widgets/iconData";
import { IIcons } from "./icons";
export interface IPlatformAdaptiveIcons extends IIcons {
    getArrowBack: () => IIconData;
    getArrowBackOutlined: () => IIconData;
    getArrowBackRounded: () => IIconData;
    getArrowBackSharp: () => IIconData;
    getArrowForward: () => IIconData;
    getArrowForwardOutlined: () => IIconData;
    getArrowForwardRounded: () => IIconData;
    getArrowForwardSharp: () => IIconData;
    getFlipCamera: () => IIconData;
    getFlipCameraOutlined: () => IIconData;
    getFlipCameraRounded: () => IIconData;
    getFlipCameraSharp: () => IIconData;
    getMore: () => IIconData;
    getMoreOutlined: () => IIconData;
    getMoreRounded: () => IIconData;
    getMoreSharp: () => IIconData;
    getShare: () => IIconData;
    getShareOutlined: () => IIconData;
    getShareRounded: () => IIconData;
    getShareSharp: () => IIconData;
}
