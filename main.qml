import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    id: mainWindow
    width: 500
    height: 700
    visible: true
    title: qsTr("Hot Coffee")


    Rectangle {
        id: startImgRect
        color: "#EEC373"
        anchors.top: parent.top
        width: parent.width
        height: parent.height * 0.75

        Image {
            id: coffeBeans
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            fillMode: Image.PreserveAspectFit
            width: parent.width * 0.8
            height: parent.height * 0.8
            source: "qrc:/icons/coffee-beans.png"
        }
    }

    Rectangle {
        id: clickTextRect
        color: "#CA965C"//"#EEC373"
        width: parent.width
        anchors.top: startImgRect.bottom
        anchors.bottom: parent.bottom

        MouseArea {
            width: parent.width
            height: parent.height
            cursorShape: Qt.PointingHandCursor
            onClicked: selectDrinkPage.visible = true

            Text {
                text: "Click to start"
                color: "black"//"#EEC373"
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                font.pointSize: parent.width * 0.1
                //font.bold: true

            }
        }

    }

    SelectDrinkPage {
        id: selectDrinkPage
        width: parent.width
        height: parent.height
    }



}
