import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.12

ApplicationWindow {
    width: 640
    height: 480
    visible: true
    title: qsTr("Scroll")

    SwipeView{
        id:view_
        currentIndex: 1
        anchors.fill: parent
        Repeater{
            model: 6
            Loader{
                //只加载 上/当前/下 三帧
                active: SwipeView.isCurrentItem||SwipeView.isNextItem||SwipeView.isPreviousItem
                sourceComponent: Text {
                    text: index
                    Component.onCompleted: console.log("create:",index)
                    Component.onDestruction: console.log("destroyed:",index)
                }
            }
        }
    }
    PageIndicator{
        id:indicator_
        currentIndex: view_.currentIndex
        count: view_.count
        anchors.bottom: view_.bottom
        anchors.horizontalCenter: view_.horizontalCenter
        interactive: true
        onCurrentIndexChanged: {
            console.log("->...",currentIndex)
            if(view_.currentIndex!==currentIndex){
                view_.currentIndex=currentIndex
            }
        }
    }
}
