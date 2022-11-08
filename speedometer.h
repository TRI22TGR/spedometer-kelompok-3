#ifndef SPEEDOMETER_H
#define SPEEDOMETER_H

#include <QObject>


class speedometer : public QObject
{
    Q_OBJECT
public:
    explicit speedometer(QObject *parent = nullptr);
    int val;

    Q_INVOKABLE int getDataPlus();
    Q_INVOKABLE int getDataMin();

signals:
};

#endif // SPEEDOMETER_H
