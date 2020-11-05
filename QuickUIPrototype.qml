import QtQuick 2.12
import QtQuick.Window 2.12
import UI 1.0 as TestUI

Window {
    width: 640
    height: 480
    visible: true
    color: "#aaffff"
    property int intName:10
    property string testName
    title: qsTr("abc")

    Component.onCompleted: {
        var i=0
        for(;i!=10;++i){
            testName+=i
        }
        title=testName
    }
}
