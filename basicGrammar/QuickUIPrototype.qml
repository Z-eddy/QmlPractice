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

    RowLayout{
        spacing: 6
        anchors.fill: parent

        Rectangle{
            color: "green"
            //这里不能用属性组！
            Layout.fillWidth: true
            Layout.minimumWidth: 100
            Layout.preferredWidth: 200
            Layout.maximumWidth: 300
            Layout.minimumHeight: 150
            Text {
                anchors.centerIn: parent
                text:"w:"+ parent.width+" h:"+parent.height
            }
        }

        Rectangle{
            color: "pink"
            Layout.fillWidth: true
            Layout.minimumWidth: 100
            Layout.preferredWidth: 200
            Layout.minimumHeight: 100
            Text {
                anchors.centerIn: parent
                text:"w:"+parent.width+" h:"+parent.height
            }
        }
    }
}
