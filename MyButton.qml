import QtQuick 2.0

Rectangle {
    id: square
    //    width: 100
    //    height: 100
    MouseArea {
        anchors.fill: parent
        onClicked: {
            if(square.color === "black") {
                square.color = "blue";
                console.log("Black square check")
            } else if (square.color === "white") {
                square.color = "green";
                console.log("White square check")
            }

        }
    }
}
