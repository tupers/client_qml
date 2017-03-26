#ifndef CLIENTSERVICE_H
#define CLIENTSERVICE_H

#include <QObject>

class clientService : public QObject
{
    Q_OBJECT
public:
    explicit clientService(QObject *parent = 0);
    bool initService(QObject* obj);
signals:

public slots:

private:
    QObject* root;

};

#endif // CLIENTSERVICE_H
