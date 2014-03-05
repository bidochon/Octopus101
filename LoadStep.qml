import QtQuick 2.0

Rectangle {

    id: loadstep
    color: "transparent"

    property variant loadstep_statesNames: ["loadstep1","loadstep2"]
    property int loadstep_currentState: 0

    Image {
        id: notepad
        source: "global_images/notepad.png"
        x: 600
        y: 50
    }

    // import the data
    Text {
        id: loadstep_text1
        x: notepad.x + 75
        y: notepad.y + 58
        width: notepad.width -100
        wrapMode: Text.WordWrap
        text: "Now we need to <b>import the data</b> into Octopus."
        font.family: "Helevetica"
        font.pointSize: 14
        color: "black"
        lineHeight: 1.2
    }

    Image {
        id: loadstep_image1
        source: "loadstep/image1.png"
        x: 55
        y: 57
    }


//    // bottom buttons
//    Image {
//        id: loadstep_prev
//        source: "global_images/prev_off.png"
//        anchors.bottom: loadstep.bottom
//        anchors.left: loadstep.left
//        opacity: 1
//    }

//    MouseArea {
//        id: loadstep_prev_mousearea
//        anchors.fill: loadstep_prev
//        hoverEnabled: true
//        onPressed: {
//            loadstep_prev.source = "global_images/prev_click.png"
//            loadstep_currentState--
//            loadstep.state = loadstep_statesNames[loadstep_currentState]
//        }
//        onEntered: {
//            loadstep_prev.source = "global_images/prev_on.png"
//        }
//        onExited: {
//            loadstep_prev.source = "global_images/prev_off.png"
//        }
//        onReleased: {
//            loadstep_prev.source = "global_images/prev_on.png"
//        }
//        enabled: true
//    }

//    Image {
//        id: loadstep_next
//        source: "global_images/next_off.png"
//        anchors.bottom: loadstep.bottom
//        anchors.right: loadstep.right
//    }

//    MouseArea {
//        id: loadstep_next_mousearea
//        anchors.fill: loadstep_next
//        hoverEnabled: true
//        onPressed: {
//            loadstep_next.source = "global_images/next_click.png"
//            loadstep_currentState++
//            loadstep.state = loadstep_statesNames[loadstep_currentState]
//        }
//        onEntered: {
//            loadstep_next.source = "global_images/next_on.png"
//        }
//        onExited: {
//            loadstep_next.source = "global_images/next_off.png"
//        }
//        onReleased: {
//            loadstep_next.source = "global_images/next_on.png"
//        }
//    }

//    // STATES
//    states: [
//        State {
//            name: "loadstep1"
//            PropertyChanges {
//                target: loadstep_text1
//                opacity: 1
//            }
//            PropertyChanges {
//                target: loadstep_image1
//                opacity: 1
//            }
//            PropertyChanges {
//                target: prev
//                opacity: 0
//            }
//            PropertyChanges {
//                target: prev_mousearea
//                enabled: false
//            }
//        },
//        State {
//            name: "loadstep2"
//            PropertyChanges {
//                target: loadstep_text1
//                opacity: 0.5
//            }
//            PropertyChanges {
//                target: loadstep_image1
//                opacity: 0
//            }
//            PropertyChanges {
//                target: prev
//                opacity: 1
//            }
//            PropertyChanges {
//                target: prev_mousearea
//                enabled: true
//            }
//        }
//    ]

}
