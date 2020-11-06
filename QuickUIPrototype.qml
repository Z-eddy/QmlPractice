import QtQuick 2.12
import QtQuick.Window 2.12
import TheText 1.0 as TempText

Window {
    id:mainUI
    width: 640
    height: 480
    visible: true
    color: "#ffff7f"
    title: qsTr("这是一个小标题")

    TempText.MyText{
        text: "test"
        //不同的枚举类型决定自身的状态属性,除非被二次重置
        textType: TempText.MyText.TextType.Header
    }
}
