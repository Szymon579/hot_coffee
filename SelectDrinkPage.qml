import QtQuick 2.15

Rectangle {
    visible: false
    color: "#EEC373"

    MouseArea {
        width: parent.width
        height: parent.height
        onClicked: selectDrinkPage.visible = false
    }

    Rectangle {
        color: "transparent"
        width: parent.width
        height: parent.height



    }

    Image {
        id: emptyCup
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        fillMode: Image.PreserveAspectFit
        width: parent.width * 0.6
        height: parent.height * 0.6
        source: "qrc:/icons/empty_cup.png"
    }

}
