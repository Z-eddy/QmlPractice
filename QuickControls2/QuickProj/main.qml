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

    ComboBox{
        id:combo0_
        editable: true
        selectTextByMouse: true
        model: ["测试0","ab","bb"]
    }
    ComboBox{
        id:combo1_
        editable: true
        selectTextByMouse: true
        textRole:"text"
        anchors.top:combo0_.bottom
        model: ListModel{
            id:theList_
            ListElement{text:"aa";color:"green"}
            ListElement{text:"bb";color:"yellow"}
            ListElement{text:"cc";color:"red"}
        }
        onCurrentIndexChanged: {
            //项改变时
            console.debug(theList_.get(currentIndex).text+","+theList_.get(currentIndex).color)
        }
        onAccepted: {
            //当输入新值时判定是否储存
            if(find(editText)===-1){
                //如果没有则储存
                theList_.append({text:editText})
            }
        }
    }
}
