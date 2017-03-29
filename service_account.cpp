#include "service_account.h"

service_account::service_account(QObject *obj, QObject *parent):service(parent)
{
    contextPage = obj->findChild<QQuickItem*>("contextPage");
    loginButton = obj->findChild<QObject*>("account_loginButton");
    stackView = obj->findChild<QObject*>("mainStackView");
    qDebug()<<contextPage;
    qDebug()<<loginButton;
    qDebug()<<stackView;
   connect(loginButton,SIGNAL(clicked()),this,SLOT(loginSuccess()));
}

void service_account::loginSuccess()
{
    QMetaObject::invokeMethod(stackView,"push",Q_ARG(QQuickItem*,contextPage));
}
