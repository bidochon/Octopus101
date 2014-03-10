import QtQuick 2.2

Text {

    wrapMode: Text.WordWrap
    font.family: "Helvetica"
    font.pointSize: {
        if (Qt.platform.os === 'osx') {
            return 14;
        } else {
            return 10;
        }
    }
    color: "black"
    lineHeight: 1.5
    opacity: 0

}


