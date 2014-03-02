import QtQuick 2.0

Item {

    id: button
    property alias buttonText: value.text
    opacity: 1
    z: 2

    width: 130
    height: 50

    signal clicked;
    signal exited;
    signal entered;

    Image {
        id: buttonImage
        y: -5
        source: "buttons/MenuBar_off.png"
    }

    Text {
        id: value
        x: 45
        y: 15
//        anchors.verticalCenter: parent.verticalCenter
//        anchors.horizontalCenter: parent.horizontalCenter
        font.bold: true
        color: "white"
    }

    MouseArea {
        anchors.fill: button
        hoverEnabled: true
        onPressed: {
            console.log("clicked");
            buttonImage.source = "buttons/MenuBar_clicked.png"
        }
        onExited: {
            console.log("exited")
            buttonImage.source = "buttons/MenuBar_off.png"
        }
        onEntered: {
            console.log("entered")
            buttonImage.source = "buttons/Menubar_over.png"
        }

    }



}
