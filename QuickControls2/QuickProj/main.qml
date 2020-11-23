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

    PageIndicator{
        id:control_
        count: 5
        interactive: true
        currentIndex: 2
        delegate: Rectangle{
            implicitWidth: 8
            implicitHeight: implicitWidth
            color: "#21be2b"
            opacity: index===control_.currentIndex?0.95:pressed?0.7:0.45
            Behavior on opacity {
                OpacityAnimator{
                    duration: 100
                }
            }
        }
    }
}
