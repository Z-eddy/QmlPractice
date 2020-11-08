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
