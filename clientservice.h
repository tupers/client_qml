#ifndef CLIENTSERVICE_H
#define CLIENTSERVICE_H

#include <QObject>

#include "service_account.h"

class clientService : public QObject
{
    Q_OBJECT
public:
    explicit clientService(QObject *parent = 0);
    Q_INVOKABLE bool login(QString name,QString password);
signals:

public slots:

private:
    service_account* accountService;

};

#endif // CLIENTSERVICE_H
