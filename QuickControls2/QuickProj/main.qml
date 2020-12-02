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

    SpinBox{
        id:spin_
        from: 0;to:items.length-1
        value: 1
        editable: true

        property var items:["aa","Bb","cc"]

        validator: RegExpValidator{
            regExp: new RegExp("(aa|Bb|cc)","i")
        }

        textFromValue: function(value){
            return items[value]
        }

        valueFromText: function(text){
            for(var i=0;i!==items.length;++i){
                if(items[i].toLowerCase().indexOf(text.toLowerCase())===0){
                    return i;
                }
            }
            return spin_.value
        }

//        /*
        MouseArea{
            //不能覆盖parent,会导致增减无效
            anchors.fill:parent.contentItem
            onWheel: {
                var increace= wheel.angleDelta
                console.log(increace)
                if(increace.y>0){
                    spin_.increase()
                    console.log("increace")
                }
                else{
                    spin_.decrease()
                    console.log("decreace")
                }
            }
        }
//        */
    }
}
