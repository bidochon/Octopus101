import QtQuick 2.0

Rectangle {

    id: sinostep
    color: "transparent"

    property variant statesNames: ["sinostep1","sinostep2","sinostep3","sinostep4","sinostep5"]
    property int currentState: 0

    Image {
        id: notepad
        source: "global_images/notepad.png"
        x: 600
        y: 50
    }

    // enter sinogram menu
    MyText {
        id: sinostep_text1
        x: notepad.x + 75
        y: notepad.y + 75
        width: notepad.width -100
        text: "Go to <b>Preparation > Sinograms</b>"
        opacity: 1
    }

    Image {
        id: sinostep_image1
        source: "sinoStep/image1.png"
        x: 105
        y: 65
    }

    // Select input folder
    MyText {
        id: sinostep_text2
        x: sinostep_text1.x
        y: sinostep_text1.y + sinostep_text1.height + 20
        width: notepad.width -100
        text: "Select input data folder created in previous step called <b>rotated</b>, then click <b>Current Folder</b>."
    }

    Image {
        id: sinostep_image2
        source: "sinostep/image2.png"
        x: 35
        y: 140
        opacity: 0
    }

    // Select output folder
    MyText {
        id: sinostep_text3
        x: sinostep_text2.x
        y: sinostep_text2.y + sinostep_text2.height + 20
        width: notepad.width -100
        text: "Accept the default output folder name proposed (<b>sinograms</b>) by clicking <b>Current Folder</b>."
    }

    Image {
        id: sinostep_image3
        source: "sinoStep/image3.png"
        x: 35
        y: 140
        opacity: 0
    }

    // Running process
    MyText {
        id: sinostep_text4
        x: sinostep_text3.x
        y: sinostep_text3.y + sinostep_text3.height + 20
        width: notepad.width -100
        text: "Please be patient as the the program calculates the sinograms."
    }

    Image {
        id: sinostep_image4
        source: "sinoStep/image4.png"
        x: 320
        y: 250
        opacity: 0
    }

    // Process done
    MyText {
        id: sinostep_text5
        x: sinostep_text4.x
        y: sinostep_text4.y + sinostep_text4.height + 20
        width: notepad.width -100
        text: "Sinogram step is done !"
    }

    Image {
        id: sinostep_image5
        source: "sinoStep/image5.png"
        x: 65
        y: 245
        opacity: 0
    }

    // bottom buttons
    Image {
        id: prev
        source: "global_images/prev_off.png"
        anchors.bottom: sinostep.bottom
        anchors.left: sinostep.left
        opacity: 0
    }

    MouseArea {
        id: prev_mousearea
        anchors.fill: prev
        hoverEnabled: true
        onPressed: {
            prev.source = "global_images/prev_click.png"
            currentState--
            sinostep.state = statesNames[currentState]
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
        anchors.bottom: sinostep.bottom
        anchors.right: sinostep.right
    }

    MouseArea {
        id: next_mousearea
        anchors.fill: next
        hoverEnabled: true
        onPressed: {
            next.source = "global_images/next_click.png"
            currentState++
            sinostep.state = statesNames[currentState]
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
            name: "sinostep1"
            PropertyChanges {
                target: sinostep_text1
                opacity: 1
            }
            PropertyChanges {
                target: sinostep_image1
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
            name: "sinostep2"
            PropertyChanges {
                target: sinostep_text1
                opacity: 0.5
            }
            PropertyChanges {
                target: sinostep_image1
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
                target: sinostep_text2
                opacity: 1
            }
            PropertyChanges {
                target: sinostep_image2
                opacity: 1
            }
        },
        State {
            name: "sinostep3"
            PropertyChanges {
                target: sinostep_text1
                opacity: 0.5
            }
            PropertyChanges {
                target: sinostep_image1
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
                target: sinostep_text2
                opacity: 0.5
            }
            PropertyChanges {
                target: sinostep_text3
                opacity: 1
            }
            PropertyChanges {
                target: sinostep_image3
                opacity: 1
            }
        },
        State {
            name: "sinostep4"
            PropertyChanges {
                target: sinostep_text1
                opacity: 0.5
            }
            PropertyChanges {
                target: sinostep_image1
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
                target: sinostep_text2
                opacity: 0.5
            }
            PropertyChanges {
                target: sinostep_text3
                opacity: 0.5
            }
            PropertyChanges {
                target: sinostep_text4
                opacity: 1
            }
            PropertyChanges {
                target: sinostep_image4
                opacity: 1
            }
        },
        State {
            name: "sinostep5"
            PropertyChanges {
                target: sinostep_text1
                opacity: 0.5
            }
            PropertyChanges {
                target: sinostep_image1
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
                target: sinostep_text2
                opacity: 0.5
            }
            PropertyChanges {
                target: sinostep_text3
                opacity: 0.5
            }
            PropertyChanges {
                target: sinostep_text4
                opacity: 0.5
            }
            PropertyChanges {
                target: sinostep_text5
                opacity: 1
            }
            PropertyChanges {
                target: sinostep_image5
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
