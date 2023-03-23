import QtQuick 2.15
import QtQuick.Controls 2.15



Rectangle {
    visible: false
    color: "#EEC373"
    width: parent.width
    height: parent.height

    SwipeView {
        id: view
        width: parent.width
        height: parent.height * 0.75
        anchors.top: parent.top
        currentIndex: 1

        Rectangle {
            width: view.width
            height: view.height
            color: "red"
        }

        Rectangle {
            width: view.width
            height: view.height
            color: "green"
        }

        Rectangle {
            width: view.width
            height: view.height
            color: "blue"
        }

//        DrinkTypes {
//            id: page1
//            color: "red"
//        }

//        DrinkTypes {
//            id: page2
//            color: "green"
//        }

//        DrinkTypes {
//            id: page3
//            color: "blue"
//        }
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

//        Button {
//            id: buttonLeft
//            text: "left"
//            height: parent.height
//            width: parent.width / 2
//            anchors.left: parent.left
//            onClicked: view.decrementCurrentIndex()
//        }

//        Button {
//            id: buttonRigth
//            text: "right"
//            height: parent.height
//            width: parent.width / 2
//            anchors.right: parent.right
//            onClicked: view.incrementCurrentIndex()
//        }
    }


//    Image {
//        id: emptyCup
//        anchors.horizontalCenter: parent.horizontalCenter
//        anchors.verticalCenter: parent.verticalCenter
//        fillMode: Image.PreserveAspectFit
//        width: parent.width * 0.6
//        height: parent.height * 0.6
//        source: "qrc:/icons/empty_cup.png"
//    }

}
