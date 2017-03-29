#ifndef UTILS_TCP_H
#define UTILS_TCP_H

#include <QObject>
#include <QTcpSocket>
#include "ezstream.h"

class Utils_TcpClient : public QObject
{
    Q_OBJECT
public:
    explicit Utils_TcpClient(QObject *parent = 0);
    QTcpSocket* socket(){return tcpSocket;}
    bool sendMsg(_NET_MSG cmd,void*sendData,int sendSize,void*getData=NULL,int getSize=0);
signals:

public slots:
private:
    QTcpSocket* tcpSocket;

};

#endif // UTILS_TCP_H
