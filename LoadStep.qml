import QtQuick 2.0

Rectangle {

    id: loadstep
    color: "transparent"

    property variant loadstep_statesNames: ["loadstep1","loadstep2","loadstep3","loadstep4","loadstep5","loadstep6","loadstep7","loadstep8","loadstep9","loadstep10","loadstep11"]
    property int loadstep_currentState: 0

    Image {
        id: notepad
        source: "global_images/notepad.png"
        x: 600
        y: 50
    }

    // import the data
    MyText {
        id: loadstep_text1
        x: notepad.x + 75
        y: notepad.y + 58
        width: notepad.width -100
        text: "Now we need to <b>import the data</b> into Octopus."
        opacity: 1
    }

    Image {
        id: loadstep_image1
        source: "loadstep/image1.png"
        x: 55
        y: 57
    }

    MyText {
        id: loadstep_text2
        x: loadstep_text1.x
        y: loadstep_text1.y + loadstep_text1.height + 10
        width: notepad.width -100
        text: "Select the right folder and click <b>Current Folder</b>."
    }

    Image {
        id: loadstep_image2
        source: "loadstep/image2.png"
        x: 45
        y: 27
        opacity: 0
    }

    MyText {
        id: loadstep_text3
        x: loadstep_text2.x
        y: loadstep_text2.y + loadstep_text2.height + 10
        width: notepad.width -100
        text: "Because Octopus only work with <b>tiff</b> files, the program is going to ask you if you want to convert them to TIFF. Click <b>OK</b>.<br><br><br>
                 - Select the same folder again (that contain all your data)<br> and click <b>Current Folder</b>"
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

    // converted folder name
    MyText {
        id: loadstep_text4
        x: loadstep_text1.x
        y: loadstep_text1.y
        width: notepad.width -100
        text: "Accept the default folder named <b>converted</b> proposed (where the TIFF files will be created)."
    }

    Image {
        id: loadstep_image5
        source: "loadstep/image5.png"
        x: 35
        y: loadstep_image1.y + 15
        opacity: 0
    }

    // converted images window
    MyText {
        id: loadstep_text5
        x: loadstep_text4.x
        y: loadstep_text4.y + loadstep_text4.height + 20
        width: notepad.width -100
        text: "The <b>Convert Images</b> window will show up.<br><br>
        <font color='red'>WARNING</font>: Make sure you have <b>16 bit tiff</b> selected as Output format.<br>
        Click <b>Convert all</b>"
    }

    Image {
        id: loadstep_image6
        source: "loadstep/image7.png"
        x: 55
        y: loadstep_image1.y + 180
        opacity: 0
    }

    // converted images window
    MyText {
        id: loadstep_text6
        x: loadstep_text5.x
        y: loadstep_text5.y + loadstep_text5.height + 20
        width: notepad.width -100
        text: "Make sure you select <br><font color='red'><b>No - save current gray values without conversion</b></font>."
    }

    Image {
        id: loadstep_image7
        source: "loadstep/image8.png"
        x: 80
        y: loadstep_image1.y + 190
        opacity: 0
    }

    // conversion start, selection of OB
    MyText {
        id: loadstep_text7
        x: loadstep_text1.x
        y: loadstep_text1.y
        width: notepad.width -100
        text: "The conversion will start... BE PATIENT !<br><br>
        Then you will need to select the <b>first Open Beam</b> file."
    }

    Image {
        id: loadstep_image8
        source: "loadstep/image9.png"
        x: 100
        y: loadstep_image1.y - 30
        opacity: 0
    }

    Image {
        id: loadstep_image9
        source: "loadstep/image10.png"
        x: 50
        y: loadstep_image8.y + loadstep_image8.height - 60
        opacity: 0
    }

    // selection of DF
    MyText {
        id: loadstep_text8
        x: loadstep_text1.x
        y: loadstep_text7.y + loadstep_text7.height + 20
        width: notepad.width -100
        text: "Now, you need to select the <b>first Dark Field (Dark Image)</b> file."
    }

    Image {
        id: loadstep_image10
        source: "loadstep/image11.png"
        x: 100
        y: loadstep_image1.y - 70
        opacity: 0
    }

    Image {
        id: loadstep_image11
        source: "loadstep/image12.png"
        x: 50
        y: loadstep_image10.y + loadstep_image10.height - 60
        opacity: 0
    }

    // check input
    MyText {
        id: loadstep_text9
        x: loadstep_text1.x
        y: loadstep_text1.y
        width: notepad.width -100
        text: "Check in the <b>File Selection</b> window that all the <b>Data</b>, <b>Open Beam</b> and <b>Dark Field</b> files have been loaded."
    }

    Image {
        id: loadstep_image12
        source: "loadstep/image13.png"
        x: 100
        y: loadstep_image1.y
        opacity: 0
    }

    // define last angle
    MyText {
        id: loadstep_text10
        x: loadstep_text9.x
        y: loadstep_text9.y + loadstep_text9.height + 20
        width: notepad.width -100
        text: "Enter in the <b>Last Angle</b> box, the last angle position that you recorded in the <b>Preparation Step</b>, then click <b>OK</b>."
    }

    Image {
        id: loadstep_image13
        source: "loadstep/image14.png"
        x: 130
        y: loadstep_image12.y + loadstep_image12.height - 120
        opacity: 0
    }

    // recap
    MyText {
        id: loadstep_text11
        x: loadstep_text10.x
        y: loadstep_text10.y + loadstep_text10.height + 20
        width: notepad.width -100
        text: "The loading step is done! Just check one more time the number of <b>Data</b>, <b>Open Beam</b> and <b>Dark Field</b> files."
    }

    Image {
        id: loadstep_image14
        source: "loadstep/image15.png"
        x: 50
        y: 160
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
        },
        State {
            name: "loadstep4"
            PropertyChanges {
                target: loadstep_text1
                opacity: 0
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
                opacity: 0
            }
            PropertyChanges {
                target: loadstep_text3
                opacity: 0
            }
            PropertyChanges {
                target: loadstep_image3
                opacity: 0
            }
            PropertyChanges {
                target: loadstep_image4
                opacity: 0
            }
            PropertyChanges {
                target: loadstep_image5
                opacity: 1
            }
            PropertyChanges {
                target: loadstep_text4
                opacity: 1
            }
        },
        State {
            name: "loadstep5"
            PropertyChanges {
                target: loadstep_text1
                opacity: 0
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
                opacity: 0
            }
            PropertyChanges {
                target: loadstep_text3
                opacity: 0
            }
            PropertyChanges {
                target: loadstep_image3
                opacity: 0
            }
            PropertyChanges {
                target: loadstep_image4
                opacity: 0
            }
            PropertyChanges {
                target: loadstep_image5
                opacity: 0
            }
            PropertyChanges {
                target: loadstep_text4
                opacity: 0.5
            }
            PropertyChanges {
                target: loadstep_image6
                opacity: 1
            }
            PropertyChanges {
                target: loadstep_text5
                opacity: 1
            }
        },
        State {
            name: "loadstep6"
            PropertyChanges {
                target: loadstep_text1
                opacity: 0
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
                opacity: 0
            }
            PropertyChanges {
                target: loadstep_text3
                opacity: 0
            }
            PropertyChanges {
                target: loadstep_image3
                opacity: 0
            }
            PropertyChanges {
                target: loadstep_image4
                opacity: 0
            }
            PropertyChanges {
                target: loadstep_image5
                opacity: 0
            }
            PropertyChanges {
                target: loadstep_text4
                opacity: 0.5
            }
            PropertyChanges {
                target: loadstep_image6
                opacity: 0
            }
            PropertyChanges {
                target: loadstep_text5
                opacity: 0.5
            }
            PropertyChanges {
                target: loadstep_image7
                opacity: 1
            }
            PropertyChanges {
                target: loadstep_text6
                opacity: 1
            }
        },
        State {
            name: "loadstep7"
            PropertyChanges {
                target: loadstep_text1
                opacity: 0
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
                opacity: 0
            }
            PropertyChanges {
                target: loadstep_text3
                opacity: 0
            }
            PropertyChanges {
                target: loadstep_image3
                opacity: 0
            }
            PropertyChanges {
                target: loadstep_image4
                opacity: 0
            }
            PropertyChanges {
                target: loadstep_image5
                opacity: 0
            }
            PropertyChanges {
                target: loadstep_text4
                opacity: 0
            }
            PropertyChanges {
                target: loadstep_image6
                opacity: 0
            }
            PropertyChanges {
                target: loadstep_text5
                opacity: 0
            }
            PropertyChanges {
                target: loadstep_image7
                opacity: 0
            }
            PropertyChanges {
                target: loadstep_text6
                opacity: 0
            }
            PropertyChanges {
                target: loadstep_image8
                opacity: 1
            }
            PropertyChanges {
                target: loadstep_image9
                opacity: 1
            }
            PropertyChanges {
                target: loadstep_text7
                opacity: 1
            }
        },
        State {
            name: "loadstep8"
            PropertyChanges {
                target: loadstep_text1
                opacity: 0
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
                opacity: 0
            }
            PropertyChanges {
                target: loadstep_text3
                opacity: 0
            }
            PropertyChanges {
                target: loadstep_image3
                opacity: 0
            }
            PropertyChanges {
                target: loadstep_image4
                opacity: 0
            }
            PropertyChanges {
                target: loadstep_image5
                opacity: 0
            }
            PropertyChanges {
                target: loadstep_text4
                opacity: 0
            }
            PropertyChanges {
                target: loadstep_image6
                opacity: 0
            }
            PropertyChanges {
                target: loadstep_text5
                opacity: 0
            }
            PropertyChanges {
                target: loadstep_image7
                opacity: 0
            }
            PropertyChanges {
                target: loadstep_text6
                opacity: 0
            }
            PropertyChanges {
                target: loadstep_image8
                opacity: 0
            }
            PropertyChanges {
                target: loadstep_image9
                opacity: 0
            }
            PropertyChanges {
                target: loadstep_text7
                opacity: 0.5
            }
            PropertyChanges {
                target: loadstep_image10
                opacity: 1
            }
            PropertyChanges {
                target: loadstep_image11
                opacity: 1
            }
            PropertyChanges {
                target: loadstep_text8
                opacity: 1
            }
        },
        State {
            name: "loadstep9"
            PropertyChanges {
                target: loadstep_text1
                opacity: 0
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
                opacity: 0
            }
            PropertyChanges {
                target: loadstep_text3
                opacity: 0
            }
            PropertyChanges {
                target: loadstep_image3
                opacity: 0
            }
            PropertyChanges {
                target: loadstep_image4
                opacity: 0
            }
            PropertyChanges {
                target: loadstep_image5
                opacity: 0
            }
            PropertyChanges {
                target: loadstep_text4
                opacity: 0
            }
            PropertyChanges {
                target: loadstep_image6
                opacity: 0
            }
            PropertyChanges {
                target: loadstep_text5
                opacity: 0
            }
            PropertyChanges {
                target: loadstep_image7
                opacity: 0
            }
            PropertyChanges {
                target: loadstep_text6
                opacity: 0
            }
            PropertyChanges {
                target: loadstep_image8
                opacity: 0
            }
            PropertyChanges {
                target: loadstep_image9
                opacity: 0
            }
            PropertyChanges {
                target: loadstep_text7
                opacity: 0
            }
            PropertyChanges {
                target: loadstep_image10
                opacity: 0
            }
            PropertyChanges {
                target: loadstep_image11
                opacity: 0
            }
            PropertyChanges {
                target: loadstep_text8
                opacity: 0
            }
            PropertyChanges {
                target: loadstep_image12
                opacity: 1
            }
            PropertyChanges {
                target: loadstep_text9
                opacity: 1
            }

        },
        State {
            name: "loadstep10"
            PropertyChanges {
                target: loadstep_text1
                opacity: 0
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
                opacity: 0
            }
            PropertyChanges {
                target: loadstep_text3
                opacity: 0
            }
            PropertyChanges {
                target: loadstep_image3
                opacity: 0
            }
            PropertyChanges {
                target: loadstep_image4
                opacity: 0
            }
            PropertyChanges {
                target: loadstep_image5
                opacity: 0
            }
            PropertyChanges {
                target: loadstep_text4
                opacity: 0
            }
            PropertyChanges {
                target: loadstep_image6
                opacity: 0
            }
            PropertyChanges {
                target: loadstep_text5
                opacity: 0
            }
            PropertyChanges {
                target: loadstep_image7
                opacity: 0
            }
            PropertyChanges {
                target: loadstep_text6
                opacity: 0
            }
            PropertyChanges {
                target: loadstep_image8
                opacity: 0
            }
            PropertyChanges {
                target: loadstep_image9
                opacity: 0
            }
            PropertyChanges {
                target: loadstep_text7
                opacity: 0
            }
            PropertyChanges {
                target: loadstep_image10
                opacity: 0
            }
            PropertyChanges {
                target: loadstep_image11
                opacity: 0
            }
            PropertyChanges {
                target: loadstep_text8
                opacity: 0
            }
            PropertyChanges {
                target: loadstep_image12
                opacity: 1
            }
            PropertyChanges {
                target: loadstep_text9
                opacity: 0.5
            }
            PropertyChanges {
                target: loadstep_image13
                opacity: 1
            }
            PropertyChanges {
                target: loadstep_text10
                opacity: 1
            }
        },
        State {
            name: "loadstep11"
            PropertyChanges {
                target: loadstep_text1
                opacity: 0
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
                opacity: 0
            }
            PropertyChanges {
                target: loadstep_text3
                opacity: 0
            }
            PropertyChanges {
                target: loadstep_image3
                opacity: 0
            }
            PropertyChanges {
                target: loadstep_image4
                opacity: 0
            }
            PropertyChanges {
                target: loadstep_image5
                opacity: 0
            }
            PropertyChanges {
                target: loadstep_text4
                opacity: 0
            }
            PropertyChanges {
                target: loadstep_image6
                opacity: 0
            }
            PropertyChanges {
                target: loadstep_text5
                opacity: 0
            }
            PropertyChanges {
                target: loadstep_image7
                opacity: 0
            }
            PropertyChanges {
                target: loadstep_text6
                opacity: 0
            }
            PropertyChanges {
                target: loadstep_image8
                opacity: 0
            }
            PropertyChanges {
                target: loadstep_image9
                opacity: 0
            }
            PropertyChanges {
                target: loadstep_text7
                opacity: 0
            }
            PropertyChanges {
                target: loadstep_image10
                opacity: 0
            }
            PropertyChanges {
                target: loadstep_image11
                opacity: 0
            }
            PropertyChanges {
                target: loadstep_text8
                opacity: 0
            }
            PropertyChanges {
                target: loadstep_image12
                opacity: 0
            }
            PropertyChanges {
                target: loadstep_text9
                opacity: 0.5
            }
            PropertyChanges {
                target: loadstep_image13
                opacity: 0
            }
            PropertyChanges {
                target: loadstep_text10
                opacity: 0.5
            }
            PropertyChanges {
                target: loadstep_image14
                opacity: 1
            }
            PropertyChanges {
                target: loadstep_text11
                opacity: 1
            }
            PropertyChanges {
                target: loadstep_next
                opacity: 0
            }
            PropertyChanges {
                target: loadstep_next_mousearea
                enabled: false
            }
        }
    ]

}
