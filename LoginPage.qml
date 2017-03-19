import QtQuick 2.7
import QtQuick.Controls 2.1
import QtQuick.Layouts 1.0
import QtQuick.Window 2.2
import QtGraphicalEffects 1.0

import "style"

Component{
    Rectangle
    {
        color:"#00000000"
        width: loginPage.width
        height: loginPage.height
        Header {
            id:loginHeader
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.leftMargin: 20
            anchors.rightMargin: 20
            headerLabel.text:"Login"
            headerLabel.font.pointSize: 30
        }

        Rectangle{
            id:accout
            width: 250
            height: 330
            color:"#78323232"
            radius: 10
            anchors.rightMargin: 50+parent.width*0.03
            anchors.topMargin: parent.height*0.3
            anchors.right: parent.right
            anchors.top: parent.top
            border.width: 0
            ColumnLayout {
                id: accountLayout
                anchors.rightMargin: 30
                anchors.leftMargin: 30
                anchors.bottomMargin: 20
                anchors.topMargin: 20
                anchors.fill: parent
                spacing: 0

                ColumnLayout {
                    id: account_nameLayout
                    spacing: 0

                    SubHeaderLabel {
                        id: account_nameLabel
                        text: "Name"
                    }

                    TextField {
                        id: account_nameField
                        width: 170
                        color: "#ffffff"
                        Layout.fillWidth: true
                    }

                }

                ColumnLayout {
                    id: account_passwordLayout
                    spacing: 0
                    SubHeaderLabel {
                        id: account_passwordLabel
                        text: "Password"
                    }
                    TextField {
                        id: account_passwordField
                        width: 170
                        color: "#ffffff"
                        Layout.fillWidth: true
                    }
                }
                ColumnLayout {
                    id: account_specifiedIPLayout
                    spacing: 0
                    SubHeaderLabel {
                        id: account_specifiedIPLabel
                        text: "Specified IP"
                    }
                    TextField {
                        id: account_specifiedIPnameField
                        width: 170
                        color: "#ffffff"
                        Layout.fillWidth: true
                    }
                }
                Button {
                    id: account_loginButton
                    width: 170
                    height: 50
                    text: qsTr("LogIn")
                    Layout.fillHeight: false
                    Layout.fillWidth: true
                    padding: 20
                    rightPadding: 30
                    leftPadding: 30

                }
            }

        }

        ListView {
            id: scanList
            anchors.left: parent.left
            anchors.top:parent.top
            anchors.topMargin: 100+parent.height*0.1
            anchors.leftMargin: 50+parent.width*0.03
            height: 350
            width: 130+parent.width*0.1
            spacing:10
            model:ListModel{
                ListElement{name:"192.168.1.224";type:"1"}
                ListElement{name:"test2";type:"2"}
                ListElement{name:"test3";type:"3"}
                ListElement{name:"test4";type:"4"}
                ListElement{name:"test5";type:"5"}
            }
            delegate: Component{
                RowLayout{
                    id:listElementLayout
                    height: 20
                    width: parent.width
                    spacing: 5
                    SubHeaderLabel{
                        text:name
                        color:(mouse_area.containsMouse||listElementLayout.ListView.isCurrentItem)?"white":"#323232"
                    }
                    states: [
                        State {
                            name: "current"
                            when: mouse_area.containsMouse
                            PropertyChanges {
                                target: listElementLayout
                                x:20
                            }
                        }
                    ]
                    transitions: Transition {
                        NumberAnimation{properties: "x";duration: 400}
                    }
                    MouseArea{
                        id:mouse_area
                        anchors.fill: parent
                        onClicked: {listElementLayout.ListView.view.currentIndex=index
                            account_specifiedIPnameField.text=name}
                        hoverEnabled: true
                        }
                }

            }
        }

        Button{
            id:scanButton
            anchors.right:scanList.right
            anchors.bottom: scanList.top
            text:"scan"

        }
    }
}
