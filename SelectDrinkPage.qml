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
            id: returnButton
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

        //sugar slider
        Rectangle {
            id: sugarSlider
            height: parent.height
            anchors.left: returnButton.right
            anchors.right: sugarIcon.left
            color: "transparent"
            Slider {
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                width: parent.width * 0.8

                handle: Rectangle {
                        x: control.leftPadding + control.visualPosition * (control.availableWidth - width)
                        y: control.topPadding + control.availableHeight / 2 - height / 2
                        implicitWidth: 26
                        implicitHeight: 26
                        radius: 13
                        color: control.pressed ? "#f0f0f0" : "#f6f6f6"
                        border.color: "#bdbebf"
                    }

                from: 0
                to: 4
                stepSize: 1
                value: 2
                snapMode: Slider.SnapOnRelease


            }
        }

        Rectangle {
            id: sugarIcon
            height: parent.height
            width: parent.height
            anchors.right: parent.right
            color: "transparent"
            Image {
                width: parent.width * 0.9
                height: parent.height * 0.9
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                fillMode: Image.PreserveAspectFit
                source: "qrc:/icons/sugar_cubes.png"
            }
        }
    }

    SwipeView {
        id: view
        width: parent.width
        //height: parent.height * 0.75
        anchors.top: topBar.bottom
        anchors.bottom: swipeViewControls.top
        currentIndex: 0


        DrinkTypes {
            src: "qrc:/icons/espresso.png"
            name: "Espresso"
        }

        DrinkTypes {
            src: "qrc:/icons/latte.png"
            name: "Latte"
        }

        DrinkTypes {
            src: "qrc:/icons/flat_white.png"
            name: "Flat White"
        }

        DrinkTypes {
            src: "qrc:/icons/cappuccino.png"
            name: "Cappuccino"
        }

    } //swipeView

    PageIndicator {
        id: indicator

            count: view.count
            currentIndex: view.currentIndex
            visible: false
            anchors.bottom: view.bottom
            anchors.horizontalCenter: parent.horizontalCenter

    }

    Rectangle {
        id: swipeViewControls
        color: "#CA965C"
        width: parent.width
        height: parent.height * 0.2
        anchors.bottom: parent.bottom

        Rectangle {
            id: leftButton
            color: "transparent"
            height: parent.height
            width: parent.width / 3
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
                cursorShape: Qt.PointingHandCursor
                onClicked: view.decrementCurrentIndex()
            }

        }

        Rectangle {
            id: acceptButton
            color: "transparent"
            height: parent.height
            width: parent.width / 3
            anchors.horizontalCenter: parent.horizontalCenter
            Image {
                id: acceptImg
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                fillMode: Image.PreserveAspectFit
                width: parent.width * 0.75
                height: parent.height * 0.75
                source: "qrc:/icons/confirm_circle.png"
            }

            MouseArea {
                anchors.fill: parent
                cursorShape: Qt.PointingHandCursor
                onClicked: preparingPage.visible = true
            }

        }

        Rectangle {
            id: rightButton
            color: "transparent"
            height: parent.height
            width: parent.width / 3
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
                cursorShape: Qt.PointingHandCursor
                onClicked: view.incrementCurrentIndex()
            }

        }
    }

}
