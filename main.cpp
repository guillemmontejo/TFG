#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQuickView>
#include <iostream>


int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);

    QQuickView view;
       view.engine()->addImportPath("qrc:/qml/imports");
       view.setSource(QUrl("qrc:/qml/Tfg.qml"));
       if (!view.errors().isEmpty())
           return -1;
       view.show();


    return app.exec();
}
