import QtQuick 2.0
import QtQuick.Window 2.0

Window {
    id: window
    width: 1100
    height: 1000
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
            source: "global_images/desktop.png"
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
            id: prepastep
            height: window.height - topmenu.height
            width: window.width
            anchors.top: topmenu.bottom
            opacity: 0
            enabled: false
        }

        LoadStep {
            id: loadstep
            height: window.height - topmenu.height
            width: window.width
            anchors.top: topmenu.bottom
            opacity: 0
            enabled: false
        }

        CropStep {
            id: cropstep
            height: window.height - topmenu.height
            width: window.width
            anchors.top: topmenu.bottom
            opacity: 0
            enabled: false
        }

        FilterStep {
            id: filterstep
            height: window.height - topmenu.height
            width: window.width
            anchors.top: topmenu.bottom
            opacity: 0
            enabled: false
        }

        NormalizeStep {
            id: normstep
            height: window.height - topmenu.height
            width: window.width
            anchors.top: topmenu.bottom
            opacity: 0
            enabled: false
        }

        TiltStep {
            id: tiltstep
            height: window.height - topmenu.height
            width: window.width
            anchors.top: topmenu.bottom
            opacity: 0
            enabled: false
        }

        SinogramStep {
            id: sinostep
            height: window.height - topmenu.height
            width: window.width
            anchors.top: topmenu.bottom
            opacity: 0
            enabled: false
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
                NumberAnimation { target: prepastep
                    property: "opacity"
                    duration: 500
                }
                NumberAnimation { target: loadstep
                    property: "opacity"
                    duration: 500
                }
                NumberAnimation { target: cropstep
                    property: "opacity"
                    duration: 500
                }
                NumberAnimation { target: filterstep
                    property: "opacity"
                    duration: 500
                }
                NumberAnimation { target: normstep
                    property: "opacity"
                    duration: 500
                }
                NumberAnimation { target: sinostep
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
                    target: prepastep
                    opacity: 0
                    enabled: false
                }
                PropertyChanges {
                    target: topmenu
                    opacity: 1
                }
                PropertyChanges {
                    target: cropstep
                    opacity: 0
                    enabled: false
                }
            },
            State {
                name: "prepa"
                PropertyChanges {
                    target: introstep
                    opacity: 0
                }
                PropertyChanges {
                    target: prepastep
                    opacity: 1
                    enabled: true
                }
                PropertyChanges {
                    target: topmenu
                    opacity: 1
                }
                PropertyChanges {
                    target: cropstep
                    opacity: 0
                    enabled: false
                }
            },
            State {
                name: "loadstep"
                PropertyChanges {
                    target: introstep
                    opacity: 0
                }
                PropertyChanges {
                    target: prepastep
                    opacity: 0
                    enabled: false
                }
                PropertyChanges {
                    target: loadstep
                    opacity: 1
                    enabled: true
                }
                PropertyChanges {
                    target: topmenu
                    opacity: 1
                }
                PropertyChanges {
                    target: cropstep
                    opacity: 0
                    enabled: false
                }
            },
            State {
                name: "cropstep"
                PropertyChanges {
                    target: introstep
                    opacity: 0
                }
                PropertyChanges {
                    target: prepastep
                    opacity: 0
                    enabled: false
                }
                PropertyChanges {
                    target: loadstep
                    opacity: 0
                    enabled: false
                }
                PropertyChanges {
                    target: cropstep
                    opacity: 1
                    enabled: true
                }
                PropertyChanges {
                    target: topmenu
                    opacity: 1
                }
            },
            State {
                name: "filterstep"
                PropertyChanges {
                    target: introstep
                    opacity: 0
                }
                PropertyChanges {
                    target: prepastep
                    opacity: 0
                    enabled: false
                }
                PropertyChanges {
                    target: loadstep
                    opacity: 0
                    enabled: false
                }
                PropertyChanges {
                    target: cropstep
                    opacity: 0
                    enabled: false
                }
                PropertyChanges {
                    target: filterstep
                    opacity: 1
                    enabled: true
                }
                PropertyChanges {
                    target: topmenu
                    opacity: 1
                }
            },
            State {
                name: "normstep"
                PropertyChanges {
                    target: introstep
                    opacity: 0
                }
                PropertyChanges {
                    target: prepastep
                    opacity: 0
                    enabled: false
                }
                PropertyChanges {
                    target: loadstep
                    opacity: 0
                    enabled: false
                }
                PropertyChanges {
                    target: cropstep
                    opacity: 0
                    enabled: false
                }
                PropertyChanges {
                    target: filterstep
                    opacity: 0
                    enabled: false
                }
                PropertyChanges {
                    target: normstep
                    opacity: 1
                    enabled: true
                }
                PropertyChanges {
                    target: topmenu
                    opacity: 1
                }
            },
            State {
                name: "tiltstep"
                PropertyChanges {
                    target: introstep
                    opacity: 0
                }
                PropertyChanges {
                    target: prepastep
                    opacity: 0
                    enabled: false
                }
                PropertyChanges {
                    target: loadstep
                    opacity: 0
                    enabled: false
                }
                PropertyChanges {
                    target: cropstep
                    opacity: 0
                    enabled: false
                }
                PropertyChanges {
                    target: filterstep
                    opacity: 0
                    enabled: false
                }
                PropertyChanges {
                    target: normstep
                    opacity: 0
                    enabled: false
                }
                PropertyChanges {
                    target: tiltstep
                    opacity: 1
                    enabled: true
                }
                PropertyChanges {
                    target: topmenu
                    opacity: 1
                }
            },
            State {
                name: "sinostep"
                PropertyChanges {
                    target: introstep
                    opacity: 0
                }
                PropertyChanges {
                    target: prepastep
                    opacity: 0
                    enabled: false
                }
                PropertyChanges {
                    target: loadstep
                    opacity: 0
                    enabled: false
                }
                PropertyChanges {
                    target: cropstep
                    opacity: 0
                    enabled: false
                }
                PropertyChanges {
                    target: filterstep
                    opacity: 0
                    enabled: false
                }
                PropertyChanges {
                    target: normstep
                    opacity: 0
                    enabled: false
                }
                PropertyChanges {
                    target: tiltstep
                    opacity: 0
                    enabled: false
                }
                PropertyChanges {
                    target: sinostep
                    opacity: 1
                    enabled: true
                }
                PropertyChanges {
                    target: topmenu
                    opacity: 1
                }
            }
        ]
    }
}
