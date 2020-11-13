import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Layouts 1.12

Window {
    id:mainUI
    width:800
    height:600
    visible: true
    color: "#ffff7f"
    title: qsTr("这是一个小标题")

    Rectangle{
        color: "pink"
        width: 400
        height: 300
        Loader{
            id:load_
            source: "./Modules/TheItem/TestItem.qml"
        }

        Component.onCompleted: {
            load_.item.theMsg.connect(onTheMsg)
        }

        function onTheMsg(msg){
            console.log(msg+" signal")
        }
    }
}
