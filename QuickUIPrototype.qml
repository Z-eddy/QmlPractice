import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    id:mainUI
    width: 640
    height: 480
    visible: true
    color: "#ffff7f"
    title: qsTr("这是一个小标题")

    Rectangle{
    }

    Component.onCompleted: {
        var theNewObj=Qt.createQmlObject(
                    //字符串
                    "import QtQuick 2.4;
                    Rectangle{
                        color:'green';
                        anchors.centerIn: parent
                        width:300;
                        height:100,
                    }",
                    //父对象
                    mainUI,
                    //于新对象有关的路径,如果字符串里用了相对路径文件,则为父类文件的路径--不知道什么情况
                    "."
                    )
    }
}
