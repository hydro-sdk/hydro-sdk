import { Color } from "../../runtime/dart/ui/color";

export const MyColors = {
    darkBlue: new Color(0xff2446a6),
    red: new Color(0xfffa9d85)
};

export const User = {
    fullname: "Cybdom Tech",
    profilePicture: "https://cdn.pixabay.com/photo/2019/11/19/21/44/animal-4638598_960_720.jpg"
};

class DestinationModel {
    public placeName: string;
    public imageUrl: string;
    public date: string;
    public hotelName: string;
    public constructor(props: {
        placeName: string;
        imageUrl: string;
        date: string;
        hotelName: string;
    }) {
        this.placeName = props.placeName;
        this.imageUrl = props.imageUrl;
        this.date = props.date;
        this.hotelName = props.hotelName;
    }
}

export const destinationList: Array<DestinationModel> = [
    new DestinationModel({
        date: "22 Nov, 2019",
        hotelName: "InterContinental",
        imageUrl: "https://cdn.pixabay.com/photo/2014/09/11/18/23/london-441853_960_720.jpg",
        placeName: "London",
    }),
    new DestinationModel({
        date: "22 Nov, 2019",
        hotelName: "Grand Hyatt",
        imageUrl: "https://cdn.pixabay.com/photo/2013/08/09/05/58/kuala-lumpur-170985_960_720.jpg",
        placeName: "Kuala Lumpur",
    }),
    new DestinationModel({
        date: "28 Nov, 2019",
        hotelName: "Hotel Le Littre",
        imageUrl: "https://cdn.pixabay.com/photo/2019/08/19/15/13/eiffel-tower-4416700_960_720.jpg",
        placeName: "Paris",
    })
];