import QtQuick 2.15

Rectangle {
    visible: false
    color: "#EEC373"
    width: parent.width
    height: parent.height

    Rectangle {
        id: topBar
        color: "#CA965C"
        width: parent.width
        height: parent.height * 0.1
        anchors.top: parent.top

        MouseArea {
            height: parent.height
            width: parent.height
            anchors.left: parent.left
            cursorShape: Qt.PointingHandCursor
            onClicked: preparingPage.visible = false
            Image {
                width: parent.width * 0.7
                height: parent.height * 0.7
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                fillMode: Image.PreserveAspectFit
                source: "qrc:/icons/back_arrow.png"
            }
        }
    }
}
