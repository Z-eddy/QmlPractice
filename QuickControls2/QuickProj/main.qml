import QtQuick 2.12
import QtQuick.Controls 2.5

ApplicationWindow {
    width: 640
    height: 480
    visible: true
    title: qsTr("Scroll")

    background: Rectangle{
        gradient: Gradient{
            GradientStop{position: 0;color: "#ffffff"}
            GradientStop{position: 1;color: "#c1bbf9"}
        }
    }

    Column{
        spacing: 20
        anchors.centerIn: parent
        Repeater{
            model: 3
            TextField{
                id:text_
                placeholderText: qsTr("等待输入"+index)
                //0密码形式,1输入时才显示,2正常显示
                echoMode: index===0?TextField.Password:index===1?TextField.PasswordEchoOnEdit:TextField.Normal
            }
        }

    }
}
