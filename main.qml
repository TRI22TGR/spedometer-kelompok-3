import QtQuick 2.12
import QtQuick.Window 2.12
import QtQml 2.3

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle {
        width: parent.width
        height: parent.height

        color: "grey"

        Image {
            id: background
            x: 181
            y: 150
            width: 1525
            source: "images/background.png"
            anchors.centerIn: parent

            Text {
                id: time
                x: 715
                y: 24
                text: "08.00 AM"
                font.family: "Helvetica"
                font.pointSize: 28
                color: "white"
            }

            Text {
                id: speedometer
                x: 575
                y: 165
                font.family: "Helvetica"
                font.pointSize: 200
                color: "white"
            }

            Image {
                id: suhu
                x: 937
                y: 11
                width: 80
                height: 66
                source: "images/suhu.png"
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: _27C
                x: 1005
                y: 43
                source: "images/27C.png"
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: seatbelt
                x: 1054
                y: 18
                width: 105
                height: 59
                source: "images/seat belt.png"
                fillMode: Image.PreserveAspectFit
                opacity: 0.3

                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        if(seatbelt.opacity === 1)
                            seatbelt.opacity = 0.3
                        else
                            seatbelt.opacity = 1
                    }
                }
            }

            Image {
                id: doorcaropen
                x: 1144
                y: 13
                width: 75
                height: 70
                source: "images/door car open.png"
                fillMode: Image.PreserveAspectFit
                opacity: 0.3

                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        if(doorcaropen.opacity === 1)
                            doorcaropen.opacity = 0.3
                        else
                            doorcaropen.opacity = 1
                    }
                }
            }

            Image {
                id: lamp
                x: 555
                y: 26
                source: "images/lamp.png"
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: lamp2
                x: 484
                y: 20
                source: "images/lamp2.png"
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: linepanjang
                x: 22
                y: 637
                source: "images/line panjang.png"
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: kwh
                x: 590
                y: 524
                width: 127
                height: 107
                source: "images/KWH.png"
                fillMode: Image.PreserveAspectFit
                opacity: 0.2
            }

            Image {
                id: battery
                x: 622
                y: 465
                source: "images/Battery.png"
                scale: -0.637
                rotation: -89.566
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: _20KM
                x: 789
                y: 565
                width: 78
                height: 29
                source: "images/20 KM.png"
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: leftsign
                x: 476
                y: 306
                source: "images/left sign.png"
                fillMode: Image.PreserveAspectFit
                opacity: 0.3

                MouseArea {
                    anchors.fill: parent
                    onPressAndHold:  {
                        if (blinkleftright.running === false)
                            blinkleftright.running = true
                        else
                            blinkleftright.running = false
                        if (leftsign.opacity && rightsign.opacity === 1)
                        {
                            leftsign.opacity = 0.3
                            rightsign.opacity = 0.3
                        }
                    }
                    onClicked: {
                        if(blinkleftsign.running === false)
                            blinkleftsign.running = true
                        else
                            blinkleftsign.running = false
                        if(leftsign.opacity === 1)
                            leftsign.opacity = 0.3
                    }
                }
            }

            Image {
                id: rightsign
                x: 1029
                y: 306
                source: "images/right sign.png"
                fillMode: Image.PreserveAspectFit
                opacity: 0.3

                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        if (blinkrightsign.running === false)
                            blinkrightsign.running = true
                        else
                            blinkrightsign.running = false
                        if(rightsign.opacity === 1)
                            rightsign.opacity = 0.3
                    }

                }
            }

            Image {
                id: kmh
                x: 1015
                y: 414
                source: "images/kmh.png"
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: d
                x: 177
                y: 505
                source: "images/D.png"
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: linewhite
                x: 1206
                y: 480
                source: "images/line white.png"
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: _2000KM
                x: 1292
                y: 437
                source: "images/2000 KM.png"
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: odometer
                x: 1282
                y: 408
                source: "images/Odometer.png"
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: linewhite1
                x: 1206
                y: 229
                source: "images/line white.png"
                fillMode: Image.PreserveAspectFit
            }
        }

        Timer {
            id: blinkleftsign
            interval: 500
            running: false
            repeat: true
            onTriggered: {
                if (leftsign.opacity === 0.3)
                {
                    leftsign.opacity = 1
                }
                else if (leftsign.opacity === 1)
                {
                    leftsign.opacity = 0.3
                }
            }
        }

        Timer {
            id: blinkrightsign
            interval: 500
            running: false
            repeat: true
            onTriggered: {
                if (rightsign.opacity === 0.3)
                {
                    rightsign.opacity = 1
                }
                else
                {
                    rightsign.opacity = 0.3
                }
            }
        }

        Timer {
            id: blinkleftright
            interval: 500
            running: false
            repeat: true
            onTriggered: {
                if (leftsign.opacity && rightsign.opacity === 0.3)
                {
                    leftsign.opacity = 1
                    rightsign.opacity =1
                }
                else
                {
                    leftsign.opacity = 0.3
                    rightsign.opacity = 0.3
                }
            }
        }

        Timer {
            id: textspeedmeter
            interval: 50
            running: true
            repeat: true
            onTriggered: {
                var status = valuespeed.getDataPlus()
                speedometer.text = status

                if (status === 75)
                    textspeedmeter.interval = 100
                else if (status === 150)
                    textspeedmeter.interval = 150
                else if (status === 225)
                    textspeedmeter.interval = 200
                else if (status === 300)
                {
                    textspeedmeter.running = false
                    textspeedmetermin.running = true
                }
            }
        }

        Timer {
            id: textspeedmetermin
            interval: 25
            running: false
            repeat: true
            onTriggered: {
                var status1 = valuespeed.getDataMin()
                speedometer.text = status1

                if (status1 === 0)
                {
                    textspeedmetermin.running = false
                    textspeedmeter.interval = 50
                    textspeedmeter.running = true
                }

            }
        }
    }
}
