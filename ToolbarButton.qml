import QtQuick 2.0

Item {
    
    //    property alias id: id
    property alias buttonText: value.text
    property bool isSelected
    property string stepSelected;
    property alias buttonImageSource: buttonImage.source
    property alias textY: value.y
    opacity: 1
    z: 2
    
    width: 130
    height: 50
    
    signal buttonPress()
    signal buttonExit()
    signal buttonEnter()
    signal buttonRelease()

    Image {
        id: buttonImage
        y: -5
        source: {
            (isSelected) ? "buttons/MenuBar_selected.png" : "buttons/MenuBar_off.png";
        }
    }
    
    Text {
        id: value
        x: 45
        y: 15
        font.bold: true
        color: "white"
    }
    
    MouseArea {
        anchors.fill: parent
        hoverEnabled: true
        onPressed: buttonPress()
//        {
//            if (!isSelected) {
//                buttonImage.source = "buttons/MenuBar_clicked.png";
//                value.y += 1;
//                stepSelected = value.text;
//            } else {
//                buttonImage.source = "buttons/MenuBar_selected.png";
//            }
//        }
        onExited: buttonExit()
//        {
//            buttonImage.source = (!isSelected) ? "buttons/MenuBar_off.png" : "buttons/MenuBar_selected.png";
//        }
        onEntered: buttonEnter()
//        {
//            buttonImage.source = (!isSelected) ? "buttons/MenuBar_over.png" : "buttons/MenuBar_selected.png";
//        }
        onReleased: buttonRelease()
//        {
//            if (!isSelected) {
//                buttonImage.source = "buttons/MenuBar_over.png";
//                value.y -= 1;
//            } else {
//                buttonImage.source = "buttons/MenuBar_selected.png";
//            }
//        }
    }

}
