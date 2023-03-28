import QtQuick 2.15

Rectangle {
    visible: false
    color: "#EEC373"
    width: parent.width
    height: parent.height

    Rectangle {
        id: backArrow
        color: "#CA965C"
        width: parent.width
        height: parent.height * 0.1
        anchors.top: parent.top

        MouseArea {
            height: parent.height
            width: parent.height
            anchors.left: parent.left
            cursorShape: Qt.PointingHandCursor
            onClicked: {
                cover.height = cover.parent.height
                preparingPage.visible = false
            }
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

    //main rect
    Rectangle {
        id: preparingAnimation
        color: "#EEC373"
        width: parent.width
        anchors.top: backArrow.bottom
        anchors.bottom: preparingText.top

        Rectangle {
            color: "transparent"
            width: parent.width * 0.8
            height: parent.height * 0.8
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter

            Image {
                id: selectedCoffeeImg
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                fillMode: Image.PreserveAspectFit
                width: parent.width
                height: parent.height
                source: "qrc:/icons/latte.png"
            }

            Rectangle {
                id: cover
                color: "#EEC373"
                anchors.top: parent.top
                width: parent.width
                height: parent.height


                PropertyAnimation {
                    id: animation
                    target: cover
                    duration: 6000
                    properties: "height"; to: 0;
                    alwaysRunToEnd: false

                }

                MouseArea {
                    anchors.fill: parent;
                    onClicked: animation.running = true
                    cursorShape: Qt.PointingHandCursor
                }
            }

            Image {
                id: emptyCupImg
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                fillMode: Image.PreserveAspectFit
                width: parent.width
                height: parent.height
                source: "qrc:/icons/empty_cup.png"
            }

        }

    }

    Rectangle {
        id: preparingText
        color: "#CA965C"
        width: parent.width
        height: parent.height * 0.2
        anchors.bottom: parent.bottom


        Text {
            text: animation.stopped() ? "Preparing..." : "Ready!"
            color: "black"//"#EEC373"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            font.pointSize: parent.width * 0.1
            font.bold: true

        }


    }


}
