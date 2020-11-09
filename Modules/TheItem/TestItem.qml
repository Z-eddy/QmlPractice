import QtQuick 2.0

Item {
    property Component myComponent:com0

    QtObject{
        id:internalSetting
        property color theColor: "green"
    }

    Component{
        id:com0
        Rectangle{
            color: internalSetting.theColor
            width: 200
            height: 50
        }
    }
}
