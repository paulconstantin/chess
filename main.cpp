#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "square.h"
int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    qmlRegisterType<Square>("Chess",1,0,"Square");
    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}
