#include <QtQml>
#include <QtQuick/QQuickView>
#include <QtCore/QString>


#include <QtGui/QGuiApplication>

QT_BEGIN_NAMESPACE

#define Application QGuiApplication


int main(int argc, char *argv[]) \
{ \
    Application app(argc, argv); \
    QQmlApplicationEngine engine(QUrl("qml/experience_qml/main.qml")); \
    QObject *topLevel = engine.rootObjects().value(0); \
    QQuickWindow *window = qobject_cast<QQuickWindow *>(topLevel); \
    if ( !window ) { \
        qWarning("Error: Your root item has to be a Window."); \
        return -1; \
    } \
    window->show(); \
    return app.exec(); \
}
