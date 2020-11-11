import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    id:mainUI
    width:800
    height:600
    visible: true
    color: "#ffff7f"
    title: qsTr("这是一个小标题")

    Column{
        padding: 5
        spacing: 20

        Rectangle{
            color: "red"
            border{color: "black";width: 1}
            width: 50
            height: 50
        }
        Rectangle{
            color: "blue"
            border{color: "black";width: 2}
            width: 10
            height: 50
        }
        Rectangle{
            color: "green"
            border{color: "black";width: 3}
            width: 20
            height: 100
        }
    }
}
