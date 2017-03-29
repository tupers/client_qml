#ifndef SERVICE_H
#define SERVICE_H

#include <QObject>

class service : public QObject
{
    Q_OBJECT
public:
    explicit service(QObject *parent = 0);

signals:

public slots:
};

#endif // SERVICE_H