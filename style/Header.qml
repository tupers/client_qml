import QtQuick 2.7
import QtQuick.Controls 2.1
import QtQuick.Layouts 1.0
import QtQuick.Window 2.2
import QtGraphicalEffects 1.0

ColumnLayout{
    property alias headerLabel: headerLabel
    Label{
        id:headerLabel
        color: "#ffffff"
        leftPadding: 30
        topPadding: 20
        font.family: "Arial"
        font.pointSize: 15
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }
    Rectangle{
        color:"#323232"
        height: 1
        Layout.fillWidth: true
        anchors.bottom: parent.bottom
    }
}
