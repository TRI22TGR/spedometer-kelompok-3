#include "speedometer.h"

speedometer::speedometer(QObject *parent) : QObject(parent)
{
    val = 000;
}

int speedometer::getDataPlus()
{
    val = val + 1;

    return val;
}

int speedometer::getDataMin()
{
    val = val - 1;

    return val;
}
