import QtQuick 2.7
import QtQuick.Controls 2.1
import QtQuick.Layouts 1.0
import QtQuick.Window 2.2
import QtGraphicalEffects 1.0
import "style"

ApplicationWindow {
    id:mainWindow
    //    objectName:"mainWindow“

//    color: "#212121"
    flags: Qt.FramelessWindowHint|Qt.Window
    visible: true
    width: 960
    height: 720
    title: qsTr("Hello World")

    background: Image{
        id:mainBackGround
        source:"image/black.jpg"
    }

    MouseArea {
        id: dragRegion
        anchors.fill: headerLayout
        property point clickPos: "0,0"
        onPressed: {
            clickPos  = Qt.point(mouse.x,mouse.y)
        }
        onPositionChanged: {
            //鼠标偏移量
            var delta = Qt.point(mouse.x-clickPos.x, mouse.y-clickPos.y)
            //如果mainwindow继承自QWidget,用setPos
            mainWindow.setX(mainWindow.x+delta.x)
            mainWindow.setY(mainWindow.y+delta.y)
        }
        onDoubleClicked: {
            if(mainWindow.visibility==Window.FullScreen)
                mainWindow.visibility=Window.Windowed
            else
                mainWindow.visibility=Window.FullScreen
        }
    }

    header:ColumnLayout{

        id:headerLayout
        spacing:0
        RowLayout
        {
            id: headerRowLayout
            Layout.fillHeight: false
            spacing: 10
            Layout.leftMargin: 10
            Layout.rightMargin: 10
            Label{
                id:headerPaddingLabel
                Layout.fillWidth: true
            }

            Button{
                id:consoleButton
                text:qsTr("console")
            }
            Button{
                id:minimizedButton
                text:"min"
                onClicked:mainWindow.visibility=Window.Minimized
            }
            Button{
                id:maximizedButton
                text:"max"
                onClicked:
                {
                    if(mainWindow.visibility==Window.FullScreen)
                        mainWindow.visibility=Window.Windowed
                    else
                        mainWindow.visibility=Window.FullScreen
                }
            }
            Button{
                id:closeButton
                text:qsTr("close")
                onClicked: mainWindow.close()
            }
        }

        Rectangle{
            height: 2
            Layout.fillWidth: true
            RadialGradient {
                anchors.fill:parent
                verticalRadius:200
                gradient: Gradient{
                    GradientStop{position:0.6;color:"#FF660000"}
                    GradientStop{position:0.2;color:"#FFC00000"}
                }
            }
        }
    }
    StackView{
        id: mainStackView
        anchors.fill:parent
        initialItem: loginPage
        LoginPage {
            id: loginPage
        }
//        Component{
//            id:contentPage
//            ContentPage{

//            }
//        }
    }

//    footer: TabBar {
//        id: tabBar
//        //currentIndex: swipeView.currentIndex
//    }
}
