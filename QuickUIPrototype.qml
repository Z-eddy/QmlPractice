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
        states: [
            State {
                name: "loading"
            },
            State {
                name: "running"
            }
        ]
        //列表(数组)声明
        property list<Text> texts0
        //列表(数组)赋值
        texts0: [
            Text {
                id: text3
                text: qsTr("text0")
            },
            Text{
                id:text4
                text: qsTr("text1")
            }
        ]
        //列表(数组)声明并初始化
        property list<Text> texts:[
            Text {
                id: text0
                text: qsTr("text0")
            },
            Text{
                id:text1
                text: qsTr("text1")
            }
        ]
    }
}
