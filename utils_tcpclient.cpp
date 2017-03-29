#include "utils_tcpclient.h"

Utils_TcpClient::Utils_TcpClient(QObject *parent) : QObject(parent)
{
    tcpSocket = new QTcpSocket(this);
}

bool Utils_TcpClient::sendMsg(_NET_MSG cmd, void *sendData, int sendSize, void *getData, int getSize)
{

}
