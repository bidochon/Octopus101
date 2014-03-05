import QtQuick 2.0

Item {
    
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
        x: 38
        y: 15
        font.bold: true
        color: "white"
    }
    
    MouseArea {
        anchors.fill: parent
        hoverEnabled: true
        onPressed: buttonPress()
        onExited: buttonExit()
        onEntered: buttonEnter()
        onReleased: buttonRelease()
    }

}
