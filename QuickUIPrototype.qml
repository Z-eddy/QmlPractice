import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    id:mainUI
    width: 640
    height: 480
    visible: true
    color: "#ffff7f"
    title: qsTr("这是一个小标题")

    Component{//定义组件,但只是定义,未实例化
        id:redSquare
        Rectangle{
            color: "red"
            width: 50
            height: 30
        }
    }
    Loader{//加载
        id:rec0;
        sourceComponent: redSquare;
        width: 200
    }
    Loader{
        id:rec1;
        sourceComponent: redSquare;
        x:rec0.width+10
    }
}
