import QtQuick 2.7
import QtQuick.Controls 2.1
import QtQuick.Layouts 1.0
import QtQuick.Window 2.2
import QtGraphicalEffects 1.0
import "style"

Component
{
    Rectangle
    {
        id:menuBar
        anchors.left: parent.left
        anchors.top:parent.top
        anchors.bottom: parent.bottom
        width: 200
        MouseArea
        {
            id:menuMouseArea
            anchors.fill:parent
            hoverEnabled: true
        }

        Rectangle
        {
            id:hideButton
            width: 10
            anchors.top:parent.top
            anchors.bottom: parent.bottom
            anchors.right: parent.right
            color:"#78e0e0e0"
            Text {
                id: hideButtonLabel
                text: qsTr("<")
            }
            MouseArea{
                id:hideButtonMouseArea
                anchors.fill:parent
                hoverEnabled: true

//                onClicked: {
//                    if(menuBar.state!="hide")
//                        menuBar.state="hide"
//                    else
//                        menuBar.state=''
//                }
            }
        }

        states: [
            State {
                name: "hide"
                 when: !(menuMouseArea.containsMouse||hideButtonMouseArea.containsMouse)
                PropertyChanges {
                    target: menuBar
                    width:11
                }
                PropertyChanges {
                    target: hideButton
                    color:"#78323232"
                }
                PropertyChanges {
                    target: menuList
                    color:"#78323232"
                }
            }
        ]
        transitions: [
            Transition {

                NumberAnimation {
                    target: menuBar
                    property: "width"
                    duration: 100
                    easing.type: Easing.InOutQuad
                }
            }
        ]
        state:"hide"

    }
}
