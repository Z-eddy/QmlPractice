import QtQuick 2.4

Text{
    enum TextType{
        Normal,
        Header
    }

    property int textType:TheTextForm.TextType.Normal
    font.bold: textType==TheTextForm.TextType.Header
    font.pixelSize: textType==TheTextForm.TextType.Normal?30:60
}
