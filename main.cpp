#include <QGuiApplication>
#include <QQmlApplicationEngine>
//#include <QQuickView>
int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    engine.load(QUrl(QLatin1String("qrc:/main.qml")));
//    QObject* toplevel = engine.rootObjects().value(0);
//    QQuickView *window = qobject_cast<QQuickView *>(topLevel);
//    window->setFlags();
    return app.exec();
}
