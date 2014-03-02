import QtQuick 2.0
import QtQuick.Window 2.0

Window {
    id: window
    width: 900
    height: 900
    title: "Octopus Tutorial - Step by Step"

    Image {
        id: desktop
        x: -1
        source: "images/desktop.png"
        z: 0
    }

    Rectangle {
        id: toolbar
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.right: parent.right
        height: 50
        width: parent.width
        color: "transparent"

        Rectangle {

            width: window.width
            height: toolbar.height
            z: 1
            color: "transparent"
//            color: "blue"
            //            opacity: 0.4
//            gradient: Gradient {
//                GradientStop { position: 0.1; color: "blue" }
//                GradientStop { position: 0.8; color: "white" }
//                GradientStop { position: 0.9; color: "blue" }
//            }

            Flickable {

                x: 10
                anchors.top: toolbar.top
                anchors.left: toolbar.left
                anchors.right: toolbar.right
                height: toolbar.height
                width: toolbar.width
                flickableDirection: Flickable.HorizontalFlick
                contentHeight: toolbar.height
                contentWidth: 1000
                boundsBehavior: Flickable.StopAtBounds

                ToolbarButton { buttonText: "INTRO"; x: -10}
                ToolbarButton { buttonText: "STEP 1"; x: {10+130} }
                ToolbarButton { buttonText: "STEP 2"; x: {10+2*130} }
                ToolbarButton { buttonText: "STEP 3"; x: {10+3*130} }
                ToolbarButton { buttonText: "STEP 4"; x: {10+4*130} }
                ToolbarButton { buttonText: "STEP 5"; x: {10+5*130} }
                ToolbarButton { buttonText: "STEP 6"; x: {10+6*130} }
            }
        }
    }

}

