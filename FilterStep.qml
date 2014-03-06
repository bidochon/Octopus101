import QtQuick 2.0

Rectangle {

    id: filterstep
    color: "transparent"

    property variant filterstep_statesNames: ["filterstep1","filterstep2","filterstep3","filterstep4","filterstep5","filterstep6"]
    property int filterstep_currentState: 0

    Image {
        id: notepad
        source: "global_images/notepad.png"
        x: 600
        y: 50
    }

    // enter crop menu
    Text {
        id: filterstep_text1
        x: notepad.x + 75
        y: notepad.y + 50
        width: notepad.width -100
        wrapMode: Text.WordWrap
        text: "Go to <b>Preparation > Filter Spots</b>"
        font.family: "Helevetica"
        font.pointSize: 14
        color: "black"
        lineHeight: 1.2
    }

    Image {
        id: filterstep_image1
        source: "filterStep/image1.png"
        x: 85
        y: 30
    }

    // Select input folder
    Text {
        id: filterstep_text2
        x: filterstep_text1.x
        y: filterstep_text1.y + filterstep_text1.height + 20
        width: notepad.width -100
        wrapMode: Text.WordWrap
        text: "Select the input folder (created in the previous step) <b>resized</b> and click <b>Current Folder</b>"
        font.family: "Helevetica"
        font.pointSize: 14
        color: "black"
        lineHeight: 1.2
        opacity: 0
    }

    Image {
        id: filterstep_image2
        source: "filterStep/image2.png"
        x: 35
        y: 100
        opacity: 0
    }

    // Select output folder
    Text {
        id: filterstep_text3
        x: filterstep_text2.x
        y: filterstep_text2.y + filterstep_text2.height + 20
        width: notepad.width -100
        wrapMode: Text.WordWrap
        text: "Accept the default output folder proposed (<b>clean</b>) by clicking <b>Current Folder</b>."
        font.family: "Helevetica"
        font.pointSize: 14
        color: "black"
        lineHeight: 1.2
        opacity: 0
    }

    Image {
        id: filterstep_image3
        source: "filterStep/image3.png"
        x: 35
        y: 100
        opacity: 0
    }

    // filter window
    Text {
        id: filterstep_text4
        x: filterstep_text3.x
        y: filterstep_text3.y + filterstep_text3.height + 20
        width: notepad.width -100
        wrapMode: Text.WordWrap
        text: "<b>The left window</b> displays the original data.<br>
        <b>The right window</b> displays the data after filtering.<br><br>
        Select the filter method you want. In most cases, to get rid off most of gammas pixels, you will need to use the <b>High</b> method.<br><br>
        Then select <b>OK</b> to start the calculation on all the slices."
        font.family: "Helevetica"
        font.pointSize: 14
        color: "black"
        lineHeight: 1.2
        opacity: 0
    }

    Image {
        id: filterstep_image4
        source: "filterStep/image4.png"
        x: 15
        y: 160
        opacity: 0
    }

    // filtering in progress
    Text {
        id: filterstep_text5
        x: filterstep_text1.x
        y: filterstep_text1.y
        width: notepad.width -100
        wrapMode: Text.WordWrap
        text: "Please be pating while the program run the filter algorithm on all the data (slices)!"
        font.pointSize: 14
        color: "black"
        lineHeight: 1.2
        opacity: 0
    }

    Image {
        id: filterstep_image5
        source: "filterStep/image5.png"
        x: 255
        y: 50
        opacity: 0
    }

    // done
    Text {
        id: filterstep_text6
        x: filterstep_text5.x
        y: filterstep_text5.y + filterstep_text5.height + 20
        width: notepad.width -100
        wrapMode: Text.WordWrap
        text: "Filtering step is done!"
        font.pointSize: 14
        color: "black"
        lineHeight: 1.2
        opacity: 0
    }

    Image {
        id: filterstep_image6
        source: "filterStep/image6.png"
        x: 60
        y: 55
        opacity: 0
    }
    // bottom buttons
    Image {
        id: filterstep_prev
        source: "global_images/prev_off.png"
        anchors.bottom: filterstep.bottom
        anchors.left: filterstep.left
        opacity: 0
    }

    MouseArea {
        id: filterstep_prev_mousearea
        anchors.fill: filterstep_prev
        hoverEnabled: true
        onPressed: {
            filterstep_prev.source = "global_images/prev_click.png"
            filterstep_currentState--
            filterstep.state = filterstep_statesNames[filterstep_currentState]
        }
        onEntered: {
            filterstep_prev.source = "global_images/prev_on.png"
        }
        onExited: {
            filterstep_prev.source = "global_images/prev_off.png"
        }
        onReleased: {
            filterstep_prev.source = "global_images/prev_on.png"
        }
        enabled: false
    }

    Image {
        id: filterstep_next
        source: "global_images/next_off.png"
        anchors.bottom: filterstep.bottom
        anchors.right: filterstep.right
    }

    MouseArea {
        id: filterstep_next_mousearea
        anchors.fill: filterstep_next
        hoverEnabled: true
        onPressed: {
            filterstep_next.source = "global_images/next_click.png"
            filterstep_currentState++
            filterstep.state = filterstep_statesNames[filterstep_currentState]
        }
        onEntered: {
            filterstep_next.source = "global_images/next_on.png"
        }
        onExited: {
            filterstep_next.source = "global_images/next_off.png"
        }
        onReleased: {
            filterstep_next.source = "global_images/next_on.png"
        }
    }

    // STATES
    states: [
        State {
            name: "filterstep1"
            PropertyChanges {
                target: filterstep_text1
                opacity: 1
            }
            PropertyChanges {
                target: filterstep_image1
                opacity: 1
            }
            PropertyChanges {
                target: filterstep_prev
                opacity: 0
            }
            PropertyChanges {
                target: filterstep_prev_mousearea
                enabled: false
            }
        },
        State {
            name: "filterstep2"
            PropertyChanges {
                target: filterstep_text1
                opacity: 0.5
            }
            PropertyChanges {
                target: filterstep_image1
                opacity: 0
            }
            PropertyChanges {
                target: filterstep_prev
                opacity: 1
            }
            PropertyChanges {
                target: filterstep_prev_mousearea
                enabled: true
            }
            PropertyChanges {
                target: filterstep_text2
                opacity: 1
            }
            PropertyChanges {
                target: filterstep_image2
                opacity: 1
            }
        },
        State {
            name: "filterstep3"
            PropertyChanges {
                target: filterstep_text1
                opacity: 0.5
            }
            PropertyChanges {
                target: filterstep_image1
                opacity: 0
            }
            PropertyChanges {
                target: filterstep_prev
                opacity: 1
            }
            PropertyChanges {
                target: filterstep_prev_mousearea
                enabled: true
            }
            PropertyChanges {
                target: filterstep_text2
                opacity: 0.5
            }
            PropertyChanges {
                target: filterstep_image2
                opacity: 0
            }
            PropertyChanges {
                target: filterstep_text3
                opacity: 1
            }
            PropertyChanges {
                target: filterstep_image3
                opacity: 1
            }
        },
        State {
            name: "filterstep4"
            PropertyChanges {
                target: filterstep_text1
                opacity: 0.5
            }
            PropertyChanges {
                target: filterstep_image1
                opacity: 0
            }
            PropertyChanges {
                target: filterstep_prev
                opacity: 1
            }
            PropertyChanges {
                target: filterstep_prev_mousearea
                enabled: true
            }
            PropertyChanges {
                target: filterstep_text2
                opacity: 0.5
            }
            PropertyChanges {
                target: filterstep_image2
                opacity: 0
            }
            PropertyChanges {
                target: filterstep_text3
                opacity: 0.5
            }
            PropertyChanges {
                target: filterstep_image3
                opacity: 0
            }
            PropertyChanges {
                target: filterstep_text4
                opacity: 1
            }
            PropertyChanges {
                target: filterstep_image4
                opacity: 1
            }
        },
        State {
            name: "filterstep5"
            PropertyChanges {
                target: filterstep_text1
                opacity: 0
            }
            PropertyChanges {
                target: filterstep_image1
                opacity: 0
            }
            PropertyChanges {
                target: filterstep_prev
                opacity: 1
            }
            PropertyChanges {
                target: filterstep_prev_mousearea
                enabled: true
            }
            PropertyChanges {
                target: filterstep_text2
                opacity: 0
            }
            PropertyChanges {
                target: filterstep_image2
                opacity: 0
            }
            PropertyChanges {
                target: filterstep_text3
                opacity: 0
            }
            PropertyChanges {
                target: filterstep_image3
                opacity: 0
            }
            PropertyChanges {
                target: filterstep_text4
                opacity: 0
            }
            PropertyChanges {
                target: filterstep_image4
                opacity: 0
            }
            PropertyChanges {
                target: filterstep_text5
                opacity: 1
            }
            PropertyChanges {
                target: filterstep_image5
                opacity: 1
            }
        },
        State {
            name: "filterstep6"
            PropertyChanges {
                target: filterstep_text1
                opacity: 0
            }
            PropertyChanges {
                target: filterstep_image1
                opacity: 0
            }
            PropertyChanges {
                target: filterstep_prev
                opacity: 1
            }
            PropertyChanges {
                target: filterstep_prev_mousearea
                enabled: true
            }
            PropertyChanges {
                target: filterstep_text2
                opacity: 0
            }
            PropertyChanges {
                target: filterstep_image2
                opacity: 0
            }
            PropertyChanges {
                target: filterstep_text3
                opacity: 0
            }
            PropertyChanges {
                target: filterstep_image3
                opacity: 0
            }
            PropertyChanges {
                target: filterstep_text4
                opacity: 0
            }
            PropertyChanges {
                target: filterstep_image4
                opacity: 0
            }
            PropertyChanges {
                target: filterstep_text5
                opacity: 0.5
            }
            PropertyChanges {
                target: filterstep_image5
                opacity: 0
            }
            PropertyChanges {
                target: filterstep_text6
                opacity: 1
            }
            PropertyChanges {
                target: filterstep_image6
                opacity: 1
            }
            PropertyChanges {
                target: filterstep_next
                opacity: 0
            }
            PropertyChanges {
                target: filterstep_next_mousearea
                enabled: false
            }

        }
    ]
}
