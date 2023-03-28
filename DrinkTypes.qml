import QtQuick 2.15

Rectangle {

    property string src: ""
    property string name: ""

    width: view.width
    height: view.height
    color: "#EEC373"

    Rectangle {
        id: coffeeImgHolder
        width: parent.width
        height: parent.height * 0.8
        anchors.top: parent.top
        color: "#EEC373"
        Image {
            id: coffeeImg
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            fillMode: Image.PreserveAspectFit
            width: parent.width * 0.75
            height: parent.height * 0.75
            source: src
        }
    }

    Rectangle {
        id: coffeeNameHolder
        width: parent.width
        color: "#EEC373"
        anchors.top: coffeeImgHolder.bottom
        anchors.bottom: parent.bottom

        Text {
            text: name
            color: "black"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            font.pointSize: parent.width * 0.08
            font.bold: true
        }
    }

}
