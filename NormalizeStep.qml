import QtQuick 2.0

Rectangle {

    id: normstep
    color: "transparent"

    property variant statesNames: ["normstep1","normstep2","normstep3","normstep4","normstep5","normstep6","normstep7","normstep8"]
    property int currentState: 0

    Image {
        id: notepad
        source: "global_images/notepad.png"
        x: 600
        y: 50
    }

    // enter norm menu
    Text {
        id: normstep_text1
        x: notepad.x + 75
        y: notepad.y + 50
        width: notepad.width -100
        wrapMode: Text.WordWrap
        text: "Go to <b>Preparation > Normalise images</b>"
        font.family: "Helevetica"
        font.pointSize: 14
        color: "black"
        lineHeight: 1.2
    }

    Image {
        id: normstep_image1
        source: "normStep/image1.png"
        x: 105
        y: 15
    }

    // select input
    Text {
        id: normstep_text2
        x: normstep_text1.x
        y: normstep_text1.y + normstep_text1.height + 20
        width: notepad.width -100
        wrapMode: Text.WordWrap
        text: "Select the input folder (created in the previous step) <b> clean</b> and click <b>Select Folder</b>."
        font.family: "Helevetica"
        font.pointSize: 14
        color: "black"
        lineHeight: 1.2
        opacity: 0
    }

    Image {
        id: normstep_image2
        source: "normStep/image2.png"
        x: 35
        y: 100
        opacity: 0
    }

    // select output
    Text {
        id: normstep_text3
        x: normstep_text2.x
        y: normstep_text2.y + normstep_text2.height + 20
        width: notepad.width -100
        wrapMode: Text.WordWrap
        text: "Accept the default output folder proposed (<b>normalised</b>) by clicking <b>Current Folder</b>."
        font.family: "Helevetica"
        font.pointSize: 14
        color: "black"
        lineHeight: 1.2
        opacity: 0
    }

    Image {
        id: normstep_image3
        source: "normStep/image3.png"
        x: 35
        y: 100
        opacity: 0
    }

    // select roi ?
    Text {
        id: normstep_text4
        x: normstep_text3.x
        y: normstep_text3.y + normstep_text3.height + 20
        width: notepad.width -100
        wrapMode: Text.WordWrap
        text: "Select <b>Yes</b> to select a <b>Background Region</b>."
        font.family: "Helevetica"
        font.pointSize: 14
        color: "black"
        lineHeight: 1.2
        opacity: 0
    }

    Image {
        id: normstep_image4
        source: "normStep/image4.png"
        x: 250
        y: 205
        opacity: 0
    }

    // selection
    Text {
        id: normstep_text5
        x: normstep_text4.x
        y: normstep_text4.y + normstep_text4.height + 20
        width: notepad.width -100
        wrapMode: Text.WordWrap
        text: "Select a region that <font color='red'><b>does not touch the sample</b></font>.<br>
        1/<b> Click the first corner</b> of the region.<br>
        2/ without releasing the left click,<br>
        3/ move to the opposite corner and <b>release click</b>.<br><br>
        Then click <b>ACCEPT</b>."
        font.family: "Helevetica"
        font.pointSize: 14
        color: "black"
        lineHeight: 1.2
        opacity: 0
    }

    Image {
        id: normstep_image5
        source: "normStep/image5.png"
        x: 50
        y: 50
        opacity: 0
    }

    // ring filter value
    Text {
        id: normstep_text6
        x: normstep_text1.x
        y: normstep_text1.y
        width: notepad.width -100
        wrapMode: Text.WordWrap
        text: "In most of the cases, <b>the default value of 3 is good enough</b>. You may need to come back to this step later
        if you are not satisfied with the level of the rings displayed (should be minimum) or if you see some strange
        artifacts.<br><br>
        <b>Click OK</b> to validate choice."
        font.family: "Helevetica"
        font.pointSize: 14
        color: "black"
        lineHeight: 1.2
        opacity: 0
    }

    Image {
        id: normstep_image6
        source: "normStep/image6.png"
        x: 270
        y: 50
        opacity: 0
    }

    // normalizing and filtering
    Text {
        id: normstep_text7
        x: normstep_text6.x
        y: normstep_text6.y + normstep_text6.height + 20
        width: notepad.width -100
        wrapMode: Text.WordWrap
        text: "Be patient while the program perform the <b>normalization</b><br><br><br>and<br><br><br><b>the filtering of the rings.</b>."
        font.family: "Helevetica"
        font.pointSize: 14
        color: "black"
        lineHeight: 1.2
        opacity: 0
    }

    Image {
        id: normstep_image7
        source: "normStep/image7.png"
        x: 150
        y: 50
        opacity: 0
    }

    Image {
        id: normstep_image8
        source: "normStep/image8.png"
        x: normstep_image7.x
        y: normstep_image7.y + normstep_image7.height + 10
        opacity: 0
    }

    // normalization step done
    Text {
        id: normstep_text8
        x: normstep_text1.x
        y: normstep_text1.y + 28
        width: notepad.width -100
        wrapMode: Text.WordWrap
        text: "<b>Normalization step</b> is done !"
        font.family: "Helevetica"
        font.pointSize: 14
        color: "black"
        lineHeight: 1.2
        opacity: 0
    }

    Image {
        id: normstep_image9
        source: "normStep/image9.png"
        x: 50
        y: 30
        opacity: 0
    }




    // bottom buttons
    Image {
        id: prev
        source: "global_images/prev_off.png"
        anchors.bottom: normstep.bottom
        anchors.left: normstep.left
        opacity: 0
    }

    MouseArea {
        id: prev_mousearea
        anchors.fill: prev
        hoverEnabled: true
        onPressed: {
            prev.source = "global_images/prev_click.png"
            currentState--
            normstep.state = statesNames[currentState]
        }
        onEntered: {
            prev.source = "global_images/prev_on.png"
        }
        onExited: {
            prev.source = "global_images/prev_off.png"
        }
        onReleased: {
            prev.source = "global_images/prev_on.png"
        }
        enabled: false
    }

    Image {
        id: next
        source: "global_images/next_off.png"
        anchors.bottom: normstep.bottom
        anchors.right: normstep.right
    }

    MouseArea {
        id: next_mousearea
        anchors.fill: next
        hoverEnabled: true
        onPressed: {
            next.source = "global_images/next_click.png"
            currentState++
            normstep.state = statesNames[currentState]
        }
        onEntered: {
            next.source = "global_images/next_on.png"
        }
        onExited: {
            next.source = "global_images/next_off.png"
        }
        onReleased: {
            next.source = "global_images/next_on.png"
        }
    }

    // STATES
    states: [
        State {
            name: "normstep1"
            PropertyChanges {
                target: normstep_text1
                opacity: 1
            }
            PropertyChanges {
                target: normstep_image1
                opacity: 1
            }
            PropertyChanges {
                target: prev
                opacity: 0
            }
            PropertyChanges {
                target: prev_mousearea
                enabled: false
            }
        },
        State {
            name: "normstep2"
            PropertyChanges {
                target: normstep_text1
                opacity: 0.5
            }
            PropertyChanges {
                target: normstep_image1
                opacity: 0
            }
            PropertyChanges {
                target: prev
                opacity: 1
            }
            PropertyChanges {
                target: prev_mousearea
                enabled: true
            }
            PropertyChanges {
                target: normstep_text2
                opacity: 1
            }
            PropertyChanges {
                target: normstep_image2
                opacity: 1
            }
        },
        State {
            name: "normstep3"
            PropertyChanges {
                target: normstep_text1
                opacity: 0.5
            }
            PropertyChanges {
                target: normstep_image1
                opacity: 0
            }
            PropertyChanges {
                target: prev
                opacity: 1
            }
            PropertyChanges {
                target: prev_mousearea
                enabled: true
            }
            PropertyChanges {
                target: normstep_text2
                opacity: 0.5
            }
            PropertyChanges {
                target: normstep_text3
                opacity: 1
            }
            PropertyChanges {
                target: normstep_image3
                opacity: 1
            }
        },
        State {
            name: "normstep4"
            PropertyChanges {
                target: normstep_text1
                opacity: 0.5
            }
            PropertyChanges {
                target: normstep_image1
                opacity: 0
            }
            PropertyChanges {
                target: prev
                opacity: 1
            }
            PropertyChanges {
                target: prev_mousearea
                enabled: true
            }
            PropertyChanges {
                target: normstep_text2
                opacity: 0.5
            }
            PropertyChanges {
                target: normstep_text3
                opacity: 0.5
            }
            PropertyChanges {
                target: normstep_text4
                opacity: 1
            }
            PropertyChanges {
                target: normstep_image4
                opacity: 1
            }
        },
        State {
            name: "normstep5"
            PropertyChanges {
                target: normstep_text1
                opacity: 0.5
            }
            PropertyChanges {
                target: normstep_image1
                opacity: 0
            }
            PropertyChanges {
                target: prev
                opacity: 1
            }
            PropertyChanges {
                target: prev_mousearea
                enabled: true
            }
            PropertyChanges {
                target: normstep_text2
                opacity: 0.5
            }
            PropertyChanges {
                target: normstep_text3
                opacity: 0.5
            }
            PropertyChanges {
                target: normstep_text4
                opacity: 0.5
            }
            PropertyChanges {
                target: normstep_text5
                opacity: 1
            }
            PropertyChanges {
                target: normstep_image5
                opacity: 1
            }
        },
        State {
            name: "normstep6"
            PropertyChanges {
                target: normstep_text1
                opacity: 0
            }
            PropertyChanges {
                target: normstep_image1
                opacity: 0
            }
            PropertyChanges {
                target: prev
                opacity: 1
            }
            PropertyChanges {
                target: prev_mousearea
                enabled: true
            }
            PropertyChanges {
                target: normstep_text6
                opacity: 1
            }
            PropertyChanges {
                target: normstep_image6
                opacity: 1
            }
        },
        State {
            name: "normstep7"
            PropertyChanges {
                target: normstep_text1
                opacity: 0
            }
            PropertyChanges {
                target: normstep_image1
                opacity: 0
            }
            PropertyChanges {
                target: prev
                opacity: 1
            }
            PropertyChanges {
                target: prev_mousearea
                enabled: true
            }
            PropertyChanges {
                target: normstep_text6
                opacity: 0.5
            }
            PropertyChanges {
                target: normstep_text7
                opacity: 1
            }
            PropertyChanges {
                target: normstep_image7
                opacity: 1
            }
            PropertyChanges {
                target: normstep_image8
                opacity: 1
            }
        },
        State {
            name: "normstep8"
            PropertyChanges {
                target: normstep_text1
                opacity: 0
            }
            PropertyChanges {
                target: normstep_image1
                opacity: 0
            }
            PropertyChanges {
                target: prev
                opacity: 1
            }
            PropertyChanges {
                target: prev_mousearea
                enabled: true
            }
            PropertyChanges {
                target: normstep_text8
                opacity: 1
            }
            PropertyChanges {
                target: normstep_image9
                opacity: 1
            }
            PropertyChanges {
                target: next
                opacity: 0
            }
            PropertyChanges {
                target: next_mousearea
                enabled: false
            }
        }
    ]

}
