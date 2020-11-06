import QtQuick 2.12
import QtQuick.Window 2.12
//不能让.qml的文件与其所在文件夹重名！
import Button 1.0 as TempButton

Window {
    id:mainUI
    width: 640
    height: 480
    visible: true
    color: "#ffff7f"
    title: qsTr("这是一个小标题")

    ListView{
        id:theList
        width:parent.width/2
        height:parent.height/2
        anchors.centerIn: parent
        focus: true

        //设置模型
        model: ListModel{
            id:listModel
            //附加信号
            Component.onCompleted: {
                for(var i=0;i!=5;++i){
                    listModel.append({"Name":"Item"+i,"other":"oth_"+i})
                }
            }
        }

        //设置每格的代理
        delegate:
            Rectangle{
            width:theList.width
            height:theList.height/10
            //附加属性
            color: ListView.isCurrentItem?"red":"blue"
            Text {
                text: qsTr("text")
            }
        }
    }
}
