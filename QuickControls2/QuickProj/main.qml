﻿import QtQuick 2.12
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

    Row{
        Tumbler{
            model: 12
            visibleItemCount: 5
        }
        Tumbler{
            model: ["aa","bb","cc"]
            wrap: true
        }
    }
}
