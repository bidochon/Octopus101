import QtQuick 2.0

Rectangle {

    id: prepastep
    color: "transparent"

    property variant statesNames: ["prepa1","prepa2","prepa3","prepa4","prepa5","prepa6","prepa7","prepa8"]
    property int currentState: 0

    Image {
        id: notepad
        source: "global_images/notepad.png"
        x: 50
        y: 50
    }

    MyText {
        id: prepa_text1
        x: notepad.x + 75
        y: notepad.y + 58
        width: notepad.width - 100
        text: "Start by writing down <b>the last angle</b> of the data set -> <b>181.5</b> here."
        opacity: 1
    }

    Image {
        id: prepa_image1
        source: "prepa/prepa_1.png"
        x: notepad.x + notepad.width
        y: notepad.y + 50
    }

    MyText {
        id: prepa_text2
        x: prepa_text1.x
        y: prepa_text1.y + prepa_text1.height + 20
        width: notepad.width - 100
        text: "Make sure the first angle is <b>0.0 degree</b>."
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
    MyText {
        id: prepa_text3
        x: prepa_text2.x
        y: prepa_text2.y + prepa_text2.height + 20
        width: notepad.width - 100
        text: "Write down the number of files between the last one and the one with an angle of <b>180 degrees</b>. This will be necessary when calculating the <b>sample tilt</b>."
    }

    Image {
        id: prepa_image3
        source: "prepa/prepa_3.png"
        x: prepa_image2.x
        y: prepa_image2.y + 20
        opacity: 0
    }

    // OB and DF are in the same folder
    MyText {
        id: prepa_text4
        x: prepa_text3.x
        y: prepa_text3.y + prepa_text3.height + 20
        width: notepad.width - 100
        text: "Make sure that the <b>Open Beam (OB)</b> and <b>Dark Field (DF)</b> files are in the same folder."
    }

    // Rename files
    MyText {
        id: prepa_text5
        x: prepa_text4.x
        y: prepa_text4.y + prepa_text4.height + 20
        width: notepad.width - 100
        text: "Because <b>data</b>, <b>OB</b> and <b>DF</b> must respect a special name format, we must first renamed those files:<br>   - <b>Open Beam</b> must be named <b>ob_####.tif</b><br>   - <b>Dark Field</b> must be named <b>df_####.tif</b>."
    }

    MyText {
        id: prepa_text6
        x: prepa_text1.x
        y: prepa_text1.y
        width: notepad.width - 100
        text: "Use the <b>Other functions > Rename files</b> feature to rename those files.<br><br><br><br><br>
           - <b>Move to the folder</b> that contain the data and <b>CLICK Current Folder</b>.<br><br><br><br><br>
           - Let's start with the Open Beam files by selecting the OB files.<br>
           - Define the <b>basename</b>: <b>OB_</b><br>;
           - Enter the <b>Shift numbers</b> to make sure the first name in the <b>New File Names</b> box is <b>OB_00.tif</b><br>
           - Adjusting the <b>Add Zeros</b> is optional here (but will be <b>very important when renaming the data</b>.";
    }

    Image {
        id: prepa_image4
        source: "prepa/rename_1.png"
        x: prepa_image1.x
        y: prepa_image1.y-90
        opacity: 0
    }

    Image {
        id: prepa_image5
        source: "prepa/rename_2.png"
        x: prepa_image4.x-180
        y: prepa_image4.y+prepa_image4.height + 15
        opacity: 0
    }

    Image {
        id: prepa_image6
        source: "prepa/rename_4.png"
        x: prepa_text6.x + 50
        y: prepa_text6.y + prepa_text6.height - 40
        opacity: 0
    }

    // Rename files with DF and Data
    MyText {
        id: prepa_text7
        x: prepa_text1.x
        y: prepa_text1.y
        width: notepad.width - 100
        text: "Repeat the process to rename the <b>Dark Field</b> files<br><br>
           - <b>Move to the folder</b> that contain the data and <b>CLICK Current Folder</b>.<br>
           - Select the DF files.<br>
           - Define the <b>basename</b>: <b>DF_####</b><br>;
           - Enter the <b>Shift numbers</b> to make sure the first name in the <b>New File Names</b> box is <b>DF_00.tif</b><br>
           - Adjusting the <b>Add Zeros</b> is optional here (but will be <b>very important when renaming the data</b>.<br>"
    }

    Image {
        id: prepa_image7
        source: "prepa/rename_3.png"
        x: prepa_image1.x-80
        y: prepa_image1.y
        opacity: 0
    }

    MyText {
        id: prepa_text8
        x: prepa_text1.x
        y: prepa_text1.y
        width: notepad.width - 100
        text: "And finally, repeat the process for the <b>Data</b> files<br>
            - <b>Move to the folder</b> that contain the data and <b>CLICK Current Folder</b>.<br>
            - Select the Data files.<br>
            - Define the <b>basename</b>: something like <b>myRun_</b><br>;
            - Enter the <b>Shift numbers</b> to make sure the first name in the <b>New File Names</b> box is <b>myRun_00.tif</b><br>
            - Adjusting the <b>Add Zeros</b> to make sure the files are kept in the right order:<br>
                ex: myRun_5.tif will be treated as a bigger number than myRun_49.tif<br>
                what we want is myRun_05.tif ! <br><br>
            <font color='red'>Here are the rules</font>:<br>
            <b>Number of data files</b> -> <b>Number of zeros</b><br>
               Between 10 and 100 -> 2<br>
               Between 100 and 1000 -> 3<br>
               Between 1000 and 10000 -> 4<br>"
    }

    Image {
        id: prepa_image8
        source: "prepa/rename_5.png"
        x: prepa_image7.x
        y: prepa_image1.y+20
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
            //            if (parent.id === prepastep) {
            currentState++
            prepastep.state = statesNames[currentState]
            //            }
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
                target: prepa_text1
                opacity: 0.5
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
                target: prepa_text1
                opacity: 0.5
            }
            PropertyChanges {
                target: prepa_text2
                opacity: 0.5
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
                target: prepa_text1
                opacity: 0.5
            }
            PropertyChanges {
                target: prepa_text2
                opacity: 0.5
            }
            PropertyChanges {
                target: prepa_image3
                opacity: 0
            }
            PropertyChanges {
                target: prepa_text3
                opacity: 0.5
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
        },
        State {
            name: "prepa5"
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
                target: prepa_text1
                opacity: 0.5
            }
            PropertyChanges {
                target: prepa_text2
                opacity: 0.5
            }
            PropertyChanges {
                target: prepa_image3
                opacity: 0
            }
            PropertyChanges {
                target: prepa_text3
                opacity: 0.5
            }
            PropertyChanges {
                target: prepa_text4
                opacity: 0.5
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
                target: prepa_text5
                opacity: 1
            }
            PropertyChanges {
                target: prepa_text6
                opacity: 0
            }
        },
        State {
            name: "prepa6"
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
                opacity: 0
            }
            PropertyChanges {
                target: prepa_text1
                opacity: 0
            }
            PropertyChanges {
                target: prepa_text2
                opacity: 0
            }
            PropertyChanges {
                target: prepa_image3
                opacity: 0
            }
            PropertyChanges {
                target: prepa_text3
                opacity: 0
            }
            PropertyChanges {
                target: prepa_text4
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
                target: prepa_text5
                opacity: 0
            }
            PropertyChanges {
                target: prepa_text6
                opacity: 1
            }
            PropertyChanges {
                target: prepa_image4
                opacity: 1
            }
            PropertyChanges {
                target: prepa_image5
                opacity: 1
            }
            PropertyChanges {
                target: prepa_image6
                opacity: 1
            }
        },
        State {
            name: "prepa7"
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
                opacity: 0
            }
            PropertyChanges {
                target: prepa_text1
                opacity: 0
            }
            PropertyChanges {
                target: prepa_text2
                opacity: 0
            }
            PropertyChanges {
                target: prepa_image3
                opacity: 0
            }
            PropertyChanges {
                target: prepa_text3
                opacity: 0
            }
            PropertyChanges {
                target: prepa_text4
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
                target: prepa_text5
                opacity: 0
            }
            PropertyChanges {
                target: prepa_text6
                opacity: 0
            }
            PropertyChanges {
                target: prepa_image4
                opacity: 0
            }
            PropertyChanges {
                target: prepa_image5
                opacity: 0
            }
            PropertyChanges {
                target: prepa_image6
                opacity: 0
            }
            PropertyChanges {
                target: prepa_text7
                opacity: 1
            }
            PropertyChanges {
                target: prepa_image7
                opacity: 1
            }
        },
        State {
            name: "prepa8"
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
                opacity: 0
            }
            PropertyChanges {
                target: prepa_text1
                opacity: 0
            }
            PropertyChanges {
                target: prepa_text2
                opacity: 0
            }
            PropertyChanges {
                target: prepa_image3
                opacity: 0
            }
            PropertyChanges {
                target: prepa_text3
                opacity: 0
            }
            PropertyChanges {
                target: prepa_text4
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
                target: prepa_text5
                opacity: 0
            }
            PropertyChanges {
                target: prepa_text6
                opacity: 0
            }
            PropertyChanges {
                target: prepa_image4
                opacity: 0
            }
            PropertyChanges {
                target: prepa_image5
                opacity: 0
            }
            PropertyChanges {
                target: prepa_image6
                opacity: 0
            }
            PropertyChanges {
                target: prepa_text7
                opacity: 0
            }
            PropertyChanges {
                target: prepa_text8
                opacity: 1
            }
            PropertyChanges {
                target: prepa_image7
                opacity: 0
            }
            PropertyChanges {
                target: prepa_image8
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
