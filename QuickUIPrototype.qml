import QtQuick 2.12
import QtQuick.Window 2.12
import DynObj 1.0 as TempObj

Window {
    id:mainUI
    width: 640
    height: 480
    visible: true
    color: "#ffff7f"
    title: qsTr("这是一个小标题")

    Component.onCompleted: {
        /*
        //js
        var componentTemp=Qt.createComponent("./Modules/DynObj/DynObjDelete.qml")
        for(var i=0;i!=5;++i){
            var obj=componentTemp.createObject(mainUI)
            obj.x=(obj.width+10)*i
        }
        */
        var codeS='
                    import QtQuick 2.4

                    Rectangle{
                        id:rect
                        width: 80
                        height: 80
                        color: "red"

                        NumberAnimation on opacity {
                            to: 0
                            duration: 8000
                            onRunningChanged: {
                                if(!running){
                                    console.log("Destroying...")
                                    rect.destroy()
                                }
                            }
                        }
                    }
                    '
        for(var i=0;i!=5;++i){
            var theObj=Qt.createQmlObject(
                        codeS,
                        mainUI,
                        "."
                        )
            theObj.x=(theObj.width+10)*i
        }
    }
}
