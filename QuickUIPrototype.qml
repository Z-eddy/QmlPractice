import QtQuick 2.12
import QtQuick.Window 2.12
import "./Modules/script/fooFunction.js" as JSFoo

Window {
    id:mainUI
    width: 640
    height: 480
    visible: true
    color: "#ffff7f"
    title: qsTr("这是一个小标题")

    Component.onCompleted: {
        console.log(JSFoo.topAdd(10),JSFoo.addFunc(20));
    }
}
