#include "clientservice.h"

clientService::clientService(QObject *parent) : QObject(parent)
{
    accountService = new service_account(this);
}

bool clientService::login(QString name, QString password)
{

    return true;
}
