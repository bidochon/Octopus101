import QtQuick 2.0

Rectangle {

    id: tiltstep
    color: "transparent"

    property variant statesNames: ["tiltstep1","tiltstep2","tiltstep3","tiltstep4","tiltstep5","tiltstep6","tiltstep7","tiltstep8","tiltstep9","tiltstep10","tiltstep11"]
    property int currentState: 0

    Image {
        id: notepad
        source: "global_images/notepad.png"
        x: 600
        y: 50
    }

    // enter tilt menu
    MyText {
        id: tiltstep_text1
        x: notepad.x + 75
        y: notepad.y + 75
        width: notepad.width -100
        text: "Go to <b>Preparation > Correct axis tilt</b>"
        opacity: 1
    }

    Image {
        id: tiltstep_image1
        source: "tiltStep/image1.png"
        x: 105
        y: 15
    }

    // Select input folder
    MyText {
        id: tiltstep_text2
        x: tiltstep_text1.x
        y: tiltstep_text1.y + tiltstep_text1.height + 20
        width: notepad.width -100
        text: "Select input data folder created in previous step called <b>normalised</b>, then click <b>Current Folder</b>."
    }

    Image {
        id: tiltstep_image2
        source: "tiltStep/image2.png"
        x: 35
        y: 140
        opacity: 0
    }

    // Select output folder
    MyText {
        id: tiltstep_text3
        x: tiltstep_text2.x
        y: tiltstep_text2.y + tiltstep_text2.height + 20
        width: notepad.width -100
        text: "Accept the default output folder name proposed (<b>rotated</b>) by clicking <b>Current Folder</b>."
    }

    Image {
        id: tiltstep_image3
        source: "tiltStep/image3.png"
        x: 35
        y: 180
        opacity: 0
    }

    // Select projection 0degree
    MyText {
        id: tiltstep_text4
        x: tiltstep_text3.x
        y: tiltstep_text3.y + tiltstep_text3.height + 20
        width: notepad.width -100
        text: "Select the first data file, the one with a projectionn of <b>0 degrees</b>, then click <b>OK</b>."
    }

    Image {
        id: tiltstep_image4
        source: "tiltStep/image4.png"
        x: 35
        y: 180
        opacity: 0
    }

    // Select projection 180degrees
    MyText {
        id: tiltstep_text5
        x: tiltstep_text4.x
        y: tiltstep_text4.y + tiltstep_text4.height + 20
        width: notepad.width -100
        text: "Select the data file corresponding to a projection of <b>180 degrees</b> (remember the offset you wrote down in the <b>Preparation step</b>). Then click <b>OK</b>."
    }

    Image {
        id: tiltstep_image5
        source: "tiltStep/image5.png"
        x: 35
        y: 180
        opacity: 0
    }

    // normalize projections ?
    MyText {
        id: tiltstep_text6
        x: tiltstep_text1.x
        y: tiltstep_text1.y
        width: notepad.width -100
        text: "Keep the default value <b>NO</b> as you do not want to normalize projections with flat field images."
    }

    Image {
        id: tiltstep_image6
        source: "tiltStep/image6.png"
        x: 230
        y: 80
        opacity: 0
    }

    // ROI selection
    MyText {
        id: tiltstep_text7
        x: tiltstep_text6.x
        y: tiltstep_text6.y + tiltstep_text6.height + 20
        width: notepad.width -100
        text: "Select a region <b>closely tight to the sample</b>. This ROI will be used to evaluate the tilt of the sample.<br>Then click <b>ACCEPT</b> to start the calculation."
    }

    Image {
        id: tiltstep_image7
        source: "tiltStep/image7.png"
        x: 50
        y: 60
        opacity: 0
    }

    // Calculation
    MyText {
        id: tiltstep_text8
        x: tiltstep_text7.x
        y: tiltstep_text7.y + tiltstep_text7.height + 20
        width: notepad.width -100
        text: "Please be patient as the program evaluates the tilt of the sample... then display the <b>tilt angle found</b>. <br><br>Click <b>OK</b> to validate the tilt value."
    }

    Image {
        id: tiltstep_image8
        source: "tiltStep/image8.png"
        x: 120
        y: 300
        opacity: 0
    }

    // correct tilt
    MyText {
        id: tiltstep_text9
        x: tiltstep_text1.x
        y: tiltstep_text1.y
        width: notepad.width -100
        text: "With this window, you can check the tilt through the volume by selecting a <b>Image Number (left side)</b> and <b>click Test</b> to visualize this slide.<br><br>
        Once your are satisfied with the tilt angle, click <b>START</b>"
    }

    Image {
        id: tiltstep_image9
        source: "tiltStep/image9.png"
        x: 170
        y: 180
        opacity: 0
    }

    // calcualtion running
    MyText {
        id: tiltstep_text10
        x: tiltstep_text1.x
        y: tiltstep_text1.y
        width: notepad.width -100
        text: "Please be patient as the program apply the tilt on all the data files (slices).<br><br>
        the progress of the calculation can be visualized by looking at the Image Number box."
    }

    Image {
        id: tiltstep_image10
        source: "tiltStep/image10.png"
        x: 170
        y: 200
        opacity: 0
    }

    // process done
    MyText {
        id: tiltstep_text11
        x: tiltstep_text1.x
        y: tiltstep_text1.y + 10
        width: notepad.width -100
        text: "<b>Tilt step</b> is done !"
    }

    Image {
        id: tiltstep_image11
        source: "tiltStep/image11.png"
        x: 90
        y: 30
        opacity: 0
    }

    // bottom buttons
    Image {
        id: prev
        source: "global_images/prev_off.png"
        anchors.bottom: tiltstep.bottom
        anchors.left: tiltstep.left
        opacity: 0
    }

    MouseArea {
        id: prev_mousearea
        anchors.fill: prev
        hoverEnabled: true
        onPressed: {
            prev.source = "global_images/prev_click.png"
            currentState--
            tiltstep.state = statesNames[currentState]
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
        anchors.bottom: tiltstep.bottom
        anchors.right: tiltstep.right
    }

    MouseArea {
        id: next_mousearea
        anchors.fill: next
        hoverEnabled: true
        onPressed: {
            next.source = "global_images/next_click.png"
            currentState++
            tiltstep.state = statesNames[currentState]
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
            name: "tilstep1"
            PropertyChanges {
                target: tiltstep_text1
                opacity: 1
            }
            PropertyChanges {
                target: tiltstep_image1
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
            name: "tiltstep2"
            PropertyChanges {
                target: tiltstep_text1
                opacity: 0.5
            }
            PropertyChanges {
                target: tiltstep_image1
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
                target: tiltstep_text2
                opacity: 1
            }
            PropertyChanges {
                target: tiltstep_image2
                opacity: 1
            }
        },
        State {
            name: "tiltstep3"
            PropertyChanges {
                target: tiltstep_text1
                opacity: 0.5
            }
            PropertyChanges {
                target: tiltstep_image1
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
                target: tiltstep_text2
                opacity: 0.5
            }
            PropertyChanges {
                target: tiltstep_text3
                opacity: 1
            }
            PropertyChanges {
                target: tiltstep_image3
                opacity: 1
            }
        },
        State {
            name: "tiltstep4"
            PropertyChanges {
                target: tiltstep_text1
                opacity: 0.5
            }
            PropertyChanges {
                target: tiltstep_image1
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
                target: tiltstep_text2
                opacity: 0.5
            }
            PropertyChanges {
                target: tiltstep_text3
                opacity: 0.5
            }
            PropertyChanges {
                target: tiltstep_text4
                opacity: 1
            }
            PropertyChanges {
                target: tiltstep_image4
                opacity: 1
            }
        },
        State {
            name: "tiltstep5"
            PropertyChanges {
                target: tiltstep_text1
                opacity: 0.5
            }
            PropertyChanges {
                target: tiltstep_image1
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
                target: tiltstep_text2
                opacity: 0.5
            }
            PropertyChanges {
                target: tiltstep_text3
                opacity: 0.5
            }
            PropertyChanges {
                target: tiltstep_text4
                opacity: 0.5
            }
            PropertyChanges {
                target: tiltstep_text5
                opacity: 1
            }
            PropertyChanges {
                target: tiltstep_image5
                opacity: 1
            }
        },
        State {
            name: "tiltstep6"
            PropertyChanges {
                target: tiltstep_text1
                opacity: 0
            }
            PropertyChanges {
                target: tiltstep_image1
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
                target: tiltstep_text6
                opacity: 1
            }
            PropertyChanges {
                target: tiltstep_image6
                opacity: 1
            }
        },
        State {
            name: "tiltstep7"
            PropertyChanges {
                target: tiltstep_text1
                opacity: 0
            }
            PropertyChanges {
                target: tiltstep_image1
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
                target: tiltstep_text6
                opacity: 0.5
            }
            PropertyChanges {
                target: tiltstep_text7
                opacity: 1
            }
            PropertyChanges {
                target: tiltstep_image7
                opacity: 1
            }
        },
        State {
            name: "tiltstep8"
            PropertyChanges {
                target: tiltstep_text1
                opacity: 0
            }
            PropertyChanges {
                target: tiltstep_image1
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
                target: tiltstep_text6
                opacity: 0.5
            }
            PropertyChanges {
                target: tiltstep_text7
                opacity: 0.5
            }
            PropertyChanges {
                target: tiltstep_text8
                opacity: 1
            }
            PropertyChanges {
                target: tiltstep_image8
                opacity: 1
            }
        },
        State {
            name: "tiltstep9"
            PropertyChanges {
                target: tiltstep_text1
                opacity: 0
            }
            PropertyChanges {
                target: tiltstep_image1
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
                target: tiltstep_text9
                opacity: 1
            }
            PropertyChanges {
                target: tiltstep_image9
                opacity: 1
            }
        },
        State {
            name: "tiltstep10"
            PropertyChanges {
                target: tiltstep_text1
                opacity: 0
            }
            PropertyChanges {
                target: tiltstep_image1
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
                target: tiltstep_text10
                opacity: 1
            }
            PropertyChanges {
                target: tiltstep_image10
                opacity: 1
            }
        },
        State {
            name: "tiltstep11"
            PropertyChanges {
                target: tiltstep_text1
                opacity: 0
            }
            PropertyChanges {
                target: tiltstep_image1
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
                target: next
                opacity: 0
            }
            PropertyChanges {
                target: next_mousearea
                enabled: false
            }
            PropertyChanges {
                target: tiltstep_text11
                opacity: 1
            }
            PropertyChanges {
                target: tiltstep_image11
                opacity: 1
            }
        }
    ]

}
