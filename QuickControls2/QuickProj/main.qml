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

    BusyIndicator{
        id:control_;
//        running:parent.width<301
        anchors.centerIn: parent
        width: 100
        height:width
        contentItem: Item{
            id:item_
//            width: 200
//            height:width
            x:parent.width/2-width/2
            y:parent.height/2-height/2
            opacity: control_.running?1:0

            Behavior on opacity {//显示或隐藏时动作
                OpacityAnimator{
                    duration: 1000
                }
            }

            RotationAnimation{
                target: item_
                running: control_.visible&&control_.running//可见且运行时
                from: 0;to:360//转动角度
                loops:Animation.Infinite//一直转
                duration: 1250//转动一圈的时间
            }

            Rectangle{
                x:0
                y:x
                width: 10
                height: width
            }

//            /*
            Repeater{
                id:repeater_
                model: 6
                Rectangle{
                    x:parent.width/2-width/2
                    y:parent.height/2-height/2
                    implicitWidth: 10
                    implicitHeight:width
                    radius:width/2
                    color: "#21be2b"
                    transform: [
                        Translate{
                            y:-Math.min(item_.width,item_.height)*0.5+5//自适应大小
                        },
                        Rotation{
                            angle: index/repeater_.count*360
                            origin.x:5
                            origin.y:5
                        }
                    ]
                }
            }
//            */
        }
    }
}
