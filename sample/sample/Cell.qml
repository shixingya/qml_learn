import QtQuick 2.0
import QtQuick.Controls 2.2
Item {

    id:color_container
    property alias cellColor: rectangle.color;
    signal clicked(color cellColor);

    width:40;
    height:25;

    Rectangle {
        id: rectangle;
        border.color: "white";
        anchors.fill: parent;
    }

    MouseArea {
        anchors.fill: parent;
        onClicked: color_container.clicked(color_container.cellColor)
    }
}
