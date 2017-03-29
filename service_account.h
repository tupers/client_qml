#ifndef SERVICE_ACCOUNT_H
#define SERVICE_ACCOUNT_H

#include "service.h"
#include <QMetaObject>
#include <QQuickItem>

class service_account : public service
{
    Q_OBJECT
public:
    explicit service_account(QObject* obj,QObject* parent=0);
public slots:
    void loginSuccess();
private:
    QObject* loginButton;
    QObject* stackView;
    QQuickItem* contextPage;
};

#endif // SERVICE_ACCOUNT_H
