import QtQuick 2.0

Rectangle {

    color: "transparent"

    // Notepad
    Image {
        id: step1_image3
        source: "global_images/notepad.png"
        y: parent.height - step1_image3.height - 240
        x: parent.width - step1_image3.width - 30
    }

    Image {
        source: "step1/instructions.png"
        x: step1_image3.x + 100
        y: step1_image3.y + 140
    }

    // step wheel info
    Image {
        id: step1_image4
        source: "step1/stepwheel.png"
        x: 500
        y: 0
    }

    // octopus screenshot
    Image {
        id: step1_image1
        source: "step1/octopus.png"
        x: 50
        y: 20
    }

    Image {
        x: step1_image1.x + 50
        y: step1_image1.y + step1_image1.height - 45
        id: step1_octopus_label
        source: "step1/octopus_label.png"
    }

    // pop up window
    Image {
        id: step1_image2
        source: "step1/popupwindow_75.png"
        x: 50
        y: parent.height - step1_image2.height - 130
    }

    Image {
        source: "step1/text1.png"
        x: 100
        y: step1_image2.y - 60
    }

    Image {
        id: prev
        source: "global_images/prev_off.png"
        anchors.bottom: parent.bottom
        anchors.left: parent.left
    }

//    MouseArea {
//        anchors.fill: prev
//        hoverEnabled: true
//        onPressed: {
//            prev.source = "global_images/prev_click.png"
//        }
//        onEntered: {
//            prev.source = "global_images/prev_on.png"
//        }
//        onExited: {
//            prev.source = "global_images/prev_off.png"
//        }
//        onReleased: {
//            prev.source = "global_images/prev_on.png"
//        }
//    }

    Image {
        id: next
        source: "global_images/next_off.png"
        anchors.bottom: parent.bottom
        anchors.right: parent.right
    }

//    MouseArea {
//        anchors.fill: next
//        hoverEnabled: true
//        onPressed: {
//            next.source = "global_images/next_click.png"
//        }
//        onEntered: {
//            next.source = "global_images/next_on.png"
//        }
//        onExited: {
//            next.source = "global_images/next_off.png"
//        }
//        onReleased: {
//            next.source = "global_images/next_on.png"
//        }
//    }

    Image {
        id: prev_next_label
        source: "step1/prev_next_label.png"
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 25
        x: (parent.width - prev_next_label.width)/2
    }


}
