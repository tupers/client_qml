#include <QGuiApplication>
#include <QQmlApplicationEngine>

#include "clientservice.h"

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QGuiApplication app(argc, argv);
    clientService service;
    QQmlApplicationEngine engine;
    engine.load(QUrl(QLatin1String("qrc:/main.qml")));
    service.initService(engine.rootObjects()[0]);
    return app.exec();
}
