#include "clientservice.h"

clientService::clientService(QObject *parent) : QObject(parent)
{

}

bool clientService::initService(QObject *obj)
{
    if(obj==NULL)
        return false;
    root = obj;

    accountService = new service_account(root,this);

}
