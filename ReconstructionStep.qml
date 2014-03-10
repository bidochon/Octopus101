import QtQuick 2.0

Rectangle {

    id: recostep
    color: "transparent"

    property variant statesNames: ["recostep1","recostep2","recostep3","recostep4","recostep5","recostep6","recostep7","recostep8","recostep9","recostep10","recostep11","recostep12","recostep13"]
    property int currentState: 0

    Image {
        id: notepad
        source: "global_images/notepad.png"
        x: 600
        y: 50
    }

    // enter reconstruction menu
    Text {
        id: recostep_text1
        x: notepad.x + 75
        y: notepad.y + 75
        width: notepad.width -100
        wrapMode: Text.WordWrap
        text: "Go to <b>Reconstruction > Parallel beam reconstruction</b>"
        font.family: "Helevetica"
        font.pointSize: 14
        color: "black"
        lineHeight: 1.2
    }

    Image {
        id: recostep_image1
        source: "recoStep/image1.png"
        x: 105
        y: 70
    }

    // Select input folder
    Text {
        id: recostep_text2
        x: recostep_text1.x
        y: recostep_text1.y + recostep_text1.height + 20
        width: notepad.width -100
        wrapMode: Text.WordWrap
        text: "Select input data folder created in previous step called <b>sinograms</b>, then click <b>Current Folder</b>."
        font.family: "Helevetica"
        font.pointSize: 14
        color: "black"
        lineHeight: 1.2
        opacity: 0
    }

    Image {
        id: recostep_image2
        source: "recoStep/image2.png"
        x: 35
        y: 140
        opacity: 0
    }

    // Select output folder warning
    Text {
        id: recostep_text3
        x: recostep_text2.x
        y: recostep_text2.y + recostep_text2.height + 150
        width: notepad.width -100
        wrapMode: Text.WordWrap
        text: "<b>Do NOT ACCEPT</b> the default output folder name proposed as the location is wrong !<br>"
        font.family: "Helevetica"
        font.pointSize: 14
        color: "black"
        lineHeight: 1.2
        opacity: 0
    }

    Image {
        id: recostep_image3a
        source: "recoStep/warning.png"
        x: 735
        y: 250
        opacity: 0
    }

    // Select output folder
    Text {
        id: recostep_text4
        x: recostep_text1.x
        y: recostep_text1.y
        width: notepad.width -100
        wrapMode: Text.WordWrap
        text: "(1) Go to the main folder (up <b>2 folders</b>) <br>
        (2) create a new folder and name it <b>reconstructed</b><br>
        (3) click <b>OPEN</b> to go inside this folder."
        font.family: "Helevetica"
        font.pointSize: 14
        color: "black"
        lineHeight: 1.2
        opacity: 0
    }

    Image {
        id: recostep_image3
        source: "recoStep/image3.png"
        x: 35
        y: 100
        opacity: 0
    }

    // Select output folder
    Text {
        id: recostep_text5
        x: recostep_text4.x
        y: recostep_text4.y + recostep_text4.height + 20
        width: notepad.width -100
        wrapMode: Text.WordWrap
        text: "Once inside the <b>reconstructed</b> fodler, click <b> Current Folder</b>."
        font.family: "Helevetica"
        font.pointSize: 14
        color: "black"
        lineHeight: 1.2
        opacity: 0
    }

    Image {
        id: recostep_image4
        source: "recoStep/image4.png"
        x: 35
        y: 170
        opacity: 0
    }

    // Main window
    Text {
        id: recostep_text6
        x: recostep_text5.x
        y: recostep_text5.y + recostep_text5.height + 20
        width: notepad.width -100
        wrapMode: Text.WordWrap
        text: "You can check the <b>reconstruction algorithm</b> with different slices.<br><br>
        (1) Select a slice by moving the <b>cyan horizontal bar</b><br>
        (2) Click <b>Reconstruct slice</b><br>
        (3) Visualize the result in the preview box."
        font.family: "Helevetica"
        font.pointSize: 14
        color: "black"
        lineHeight: 1.2
        opacity: 0
    }

    Image {
        id: recostep_image5
        source: "recoStep/image5.png"
        x: 35
        y: 170
        opacity: 0
    }


    // Start reconstruction
    Text {
        id: recostep_text7
        x: recostep_text6.x
        y: recostep_text6.y + recostep_text6.height + 20
        width: notepad.width -100
        wrapMode: Text.WordWrap
        text: "Start the full reconstruction of the volume by clicking <b>Reconstruct volume</b>."
        font.family: "Helevetica"
        font.pointSize: 14
        color: "black"
        lineHeight: 1.2
        opacity: 0
    }

    Image {
        id: recostep_image5a
        source: "recoStep/image5a.png"
        x: recostep_image5.x
        y: recostep_image5.y
        opacity: 0
    }

    // reconstruction in progress
    Text {
        id: recostep_text8
        x: recostep_text7.x
        y: recostep_text7.y + recostep_text7.height + 20
        width: notepad.width -100
        wrapMode: Text.WordWrap
        text: "The reconstruction will take a while as each slice as reconsctructed one by one."
        font.family: "Helevetica"
        font.pointSize: 14
        color: "black"
        lineHeight: 1.2
        opacity: 0
    }

    Image {
        id: recostep_image6
        source: "recoStep/image6.png"
        x: recostep_image5.x
        y: recostep_image5.y
        opacity: 0
    }

    // adjust historgram
    Text {
        id: recostep_text9
        x: recostep_text1.x
        y: recostep_text1.y
        width: notepad.width -100
        wrapMode: Text.WordWrap
        text: "Once the reconstruction is done, you have the option to optimize the signal/background ratio by adjusting performing some segmentation. You can narrow the range of intensities displayed.<br><br>
        By <b>grabbing either left (1) or right (2) vertical bar</b> of the histogram and <b>moving them</b>, you reject more or less pixels from the final volume."
        font.family: "Helevetica"
        font.pointSize: 14
        color: "black"
        lineHeight: 1.2
        opacity: 0
    }

    Image {
        id: recostep_image7
        source: "recoStep/image7.png"
        x: 65
        y: 50
        opacity: 0
    }

    // historgram (how to ...)
    Text {
        id: recostep_text10
        x: recostep_text1.x
        y: recostep_text1.y
        width: notepad.width -100
        wrapMode: Text.WordWrap
        text: "Make sure you <b>TURN ON the CLIP button</b>. This one will allow you to optimize your histogram selection.<br>The pixels excluded by the left histogram bar,
        are displayed in <font color='green'>GREEN</font>.<br>
        The pixels excluded by the right histogram bar, are displayed in <font color='red'>RED</font>.<br><br>
        Make sure you <b>DO NOT</b> reject pixels from within the sample. <b>Make sure you also check various slices</b> through the
        volume."
        font.family: "Helevetica"
        font.pointSize: 14
        color: "black"
        lineHeight: 1.2
        opacity: 0
    }

    Image {
        id: recostep_image8
        source: "recoStep/image8.png"
        x: 65
        y: 20
        opacity: 0
    }

    // last step
    Text {
        id: recostep_text11
        x: recostep_text1.x
        y: recostep_text1.y
        width: notepad.width -100
        wrapMode: Text.WordWrap
        text: "Once you are satisfy with the selection, time to launch the reconstruction of the volume by clicking <b>Proceed</b>."
        font.family: "Helevetica"
        font.pointSize: 14
        color: "black"
        lineHeight: 1.2
        opacity: 0
    }

    Image {
        id: recostep_image9
        source: "recoStep/image9.png"
        x: 95
        y: 20
        opacity: 0
    }


    // do not remove temporary files
    Text {
        id: recostep_text12
        x: recostep_text11.x
        y: recostep_text11.y + recostep_text11.height + 20
        width: notepad.width -100
        wrapMode: Text.WordWrap
        text: "<b>DO NOT REMOVE</b> the temporary files as proposed, as you may need to reprocess some of the steps (without the need to start everything from scratch)."
        font.family: "Helevetica"
        font.pointSize: 14
        color: "black"
        lineHeight: 1.2
        opacity: 0
    }

    Image {
        id: recostep_image10
        source: "recoStep/image10.png"
        x: 400
        y: 170
        opacity: 0
    }


    // voila!
    Text {
        id: recostep_text13
        x: recostep_text1.x
        y: recostep_text1.y
        width: notepad.width -100
        wrapMode: Text.WordWrap
        text: "<b>Voila!</b>. Your sample has been reconsctructed and ready to be visualize/analyze...etc."
        font.family: "Helevetica"
        font.pointSize: 14
        color: "black"
        lineHeight: 1.2
        opacity: 0
    }

    Image {
        id: recostep_image11
        source: "recoStep/image11.png"
        x: 180
        y: 30
        opacity: 0
    }











    Text {
        id: recostep_text6a
        x: 300
        y: recostep_image5.y + recostep_image5.height - 23
        text: "NB: Size of window has been reduced to fit this tutorial!"
        font.family: "Helevetica"
        font.pointSize: 12
        color: "red"
        font.bold: true
        lineHeight: 1.2
        opacity: 0
    }

    // bottom buttons
    Image {
        id: prev
        source: "global_images/prev_off.png"
        anchors.bottom: recostep.bottom
        anchors.left: recostep.left
        opacity: 0
    }

    MouseArea {
        id: prev_mousearea
        anchors.fill: prev
        hoverEnabled: true
        onPressed: {
            prev.source = "global_images/prev_click.png"
            currentState--
            recostep.state = statesNames[currentState]
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
        anchors.bottom: recostep.bottom
        anchors.right: recostep.right
    }

    MouseArea {
        id: next_mousearea
        anchors.fill: next
        hoverEnabled: true
        onPressed: {
            next.source = "global_images/next_click.png"
            currentState++
            recostep.state = statesNames[currentState]
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
            name: "recostep1"
            PropertyChanges {
                target: recostep_text1
                opacity: 1
            }
            PropertyChanges {
                target: recostep_image1
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
            name: "recostep2"
            PropertyChanges {
                target: recostep_text1
                opacity: 0.5
            }
            PropertyChanges {
                target: recostep_image1
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
                target: recostep_text2
                opacity: 1
            }
            PropertyChanges {
                target: recostep_image2
                opacity: 1
            }
        },
        State {
            name: "recostep3"
            PropertyChanges {
                target: recostep_text1
                opacity: 0.5
            }
            PropertyChanges {
                target: recostep_image1
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
                target: recostep_text2
                opacity: 0.5
            }
            PropertyChanges {
                target: recostep_text3
                opacity: 1
            }
            PropertyChanges {
                target: recostep_image3a
                opacity: 1
            }
        },
        State {
            name: "recostep4"
            PropertyChanges {
                target: recostep_text1
                opacity: 0
            }
            PropertyChanges {
                target: recostep_image1
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
                target: recostep_text2
                opacity: 0
            }
            PropertyChanges {
                target: recostep_text3
                opacity: 0
            }
            PropertyChanges {
                target: recostep_text4
                opacity: 1
            }
            PropertyChanges {
                target: recostep_image3
                opacity: 1
            }
        },
        State {
            name: "recostep5"
            PropertyChanges {
                target: recostep_text1
                opacity: 0
            }
            PropertyChanges {
                target: recostep_image1
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
                target: recostep_text2
                opacity: 0
            }
            PropertyChanges {
                target: recostep_text3
                opacity: 0
            }
            PropertyChanges {
                target: recostep_text4
                opacity: 0.5
            }
            PropertyChanges {
                target: recostep_text5
                opacity: 1
            }
            PropertyChanges {
                target: recostep_image4
                opacity: 1
            }
        },
        State {
            name: "recostep6"
            PropertyChanges {
                target: recostep_text1
                opacity: 0
            }
            PropertyChanges {
                target: recostep_image1
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
                target: recostep_text2
                opacity: 0
            }
            PropertyChanges {
                target: recostep_text3
                opacity: 0
            }
            PropertyChanges {
                target: recostep_text4
                opacity: 0.5
            }
            PropertyChanges {
                target: recostep_text5
                opacity: 0.5
            }
            PropertyChanges {
                target: recostep_text6
                opacity: 1
            }
            PropertyChanges {
                target: recostep_image5
                opacity: 1
            }
            PropertyChanges {
                target: recostep_text6a
                opacity: 1
            }
            PropertyChanges {
                target: notepad
                x: 750
            }
        },
        State {
            name: "recostep7"
            PropertyChanges {
                target: recostep_text1
                opacity: 0
            }
            PropertyChanges {
                target: recostep_image1
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
                target: recostep_text2
                opacity: 0
            }
            PropertyChanges {
                target: recostep_text3
                opacity: 0
            }
            PropertyChanges {
                target: recostep_text4
                opacity: 0.5
            }
            PropertyChanges {
                target: recostep_text5
                opacity: 0.5
            }
            PropertyChanges {
                target: recostep_text6
                opacity: 0.5
            }
            PropertyChanges {
                target: recostep_image5a
                opacity: 1
            }
            PropertyChanges {
                target: recostep_text6
                opacity: 0.5
            }
            PropertyChanges {
                target: recostep_text7
                opacity: 1
            }
            PropertyChanges {
                target: recostep_text6a
                opacity: 1
            }
            PropertyChanges {
                target: notepad
                x: 750
            }
        },
        State {
            name: "recostep8"
            PropertyChanges {
                target: recostep_text1
                opacity: 0
            }
            PropertyChanges {
                target: recostep_image1
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
                target: recostep_text2
                opacity: 0
            }
            PropertyChanges {
                target: recostep_text3
                opacity: 0
            }
            PropertyChanges {
                target: recostep_text4
                opacity: 0.5
            }
            PropertyChanges {
                target: recostep_text5
                opacity: 0.5
            }
            PropertyChanges {
                target: recostep_text6
                opacity: 0.5
            }
            PropertyChanges {
                target: recostep_image6
                opacity: 1
            }
            PropertyChanges {
                target: recostep_text6
                opacity: 0.5
            }
            PropertyChanges {
                target: recostep_text7
                opacity: 0.5
            }
            PropertyChanges {
                target: recostep_text8
                opacity: 1
            }
            PropertyChanges {
                target: recostep_text6a
                opacity: 1
            }
            PropertyChanges {
                target: notepad
                x: 750
            }
        },
        State {
            name: "recostep9"
            PropertyChanges {
                target: recostep_text1
                opacity: 0
            }
            PropertyChanges {
                target: recostep_image1
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
                target: recostep_image7
                opacity: 1
            }
            PropertyChanges {
                target: recostep_text9
                opacity: 1
            }
            PropertyChanges {
                target: notepad
                x: 750
            }
        },
        State {
            name: "recostep10"
            PropertyChanges {
                target: recostep_text1
                opacity: 0
            }
            PropertyChanges {
                target: recostep_image1
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
                target: recostep_image8
                opacity: 1
            }
            PropertyChanges {
                target: recostep_text10
                opacity: 1
            }
            PropertyChanges {
                target: notepad
                x: 750
            }
        },
        State {
            name: "recostep11"
            PropertyChanges {
                target: recostep_text1
                opacity: 0
            }
            PropertyChanges {
                target: recostep_image1
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
                target: recostep_image9
                opacity: 1
            }
            PropertyChanges {
                target: recostep_text11
                opacity: 1
            }
            PropertyChanges {
                target: notepad
                x: 750
            }
        },
        State {
            name: "recostep12"
            PropertyChanges {
                target: recostep_text1
                opacity: 0
            }
            PropertyChanges {
                target: recostep_image1
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
                target: recostep_image10
                opacity: 1
            }
            PropertyChanges {
                target: recostep_text11
                opacity: 0.5
            }
            PropertyChanges {
                target: recostep_text12
                opacity: 1
            }
            PropertyChanges {
                target: notepad
                x: 750
            }
        },
        State {
            name: "recostep13"
            PropertyChanges {
                target: recostep_text1
                opacity: 0
            }
            PropertyChanges {
                target: recostep_image1
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
                target: recostep_image11
                opacity: 1
            }
            PropertyChanges {
                target: recostep_text13
                opacity: 1
            }
            PropertyChanges {
                target: notepad
                x: 750
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
