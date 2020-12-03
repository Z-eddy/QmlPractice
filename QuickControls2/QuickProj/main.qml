import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.12

ApplicationWindow {
    width: 640
    height: 480
    visible: true
    title: qsTr("Scroll")

    StackView{
        id:stack_
        anchors.fill: parent
    }

    header: ToolBar{
        RowLayout{
            anchors.fill: parent
            ToolButton{text: qsTr("<");onClicked: stack_.pop()}
            Label{
                text: "theLab"
                elide: "ElideRight"
                horizontalAlignment: "AlignHCenter"
                verticalAlignment: "AlignVCenter"
                Layout.fillWidth: true
            }
            ToolButton{
                id:helpBtn_
                text: qsTr(":")
                onClicked:menu_.open()
                Menu{
                    id:menu_
                    y:helpBtn_.height
                    Action{text: "Help..."}
                    Action{text: "About"}
                }
            }
        }
    }
}
