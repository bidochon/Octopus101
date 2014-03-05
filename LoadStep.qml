import QtQuick 2.0

Rectangle {

    id: loadstep
    color: "transparent"

    property variant loadstep_statesNames: ["loadstep1","loadstep2","loadstep3"]
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

    Text {
        id: loadstep_text2
        x: loadstep_text1.x
        y: loadstep_text1.y + loadstep_text1.height + 10
        width: notepad.width -100
        wrapMode: Text.WordWrap
        text: "Select the right folder and click <b>Current Folder</b>."
        font.family: "Helevetica"
        font.pointSize: 14
        color: "black"
        lineHeight: 1.2
        opacity: 0
    }

    Image {
        id: loadstep_image2
        source: "loadstep/image2.png"
        x: 45
        y: 27
        opacity: 0
    }

    Text {
        id: loadstep_text3
        x: loadstep_text2.x
        y: loadstep_text2.y + loadstep_text2.height + 10
        width: notepad.width -100
        wrapMode: Text.WordWrap
        text: "Because Octopus only work with <b>tiff</b> files, the program is going to ask you if you want to convert them to TIFF. Click <b>OK</b>.<br><br><br>
                 - Select the same folder again (that contain all your data)<br> by selecting <b>Current Folder</b><br><br>
                 - Then accept the proposed folder name (<b>Converted</b>) by selecting <b>Current Folder</b>"
        font.family: "Helevetica"
        font.pointSize: 14
        color: "black"
        lineHeight: 1.2
        opacity: 0
    }

    Image {
        id: loadstep_image3
        source: "loadstep/image3.png"
        x: 65
        y: 67
        opacity: 0
    }

    Image {
        id: loadstep_image4
        source: "loadstep/image4.png"
        x: 35
        y: loadstep_image3.y+loadstep_image3.height + 10
        opacity: 0
    }


    // bottom buttons
    Image {
        id: loadstep_prev
        source: "global_images/prev_off.png"
        anchors.bottom: loadstep.bottom
        anchors.left: loadstep.left
        opacity: 0
    }

    MouseArea {
        id: loadstep_prev_mousearea
        anchors.fill: loadstep_prev
        hoverEnabled: true
        onPressed: {
            loadstep_prev.source = "global_images/prev_click.png"
            loadstep_currentState--
            loadstep.state = loadstep_statesNames[loadstep_currentState]
        }
        onEntered: {
            loadstep_prev.source = "global_images/prev_on.png"
        }
        onExited: {
            loadstep_prev.source = "global_images/prev_off.png"
        }
        onReleased: {
            loadstep_prev.source = "global_images/prev_on.png"
        }
        enabled: false
    }

    Image {
        id: loadstep_next
        source: "global_images/next_off.png"
        anchors.bottom: loadstep.bottom
        anchors.right: loadstep.right
    }

    MouseArea {
        id: loadstep_next_mousearea
        anchors.fill: loadstep_next
        hoverEnabled: true
        onPressed: {
            loadstep_next.source = "global_images/next_click.png"
            loadstep_currentState++
            loadstep.state = loadstep_statesNames[loadstep_currentState]
        }
        onEntered: {
            loadstep_next.source = "global_images/next_on.png"
        }
        onExited: {
            loadstep_next.source = "global_images/next_off.png"
        }
        onReleased: {
            loadstep_next.source = "global_images/next_on.png"
        }
    }

    // STATES
    states: [
        State {
            name: "loadstep1"
            PropertyChanges {
                target: loadstep_text1
                opacity: 1
            }
            PropertyChanges {
                target: loadstep_image1
                opacity: 1
            }
            PropertyChanges {
                target: loadstep_prev
                opacity: 0
            }
            PropertyChanges {
                target: loadstep_prev_mousearea
                enabled: false
            }
        },
        State {
            name: "loadstep2"
            PropertyChanges {
                target: loadstep_text1
                opacity: 0.5
            }
            PropertyChanges {
                target: loadstep_text2
                opacity: 1
            }
            PropertyChanges {
                target: loadstep_image1
                opacity: 0
            }
            PropertyChanges {
                target: loadstep_prev
                opacity: 1
            }
            PropertyChanges {
                target: loadstep_prev_mousearea
                enabled: true
            }
            PropertyChanges {
                target: loadstep_image2
                opacity: 1
            }
        },
        State {
            name: "loadstep3"
            PropertyChanges {
                target: loadstep_text1
                opacity: 0.5
            }
            PropertyChanges {
                target: loadstep_image1
                opacity: 0
            }
            PropertyChanges {
                target: loadstep_prev
                opacity: 1
            }
            PropertyChanges {
                target: loadstep_prev_mousearea
                enabled: true
            }
            PropertyChanges {
                target: loadstep_image2
                opacity: 0
            }
            PropertyChanges {
                target: loadstep_text2
                opacity: 0.5
            }
            PropertyChanges {
                target: loadstep_text3
                opacity: 1
            }
            PropertyChanges {
                target: loadstep_image3
                opacity: 1
            }
            PropertyChanges {
                target: loadstep_image4
                opacity: 1
            }
        }
    ]

}
