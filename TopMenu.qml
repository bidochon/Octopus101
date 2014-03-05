import QtQuick 2.0

Item {

    property variant stepNames: ["INTRO"]

    Rectangle {
        id: toolbarBackground
        width: parent.width
        height: 80
        color: "transparent"
        opacity: 0.5

        Image {
            width: parent.width
            height: parent.height
            source: "buttons/menuBarWeel.png"
        }
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

            id: flickable_rectangle
            width: 900
            height: toolbar.height
            z: 1
            color: "transparent"

            Flickable {

                x: 10
                height: toolbar.height
                width: toolbar.width
                flickableDirection: Flickable.HorizontalFlick
                contentHeight: toolbar.height
                contentWidth: 1250
                boundsBehavior: Flickable.StopAtBounds

                // INTRO button
                ToolbarButton {
                    id: intro
                    buttonText: stepNames[0]
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
                                step7.buttonImageSource = "buttons/MenuBar_off.png";
                                step7.isSelected = false;
                                step8.buttonImageSource = "buttons/MenuBar_off.png";
                                step8.isSelected = false;
                                windowrectangle.state = "intro";

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
                    buttonText: "Preparation"
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
                                step7.buttonImageSource = "buttons/MenuBar_off.png";
                                step7.isSelected = false;
                                step8.buttonImageSource = "buttons/MenuBar_off.png";
                                step8.isSelected = false;
                                windowrectangle.state = "prepa";

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
                    buttonText: "Load"
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
                                step7.buttonImageSource = "buttons/MenuBar_off.png";
                                step7.isSelected = false;
                                step8.buttonImageSource = "buttons/MenuBar_off.png";
                                step8.isSelected = false;
                                windowrectangle.state = "loadstep";
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
                    buttonText: "Crop"
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
                                step7.buttonImageSource = "buttons/MenuBar_off.png";
                                step7.isSelected = false;
                                step8.buttonImageSource = "buttons/MenuBar_off.png";
                                step8.isSelected = false;
                                windowrectangle.state = "crop";
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
                    buttonText: "Filter"
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
                                step7.buttonImageSource = "buttons/MenuBar_off.png";
                                step7.isSelected = false;
                                step8.buttonImageSource = "buttons/MenuBar_off.png";
                                step8.isSelected = false;
                                windowrectangle.state = "filter";
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
                    buttonText: "Normalize"
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
                                step7.buttonImageSource = "buttons/MenuBar_off.png";
                                step7.isSelected = false;
                                step8.buttonImageSource = "buttons/MenuBar_off.png";
                                step8.isSelected = false;
                                windowrectangle.state = "normalize";
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
                    buttonText: "Tilt"
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
                                step7.buttonImageSource = "buttons/MenuBar_off.png";
                                step7.isSelected = false;
                                step8.buttonImageSource = "buttons/MenuBar_off.png";
                                step8.isSelected = false;
                                windowrectangle.state = "tilt";
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

                // STEP7 button
                ToolbarButton {
                    id: step7
                    buttonText: "Sinogram"
                    x: {10+7*130}
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
                                step3.buttonImageSource = "buttons/MenuBar_off.png";
                                step3.isSelected = false;
                                step6.buttonImageSource = "buttons/MenuBar_off.png";
                                step6.isSelected = false;
                                step8.buttonImageSource = "buttons/MenuBar_off.png";
                                step8.isSelected = false;
                                windowrectangle.state = "sinogram";
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


                // STEP8 button
                ToolbarButton {
                    id: step8
                    buttonText: "Reconstruct."
                    x: {10+8*130}
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
                                step3.buttonImageSource = "buttons/MenuBar_off.png";
                                step3.isSelected = false;
                                step4.buttonImageSource = "buttons/MenuBar_off.png";
                                step4.isSelected = false;
                                step5.buttonImageSource = "buttons/MenuBar_off.png";
                                step5.isSelected = false;
                                step6.buttonImageSource = "buttons/MenuBar_off.png";
                                step6.isSelected = false;
                                step7.buttonImageSource = "buttons/MenuBar_off.png";
                                step7.isSelected = false;
                                windowrectangle.state = "reconstruction";

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
