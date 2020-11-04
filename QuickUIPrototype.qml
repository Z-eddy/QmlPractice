import QtQuick 2.12
import QtQuick.Window 2.12
import UI 1.0 as TestUI

Window {
    width: 640
    height: 480
    visible: true
    color: "#aaffff"
    title: qsTr("Hello World")

    Item{
        property var theArrar:[]
        property var theDate:new Date()

        Component.onCompleted: {
            for(var i=0;i!=10;++i){
                theArrar.push("theItem "+i)
            }
            console.log("js数组长度：",theArrar.length," 这么多个")
            console.log("时间：",theDate.toUTCString())
        }
    }
}
