import QtQuick 2.12
import QtQuick.Window 2.12
import UI 1.0 as TestUI

Window {
    width: 640
    height: 480
    visible: true
    color: "#aaffff"
    title: qsTr("Hello World")
    Text {
        onFontChanged: console.log("font changed")
        text: qsTr("text0")
        Text{
            id: otherText
        }
        focus: true

        //动作
        Keys.onDigit0Pressed: font.pixelSize+=1
        Keys.onDigit1Pressed: font.italic=!font.italic
        Keys.onDigit2Pressed: font=otherText.font
    }
}
