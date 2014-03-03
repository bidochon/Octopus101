import QtQuick 2.0

Item {

//    property alias topMenuWidth : toolbarBackground.width

    Image {
        id: desktop
        x: -1
        source: "images/desktop.png"
        z: 0
    }

    Rectangle {
        id: toolbarBackground
        width: 900
        height: 80
        //        color: "blue"
        //        anchors.top: toolbar.bottom
        anchors.top: toolbar.top - 10
        //        anchors.topMargin: -40
        color: "transparent"
        opacity: 0.5

        Image {
            width: parent.width
            height: parent.height
            source: "buttons/menuBarWeel.png"
        }
        //        gradient: Gradient {
        //            GradientStop { position: 0.1; color: "blue" }
        //            GradientStop { position: 0.9; color: "white" }
        //            GradientStop { position: 0.95; color: "blue" }
        //        }

    }

    Rectangle {
        id: toolbar
        anchors.top: parent.top
        anchors.topMargin: 10
        anchors.left: parent.left
        anchors.right: parent.right
        height: 90
        width: parent.width
        color: "transparent"

        Rectangle {

            width: 900
            height: toolbar.height
            z: 1
            color: "transparent"

            Flickable {

                x: 10
                anchors.top: toolbar.top - 20
                anchors.left: toolbar.left
                anchors.right: toolbar.right
                height: toolbar.height
                width: toolbar.width
                flickableDirection: Flickable.HorizontalFlick
                contentHeight: toolbar.height
                contentWidth: 1000
                boundsBehavior: Flickable.StopAtBounds

                // INTRO button
                ToolbarButton {
                    id: intro
                    buttonText: "INTRO"
                    x: -10
                    isSelected: true

                    onButtonPress: {
                        textY += 1;
                        {
                            if (!isSelected) {
                                buttonImageSource= "buttons/MenuBar_clicked.png";
                                isSelected = true;
                                step1.buttonImageSource = "buttons/MenuBar_off.png";
                                step1.isSelected = false;
                                step2.buttonImageSource = "buttons/MenuBar_off.png";
                                step2.isSelected = false;
                                step3.buttonImageSource = "buttons/MenuBar_off.png";
                                step3.isSelected = false;
                                step4.buttonImageSource = "buttons/MenuBar_off.png";
                                step4.isSelected = false;
                                step5.buttonImageSource = "buttons/MenuBar_off.png";
                                step5.isSelected = false;
                                step6.buttonImageSource = "buttons/MenuBar_off.png";
                                step6.isSelected = false;

                            } else {
                                buttonImageSource = "buttons/MenuBar_selected.png";
                            }
                        }
                    }

                    onButtonExit: {
                        buttonImageSource = (!isSelected) ? "buttons/MenuBar_off.png" : "buttons/MenuBar_selected.png";
                    }

                    onButtonEnter: {
                        buttonImageSource = (!isSelected) ? "buttons/MenuBar_over.png" : "buttons/MenuBar_selected.png";
                    }

                    onButtonRelease: {
                        textY -= 1;
                        if (!isSelected) {
                            buttonImageSource = "buttons/MenuBar_over.png";
                        } else {
                            buttonImageSource = "buttons/MenuBar_selected.png";
                        }
                    }
                }

                // STEP1 button
                ToolbarButton {
                    id: step1
                    buttonText: "STEP 1"
                    x: {140}
                    isSelected: false

                    onButtonPress: {
                        textY += 1;
                        {
                            if (!isSelected) {
                                buttonImageSource= "buttons/MenuBar_clicked.png";
                                isSelected = true;
                                intro.buttonImageSource = "buttons/MenuBar_off.png";
                                intro.isSelected = false;
                                step2.buttonImageSource = "buttons/MenuBar_off.png";
                                step2.isSelected = false;
                                step3.buttonImageSource = "buttons/MenuBar_off.png";
                                step3.isSelected = false;
                                step4.buttonImageSource = "buttons/MenuBar_off.png";
                                step4.isSelected = false;
                                step5.buttonImageSource = "buttons/MenuBar_off.png";
                                step5.isSelected = false;
                                step6.buttonImageSource = "buttons/MenuBar_off.png";
                                step6.isSelected = false;
                            } else {
                                buttonImageSource = "buttons/MenuBar_selected.png";
                            }
                        }
                    }

                    onButtonExit: {
                        buttonImageSource = (!isSelected) ? "buttons/MenuBar_off.png" : "buttons/MenuBar_selected.png";
                    }

                    onButtonEnter: {
                        buttonImageSource = (!isSelected) ? "buttons/MenuBar_over.png" : "buttons/MenuBar_selected.png";
                    }

                    onButtonRelease: {
                        textY -= 1;
                        if (!isSelected) {
                            buttonImageSource = "buttons/MenuBar_over.png";
                        } else {
                            buttonImageSource = "buttons/MenuBar_selected.png";
                        }
                    }
                }

                // STEP2 button
                ToolbarButton {
                    id: step2
                    buttonText: "STEP 2"
                    x: {10+2*130}
                    isSelected: false

                    onButtonPress: {
                        textY += 1;
                        {
                            if (!isSelected) {
                                buttonImageSource= "buttons/MenuBar_clicked.png";
                                isSelected = true;
                                intro.buttonImageSource = "buttons/MenuBar_off.png";
                                intro.isSelected = false;
                                step1.buttonImageSource = "buttons/MenuBar_off.png";
                                step1.isSelected = false;
                                step3.buttonImageSource = "buttons/MenuBar_off.png";
                                step3.isSelected = false;
                                step4.buttonImageSource = "buttons/MenuBar_off.png";
                                step4.isSelected = false;
                                step5.buttonImageSource = "buttons/MenuBar_off.png";
                                step5.isSelected = false;
                                step6.buttonImageSource = "buttons/MenuBar_off.png";
                                step6.isSelected = false;

                            } else {
                                buttonImageSource = "buttons/MenuBar_selected.png";
                            }
                        }
                    }

                    onButtonExit: {
                        buttonImageSource = (!isSelected) ? "buttons/MenuBar_off.png" : "buttons/MenuBar_selected.png";
                    }

                    onButtonEnter: {
                        buttonImageSource = (!isSelected) ? "buttons/MenuBar_over.png" : "buttons/MenuBar_selected.png";
                    }

                    onButtonRelease: {
                        textY -= 1;
                        if (!isSelected) {
                            buttonImageSource = "buttons/MenuBar_over.png";
                        } else {
                            buttonImageSource = "buttons/MenuBar_selected.png";
                        }
                    }
                }

                // STEP3 button
                ToolbarButton {
                    id: step3
                    buttonText: "STEP 3"
                    x: {10+3*130}
                    isSelected: false

                    onButtonPress: {
                        textY += 1;
                        {
                            if (!isSelected) {
                                buttonImageSource= "buttons/MenuBar_clicked.png";
                                isSelected = true;
                                intro.buttonImageSource = "buttons/MenuBar_off.png";
                                intro.isSelected = false;
                                step1.buttonImageSource = "buttons/MenuBar_off.png";
                                step1.isSelected = false;
                                step2.buttonImageSource = "buttons/MenuBar_off.png";
                                step2.isSelected = false;
                                step4.buttonImageSource = "buttons/MenuBar_off.png";
                                step4.isSelected = false;
                                step5.buttonImageSource = "buttons/MenuBar_off.png";
                                step5.isSelected = false;
                                step6.buttonImageSource = "buttons/MenuBar_off.png";
                                step6.isSelected = false;
                            } else {
                                buttonImageSource = "buttons/MenuBar_selected.png";
                            }
                        }
                    }

                    onButtonExit: {
                        buttonImageSource = (!isSelected) ? "buttons/MenuBar_off.png" : "buttons/MenuBar_selected.png";
                    }

                    onButtonEnter: {
                        buttonImageSource = (!isSelected) ? "buttons/MenuBar_over.png" : "buttons/MenuBar_selected.png";
                    }

                    onButtonRelease: {
                        textY -= 1;
                        if (!isSelected) {
                            buttonImageSource = "buttons/MenuBar_over.png";
                        } else {
                            buttonImageSource = "buttons/MenuBar_selected.png";
                        }
                    }
                }

                // STEP4 button
                ToolbarButton {
                    id: step4
                    buttonText: "STEP 4"
                    x: {10+4*130}
                    isSelected: false

                    onButtonPress: {
                        textY += 1;
                        {
                            if (!isSelected) {
                                buttonImageSource= "buttons/MenuBar_clicked.png";
                                isSelected = true;
                                intro.buttonImageSource = "buttons/MenuBar_off.png";
                                intro.isSelected = false;
                                intro.buttonImageSource = "buttons/MenuBar_off.png";
                                intro.isSelected = false;
                                step1.buttonImageSource = "buttons/MenuBar_off.png";
                                step1.isSelected = false;
                                step2.buttonImageSource = "buttons/MenuBar_off.png";
                                step2.isSelected = false;
                                step3.buttonImageSource = "buttons/MenuBar_off.png";
                                step3.isSelected = false;
                                step5.buttonImageSource = "buttons/MenuBar_off.png";
                                step5.isSelected = false;
                                step6.buttonImageSource = "buttons/MenuBar_off.png";
                                step6.isSelected = false;
                            } else {
                                buttonImageSource = "buttons/MenuBar_selected.png";
                            }
                        }
                    }

                    onButtonExit: {
                        buttonImageSource = (!isSelected) ? "buttons/MenuBar_off.png" : "buttons/MenuBar_selected.png";
                    }

                    onButtonEnter: {
                        buttonImageSource = (!isSelected) ? "buttons/MenuBar_over.png" : "buttons/MenuBar_selected.png";
                    }

                    onButtonRelease: {
                        textY -= 1;
                        if (!isSelected) {
                            buttonImageSource = "buttons/MenuBar_over.png";
                        } else {
                            buttonImageSource = "buttons/MenuBar_selected.png";
                        }
                    }
                }
                // STEP5 button
                ToolbarButton {
                    id: step5
                    buttonText: "STEP 5"
                    x: {10+5*130}
                    isSelected: false

                    onButtonPress: {
                        textY += 1;
                        {
                            if (!isSelected) {
                                buttonImageSource= "buttons/MenuBar_clicked.png";
                                isSelected = true;
                                intro.buttonImageSource = "buttons/MenuBar_off.png";
                                intro.isSelected = false;
                                intro.buttonImageSource = "buttons/MenuBar_off.png";
                                intro.isSelected = false;
                                step1.buttonImageSource = "buttons/MenuBar_off.png";
                                step1.isSelected = false;
                                step2.buttonImageSource = "buttons/MenuBar_off.png";
                                step2.isSelected = false;
                                step4.buttonImageSource = "buttons/MenuBar_off.png";
                                step4.isSelected = false;
                                step3.buttonImageSource = "buttons/MenuBar_off.png";
                                step3.isSelected = false;
                                step6.buttonImageSource = "buttons/MenuBar_off.png";
                                step6.isSelected = false;
                            } else {
                                buttonImageSource = "buttons/MenuBar_selected.png";
                            }
                        }
                    }

                    onButtonExit: {
                        buttonImageSource = (!isSelected) ? "buttons/MenuBar_off.png" : "buttons/MenuBar_selected.png";
                    }

                    onButtonEnter: {
                        buttonImageSource = (!isSelected) ? "buttons/MenuBar_over.png" : "buttons/MenuBar_selected.png";
                    }

                    onButtonRelease: {
                        textY -= 1;
                        if (!isSelected) {
                            buttonImageSource = "buttons/MenuBar_over.png";
                        } else {
                            buttonImageSource = "buttons/MenuBar_selected.png";
                        }
                    }
                }
                // STEP6 button
                ToolbarButton {
                    id: step6
                    buttonText: "STEP 6"
                    x: {10+6*130}
                    isSelected: false

                    onButtonPress: {
                        textY += 1;
                        {
                            if (!isSelected) {
                                buttonImageSource= "buttons/MenuBar_clicked.png";
                                isSelected = true;
                                intro.buttonImageSource = "buttons/MenuBar_off.png";
                                intro.isSelected = false;
                                intro.buttonImageSource = "buttons/MenuBar_off.png";
                                intro.isSelected = false;
                                step1.buttonImageSource = "buttons/MenuBar_off.png";
                                step1.isSelected = false;
                                step2.buttonImageSource = "buttons/MenuBar_off.png";
                                step2.isSelected = false;
                                step4.buttonImageSource = "buttons/MenuBar_off.png";
                                step4.isSelected = false;
                                step5.buttonImageSource = "buttons/MenuBar_off.png";
                                step5.isSelected = false;
                                step3.buttonImageSource = "buttons/MenuBar_off.png";
                                step3.isSelected = false;
                            } else {
                                buttonImageSource = "buttons/MenuBar_selected.png";
                            }
                        }
                    }

                    onButtonExit: {
                        buttonImageSource = (!isSelected) ? "buttons/MenuBar_off.png" : "buttons/MenuBar_selected.png";
                    }

                    onButtonEnter: {
                        buttonImageSource = (!isSelected) ? "buttons/MenuBar_over.png" : "buttons/MenuBar_selected.png";
                    }

                    onButtonRelease: {
                        textY -= 1;
                        if (!isSelected) {
                            buttonImageSource = "buttons/MenuBar_over.png";
                        } else {
                            buttonImageSource = "buttons/MenuBar_selected.png";
                        }
                    }
                }
            }
        }
    }

}
