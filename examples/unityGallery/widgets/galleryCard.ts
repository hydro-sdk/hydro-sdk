import { StatelessWidget } from "../../../runtime/flutter/widgets/statelessWidget";
import { Container } from "../../../runtime/flutter/widgets/container";
import { BoxDecoration } from "../../../runtime/flutter/painting/boxDecoration";
import { BorderRadius } from "../../../runtime/flutter/painting/borderRadius";
import { Colors } from "../../../runtime/flutter/material/colors";
import { Center } from "../../../runtime/flutter/widgets/center";
import { Column } from "../../../runtime/flutter/widgets/column";
import { MainAxisAlignment } from "../../../runtime/flutter/widgets/mainAxisAlignment";
import { Icon } from "../../../runtime/flutter/widgets/icon";
import { Icons } from "../../../runtime/flutter/material/icons";
import { Text } from "../../../runtime/flutter/widgets/text";
import { TextStyle } from "../../../runtime/flutter/painting/textStyle";
import { FontWeight } from "../../../runtime/dart/ui/fontWeight";
import { IconData } from "../../../runtime/flutter/widgets/iconData";
import { GestureDetector } from "../../../runtime/flutter/widgets/gestureDetector";

interface GalleryCardProps {
    name: string;
    onTap: () => void;
    icon: IconData;
}

export class GalleryCard extends StatelessWidget {
    public props: GalleryCardProps;
    public constructor(props: GalleryCardProps) {
        super();

        this.props = props;
    }

    public build() {
        return new GestureDetector({
            onTap: this.props.onTap,
            child:
                new Container({
                    height: 200,
                    width: 120,
                    decoration: new BoxDecoration({
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white
                    }),
                    child: new Center({
                        child: new Column({
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                                new Icon(this.props.icon, { size: 100 }),
                                new Text(this.props.name, {
                                    style: new TextStyle({
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18
                                    })
                                }),
                            ]
                        })
                    })
                })
        });
    }
}