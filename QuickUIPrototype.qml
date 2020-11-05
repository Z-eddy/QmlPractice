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
        //基本类型列表(数组)声明并初始化
        property var vals:[
            1,2,3,4,5
        ]
    }
}
