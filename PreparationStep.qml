import QtQuick 2.0

Rectangle {

    id: prepastep
    color: "transparent"

    property variant statesNames: ["prepa1","prepa2","prepa3","prepa4"]
    property int currentState: 0

    Image {
        id: notepad
        source: "global_images/notepad.png"
        x: 50
        y: 50
    }

    // write down last angle
    Text {
        id: prepa_text1
        x: notepad.x + 75
        y: notepad.y + 58
        width: notepad.width - 100
        wrapMode: Text.WordWrap
        text: "Start by writing down <b>the last angle</b> of the data set -> <b>181.5</b> here"
        font.family: "Helvetica"
        font.pointSize: 14
        color: "black"
    }

    Image {
        id: prepa_image1
        source: "prepa/prepa_1.png"
        x: notepad.x + notepad.width
        y: notepad.y + 50
    }

    // make sure first angle is 0
    Text {
        id: prepa_text2
        x: prepa_text1.x
        y: prepa_text1.y + prepa_text1.height + 20
        width: notepad.width - 100
        wrapMode: Text.WordWrap
        text: "Make sure the first angle is <b>0.0 degree</b>."
        font.family: "Helvetica"
        font.pointSize: 14
        color: "black"
        opacity: 0
    }

    Image {
        id: prepa_image2
        source: "prepa/prepa_2.png"
        x: prepa_image1.x
        y: prepa_image1.y + 20
        opacity: 0
    }

    // write down offset between last and 180 degrees
    Text {
        id: prepa_text3
        x: prepa_text2.x
        y: prepa_text2.y + prepa_text2.height + 20
        width: notepad.width - 100
        wrapMode: Text.WordWrap
        text: "Write down the number of files between the last one and the one with an angle of <b>180 degrees</b> "
        font.family: "Helvetica"
        font.pointSize: 14
        color: "black"
        opacity: 0
    }

    Image {
        id: prepa_image3
        source: "prepa/prepa_3.png"
        x: prepa_image2.x
        y: prepa_image2.y + 20
        opacity: 0
    }

    // OB and DF are in the same folder
    Text {
        id: prepa_text4
        x: prepa_text3.x
        y: prepa_text3.y + prepa_text3.height + 20
        width: notepad.width - 100
        wrapMode: Text.WordWrap
        text: "Make sure that the <b>Open Beam</b> and <b>Dark Field</b> files are in the same folder"
        font.family: "Helvetica"
        font.pointSize: 14
        color: "black"
        opacity: 0
    }

    // bottom buttons
    Image {
        id: prev
        source: "global_images/prev_off.png"
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        opacity: 0
    }

    MouseArea {
        id: prev_mousearea
        anchors.fill: prev
        hoverEnabled: true
        onPressed: {
            prev.source = "global_images/prev_click.png"
            currentState--
            prepastep.state = statesNames[currentState]
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
        anchors.bottom: parent.bottom
        anchors.right: parent.right
    }

    MouseArea {
        id: next_mousearea
        anchors.fill: next
        hoverEnabled: true
        onPressed: {
            next.source = "global_images/next_click.png"
            currentState++
            prepastep.state = statesNames[currentState]
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

    states: [
        State {
            name: "prepa1"
            PropertyChanges {
                target: prepa_image1
                opacity: 1
            }
            PropertyChanges {
                target: prepa_image2
                opacity: 0
            }
            PropertyChanges {
                target: prepa_text2
                opacity: 0
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
            name: "prepa2"
            PropertyChanges {
                target: prepa_image1
                opacity: 0
            }
            PropertyChanges {
                target: prepa_image2
                opacity: 1
            }
            PropertyChanges {
                target: prepa_text2
                opacity: 1
            }
            PropertyChanges {
                target: prev
                opacity: 1
            }
            PropertyChanges {
                target: prev_mousearea
                enabled: true
            }
        },
        State {
            name: "prepa3"
            PropertyChanges {
                target: prepa_image2
                opacity: 0
            }
            PropertyChanges {
                target: prepa_image1
                opacity: 0
            }
            PropertyChanges {
                target: prepa_text2
                opacity: 1
            }
            PropertyChanges {
                target: prepa_image3
                opacity: 1
            }
            PropertyChanges {
                target: prepa_text3
                opacity: 1
            }
            PropertyChanges {
                target: prev
                opacity: 1
            }
            PropertyChanges {
                target: prev_mousearea
                enabled: true
            }
        },
        State {
            name: "prepa4"
            PropertyChanges {
                target: prepa_image2
                opacity: 0
            }
            PropertyChanges {
                target: prepa_image1
                opacity: 0
            }
            PropertyChanges {
                target: prepa_text2
                opacity: 1
            }
            PropertyChanges {
                target: prepa_image3
                opacity: 0
            }
            PropertyChanges {
                target: prepa_text3
                opacity: 1
            }
            PropertyChanges {
                target: prepa_text4
                opacity: 1
            }
            PropertyChanges {
                target: prev
                opacity: 1
            }
            PropertyChanges {
                target: prev_mousearea
                enabled: true
            }
        }

    ]

}
