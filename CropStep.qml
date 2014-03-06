import QtQuick 2.0

Rectangle {

    id: cropstep
    color: "transparent"

    property variant cropstep_statesNames: ["cropstep1","cropstep2","cropstep3","cropstep4","cropstep5","cropstep6"]
    property int cropstep_currentState: 0

    Image {
        id: notepad
        source: "global_images/notepad.png"
        x: 600
        y: 50
    }

    // enter crop menu
    Text {
        id: cropstep_text1
        x: notepad.x + 75
        y: notepad.y + 90
        width: notepad.width -100
        wrapMode: Text.WordWrap
        text: "Go to <b>Preparation > Crop Images</b>"
        font.family: "Helevetica"
        font.pointSize: 14
        color: "black"
        lineHeight: 1.2
    }

    Image {
        id: cropstep_image1
        source: "cropStep/image1.png"
        x: 85
        y: 85
    }

    // enter crop menu
    Text {
        id: cropstep_text2
        x: cropstep_text1.x
        y: cropstep_text1.y + cropstep_text1.height + 20
        width: notepad.width -100
        wrapMode: Text.WordWrap
        text: "Select folder that contain the data (<b>converted</b> folder), and click <b>Current Folder</b>."
        font.family: "Helevetica"
        font.pointSize: 14
        color: "black"
        lineHeight: 1.2
        opacity: 0
    }

    Image {
        id: cropstep_image2
        source: "cropStep/image2.png"
        x: 30
        y: 60
        opacity: 0
    }

    // enter crop menu
    Text {
        id: cropstep_text3
        x: cropstep_text2.x
        y: cropstep_text2.y + cropstep_text2.height + 20
        width: notepad.width -100
        wrapMode: Text.WordWrap
        text: "Then just accept the proposed output folder name, <b>resized</b> by clicking <b>Current Folder</b>."
        font.family: "Helevetica"
        font.pointSize: 14
        color: "black"
        lineHeight: 1.2
        opacity: 0
    }

    Image {
        id: cropstep_image3
        source: "cropStep/image3.png"
        x: cropstep_image2.x
        y: cropstep_image2.y + 100
        opacity: 0
    }

    // Select crop region
    Text {
        id: cropstep_text4
        x: cropstep_text1.x
        y: cropstep_text1.y
        width: notepad.width -100
        wrapMode: Text.WordWrap
        text: "To optimize all the calculations to come, select a rectangle region closely tied to the sample (make sure you don't take out parts of your sample).<br><br>
        <font color='red'>Method</font><br>
         <b>1/ Click the first corner</b> of the region to keep<br>
        2/ without releasing the left mouse click</b><br>
        3/ move to the opposite corner and <b>release click</b>.<br><br>
        Using the <b>left</b>, <b>top</b>, <b>right</b> and/or <b>bottom</b> boxes, you can modify manually the selection you juste made.<br><br>
        Click <b>ACCEPT</b> to validate the selection."
        font.family: "Helevetica"
        font.pointSize: 14
        color: "black"
        lineHeight: 1.2
        opacity: 0
    }

    Image {
        id: cropstep_image4
        source: "cropStep/image4.png"
        x: cropstep_image1.x
        y: cropstep_image1.y
        opacity: 0
    }

    // crop processing
    Text {
        id: cropstep_text5
        x: cropstep_text4.x
        y: cropstep_text4.y + cropstep_text4.height + 20
        width: notepad.width -100
        wrapMode: Text.WordWrap
        text: "Just be patient as the program crops all the slices."
        font.family: "Helevetica"
        font.pointSize: 14
        color: "black"
        lineHeight: 1.2
        opacity: 0
    }

    Image {
        id: cropstep_image5
        source: "cropStep/image5.png"
        x: notepad.x + 50
        y: notepad.y + notepad.height - 50
        opacity: 0
    }

    // crop processing
    Text {
        id: cropstep_text6
        x: cropstep_text1.x
        y: cropstep_text1.y
        width: notepad.width -100
        wrapMode: Text.WordWrap
        text: "Crop Step is done !"
        font.family: "Helevetica"
        font.pointSize: 14
        color: "black"
        lineHeight: 1.2
        opacity: 0
    }

    Image {
        id: cropstep_image6
        source: "cropStep/image6.png"
        x: cropstep_image1.x
        y: cropstep_image1.y - 50
        opacity: 0
    }


    // bottom buttons
    Image {
        id: cropstep_prev
        source: "global_images/prev_off.png"
        anchors.bottom: cropstep.bottom
        anchors.left: cropstep.left
        opacity: 0
    }

    MouseArea {
        id: cropstep_prev_mousearea
        anchors.fill: cropstep_prev
        hoverEnabled: true
        onPressed: {
            cropstep_prev.source = "global_images/prev_click.png"
            cropstep_currentState--
            cropstep.state = cropstep_statesNames[cropstep_currentState]
        }
        onEntered: {
            cropstep_prev.source = "global_images/prev_on.png"
        }
        onExited: {
            cropstep_prev.source = "global_images/prev_off.png"
        }
        onReleased: {
            cropstep_prev.source = "global_images/prev_on.png"
        }
        enabled: false
    }

    Image {
        id: cropstep_next
        source: "global_images/next_off.png"
        anchors.bottom: cropstep.bottom
        anchors.right: cropstep.right
    }

    MouseArea {
        id: cropstep_next_mousearea
        anchors.fill: cropstep_next
        hoverEnabled: true
        onPressed: {
            cropstep_next.source = "global_images/next_click.png"
            cropstep_currentState++
            cropstep.state = cropstep_statesNames[cropstep_currentState]
        }
        onEntered: {
            cropstep_next.source = "global_images/next_on.png"
        }
        onExited: {
            cropstep_next.source = "global_images/next_off.png"
        }
        onReleased: {
            cropstep_next.source = "global_images/next_on.png"
        }
    }

    // STATES
    states: [
        State {
            name: "cropstep1"
            PropertyChanges {
                target: cropstep_text1
                opacity: 1
            }
            PropertyChanges {
                target: cropstep_image1
                opacity: 1
            }
            PropertyChanges {
                target: cropstep_prev
                opacity: 0
            }
            PropertyChanges {
                target: cropstep_prev_mousearea
                enabled: false
            }
        },
        State {
            name: "cropstep2"
            PropertyChanges {
                target: cropstep_text1
                opacity: 0.5
            }
            PropertyChanges {
                target: cropstep_image1
                opacity: 0
            }
            PropertyChanges {
                target: cropstep_prev
                opacity: 1
            }
            PropertyChanges {
                target: cropstep_prev_mousearea
                enabled: true
            }
            PropertyChanges {
                target: cropstep_text2
                opacity: 1
            }
            PropertyChanges {
                target: cropstep_image2
                opacity: 1
            }
        },
        State {
            name: "cropstep3"
            PropertyChanges {
                target: cropstep_text1
                opacity: 0.5
            }
            PropertyChanges {
                target: cropstep_image1
                opacity: 0
            }
            PropertyChanges {
                target: cropstep_prev
                opacity: 1
            }
            PropertyChanges {
                target: cropstep_prev_mousearea
                enabled: true
            }
            PropertyChanges {
                target: cropstep_text2
                opacity: 0.5
            }
            PropertyChanges {
                target: cropstep_image2
                opacity: 0
            }
            PropertyChanges {
                target: cropstep_text3
                opacity: 1
            }
            PropertyChanges {
                target: cropstep_image3
                opacity: 1
            }
        },
        State {
            name: "cropstep4"
            PropertyChanges {
                target: cropstep_text1
                opacity: 0
            }
            PropertyChanges {
                target: cropstep_image1
                opacity: 0
            }
            PropertyChanges {
                target: cropstep_prev
                opacity: 1
            }
            PropertyChanges {
                target: cropstep_prev_mousearea
                enabled: true
            }
            PropertyChanges {
                target: cropstep_text2
                opacity: 0
            }
            PropertyChanges {
                target: cropstep_image2
                opacity: 0
            }
            PropertyChanges {
                target: cropstep_text3
                opacity: 0
            }
            PropertyChanges {
                target: cropstep_image3
                opacity: 0
            }
            PropertyChanges {
                target: cropstep_text4
                opacity: 1
            }
            PropertyChanges {
                target: cropstep_image4
                opacity: 1
            }
        },
        State {
            name: "cropstep5"
            PropertyChanges {
                target: cropstep_text1
                opacity: 0
            }
            PropertyChanges {
                target: cropstep_image1
                opacity: 0
            }
            PropertyChanges {
                target: cropstep_prev
                opacity: 1
            }
            PropertyChanges {
                target: cropstep_prev_mousearea
                enabled: true
            }
            PropertyChanges {
                target: cropstep_text2
                opacity: 0
            }
            PropertyChanges {
                target: cropstep_image2
                opacity: 0
            }
            PropertyChanges {
                target: cropstep_text3
                opacity: 0
            }
            PropertyChanges {
                target: cropstep_image3
                opacity: 0
            }
            PropertyChanges {
                target: cropstep_text4
                opacity: 0.5
            }
            PropertyChanges {
                target: cropstep_image4
                opacity: 0
            }
            PropertyChanges {
                target: cropstep_text5
                opacity: 1
            }
            PropertyChanges {
                target: cropstep_image5
                opacity: 1
            }
        },
        State {
            name: "cropstep6"
            PropertyChanges {
                target: cropstep_text1
                opacity: 0
            }
            PropertyChanges {
                target: cropstep_image1
                opacity: 0
            }
            PropertyChanges {
                target: cropstep_prev
                opacity: 1
            }
            PropertyChanges {
                target: cropstep_prev_mousearea
                enabled: true
            }
            PropertyChanges {
                target: cropstep_text2
                opacity: 0
            }
            PropertyChanges {
                target: cropstep_image2
                opacity: 0
            }
            PropertyChanges {
                target: cropstep_text3
                opacity: 0
            }
            PropertyChanges {
                target: cropstep_image3
                opacity: 0
            }
            PropertyChanges {
                target: cropstep_text4
                opacity: 0
            }
            PropertyChanges {
                target: cropstep_image4
                opacity: 0
            }
            PropertyChanges {
                target: cropstep_text5
                opacity: 0
            }
            PropertyChanges {
                target: cropstep_image5
                opacity: 0
            }
            PropertyChanges {
                target: cropstep_text6
                opacity: 1
            }
            PropertyChanges {
                target: cropstep_image6
                opacity: 1
            }
            PropertyChanges {
                target: cropstep_next
                opacity: 0
            }
            PropertyChanges {
                target: cropstep_next_mousearea
                enabled: false
            }
        }
    ]
}
