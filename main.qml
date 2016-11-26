import QtQuick 2.5
import QtQuick.Window 2.2
import Chess 1.0

Window {
    id: mainWindow
    visible: true
    width: 740
    height: 480
    title: qsTr("Road to Zion")


    Grid {
        id:gridLayout
        columns: 8
        rows: 8
        Repeater {
            model:8
            delegate: Square{
                width: 80
                height: 80
                onClickedChanged: {
                    console.log("clicked stae: " + clicked)
                }

//                color:index % 2 == 0 ? "black" : "white"
            }
        }
        Repeater {
            model:8
            delegate: Rectangle{
                width: 80
                height: 80
                color:index % 2 == 0 ? "white" : "black"
            }
        }
        Repeater {
            model:8
            delegate: Rectangle{
                width: 80
                height: 80
                color:index % 2 == 0 ? "black" : "white"
            }
        }
        Repeater {
            model:8
            delegate: Rectangle{
                width: 80
                height: 80
                color:index % 2 == 0 ? "white" : "black"
            }
        }
        Repeater {
            model:8
            delegate: Rectangle{
                width: 80
                height: 80
                color:index % 2 == 0 ? "black" : "white"
            }
        }
        Repeater {
            model:8
            delegate: Rectangle{
                width: 80
                height: 80
                color:index % 2 == 0 ? "white" : "black"
            }
        }
        Repeater {
            model:8
            delegate: Rectangle{
                width: 80
                height: 80
                color:index % 2 == 0 ? "black" : "white"
                MouseArea{
                    anchors.fill: parent
                }
            }
        }
        Repeater {
            model:8
            delegate: Rectangle{
                width: 80
                height: 80
                color:index % 2 == 0 ? "white" : "black"
                MouseArea{
                    anchors.fill: parent
                }
            }
        }
    }
    Rectangle {
        color: "black"
        width: gridLayout.width
        height: 1
        anchors.top:gridLayout.bottom
    }
    Rectangle {
        color: "black"
        width: 1
        height: gridLayout.height
        anchors.left:gridLayout.right
    }
}
