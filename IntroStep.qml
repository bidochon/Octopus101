import QtQuick 2.0

Rectangle {

    color: "transparent"

    // Notepad
    Image {
        id: step1_image3
        source: "images/notepad.png"
        y: parent.height - step1_image3.height - 180
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
        y: parent.height - step1_image2.height - 20
    }

    Image {
        source: "step1/text1.png"
        x: 100
        y: step1_image2.y - 60
    }

}
