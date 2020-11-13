import QtQuick 2.0

Rectangle{
    id:rect_
    signal theMsg(string msg)

    width: 100
    height: 100

    MouseArea{
        anchors.fill: parent
        onClicked: rect_.theMsg("test msg")
    }
}
