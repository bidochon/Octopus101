import QtQuick 2.0
import QtQuick.Window 2.0

Window {
    id: window
    width: 1100
    height: 900
    minimumHeight: 900
    minimumWidth: 950
    title: "Octopus Tutorial - Step by Step"

    Rectangle {
        id: windowrectangle
        color: "transparent"
        width: window.width
        height: window.height

        // desktop image
        Image {
            source: "images/desktop.png"
            z: 0
            x: -1
        }

        IntroStep {
            id: introstep
            height: window.height - topmenu.height
            width: window.width
            anchors.top: topmenu.bottom
            opacity: 1
        }

        PreparationStep {
            id: preparationstep
            height: window.height - topmenu.height
            width: window.width
            anchors.top: topmenu.bottom
            opacity: 0
        }


        // make sure this stay on top
        TopMenu{
            id: topmenu
            width: parent.width
            height: 80
        }

        transitions: [
            Transition {
                NumberAnimation { target: introstep
                    property: "opacity"
                    duration: 500
                }
                NumberAnimation { target: topmenu
                    property: "opacity"
                    duration: 500
                }
            }
        ]

        states: [
            State {
                name: "intro"
                PropertyChanges {
                    target: introstep
                    opacity: 1
                }
                PropertyChanges {
                    target: topmenu
                    opacity: 0
                }
                PropertyChanges {
                    target: topmenu
                    opacity: 1
                }
            },
            State {
                name: "prepa"
                PropertyChanges {
                    target: introstep
                    opacity: 0
                }
                PropertyChanges {
                    target: topmenu
                    opacity: 1
                }
                PropertyChanges {
                    target: topmenu
                    opacity: 1
                }
            }
        ]

    }
}
