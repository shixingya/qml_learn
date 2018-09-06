import QtQuick 2.4
import QtQuick.Window 2.2
import QtQuick.Controls 2.2

Window {
    id: root
    visible: true
    width: 640
    height: 480
    title: qsTr("这个是标题")
    Image{
        id:bg;
        width:parent.width
        height: parent.height*0.5
        source: "./bg.jpg"
    }
    Text {
        id:helloText
        text: qsTr("Hello World")
        y:bg.y+bg.height+100
        color: "#ff2332";
        font.family: "黑体";
        font.pixelSize: 30;
        anchors.horizontalCenter: parent.horizontalCenter
    }
    Grid {
        id: colorPicker;
        x:4;
        anchors.bottom: parent.bottom;
        anchors.bottomMargin: 4;
        rows:3;
        columns: 3;
        spacing: 3;

        Cell { cellColor: 'red'; onClicked: helloText.color = cellColor; }
        Cell { cellColor: 'green'; onClicked: helloText.color = cellColor; }
        Cell { cellColor: 'blue'; onClicked: helloText.color = cellColor; }
        Cell { cellColor: 'yellow'; onClicked: helloText.color = cellColor; }
        Cell { cellColor: 'steelblue'; onClicked: helloText.color = cellColor; }
        Cell { cellColor: 'black'; onClicked: helloText.color = cellColor; }
    }
}
