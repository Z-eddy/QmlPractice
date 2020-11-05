import QtQuick 2.4

Rectangle{
    id:theBtn
    anchors.centerIn: parent
    width: 200
    height: 50

    //自定义信号
    signal actived(real xPos,real yPos)
    signal deactived()

    //发射信号
    MouseArea{
        anchors.fill: parent
        onPressed:theBtn.actived(mouseX,mouseY)
        onReleased: theBtn.deactived()
    }
}
