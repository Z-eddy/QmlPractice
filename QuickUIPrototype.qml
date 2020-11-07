import QtQuick 2.12
import QtQuick.Window 2.12
import "./Modules/script/fooFunction.js" as Foo

Window {
    id:mainUI
    width: 640
    height: 480
    visible: true
    color: "#ffff7f"
    title: qsTr("这是一个小标题")

    Rectangle{
        id:theRect
        width:Foo.fooAdd(200,100)
        height:Foo.fooSub(200,100)
        anchors.centerIn: parent
    }
}
