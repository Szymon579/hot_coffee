import QtQuick 2.15
import QtQuick.Controls 2.15


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
            onClicked: selectDrinkPage.visible = false
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

    SwipeView {
        id: view
        width: parent.width
        //height: parent.height * 0.75
        anchors.top: topBar.bottom
        anchors.bottom: swipeViewControls.top
        currentIndex: 1

        Rectangle {
            id: page1
            width: view.width
            height: view.height
            color: "#EEC373"

            Image {
                id: espressoImg
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                fillMode: Image.PreserveAspectFit
                width: parent.width * 0.75
                height: parent.height * 0.75
                source: "qrc:/icons/espresso.png"
            }

        }

        Rectangle {
            id: page2
            width: view.width
            height: view.height
            color: "#EEC373"

            Image {
                id: latteImg
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                fillMode: Image.PreserveAspectFit
                width: parent.width * 0.75
                height: parent.height * 0.75
                source: "qrc:/icons/latte.png"
            }

        }

        Rectangle {
            id: page3
            width: view.width
            height: view.height
            color: "#EEC373"

            Image {
                id: cappuccinoImg
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                fillMode: Image.PreserveAspectFit
                width: parent.width * 0.75
                height: parent.height * 0.75
                source: "qrc:/icons/cappuccino.png"
            }

        }

        Rectangle {
            id: page4
            width: view.width
            height: view.height
            color: "#EEC373"

            Image {
                id: flatWhiteImg
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                fillMode: Image.PreserveAspectFit
                width: parent.width * 0.75
                height: parent.height * 0.75
                source: "qrc:/icons/flat_white.png"
            }

        }

    }

    PageIndicator {
        id: indicator

            count: view.count
            currentIndex: view.currentIndex

            anchors.bottom: view.bottom
            anchors.horizontalCenter: parent.horizontalCenter

    }

    Rectangle {
        id: swipeViewControls
        color: "#CA965C"
        width: parent.width
        height: parent.height * 0.25
        anchors.bottom: parent.bottom

        Rectangle {
            id: leftButton
            color: "transparent"
            height: parent.height
            width: parent.width / 2
            anchors.left: parent.left
            Image {
                id: leftArrowImg
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                fillMode: Image.PreserveAspectFit
                width: parent.width * 0.6
                height: parent.height * 0.6
                source: "qrc:/icons/left-arrow.png"
            }

            MouseArea {
                anchors.fill: parent
                onClicked: view.decrementCurrentIndex()
            }

        }

        Rectangle {
            id: rightButton
            color: "transparent"
            height: parent.height
            width: parent.width / 2
            anchors.right: parent.right
            Image {
                id: rightArrowImg
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                fillMode: Image.PreserveAspectFit
                width: parent.width * 0.6
                height: parent.height * 0.6
                source: "qrc:/icons/right-arrow.png"
            }

            MouseArea {
                anchors.fill: parent
                onClicked: view.incrementCurrentIndex()
            }

        }
    }

}
