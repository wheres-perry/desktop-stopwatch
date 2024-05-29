#include "mainwindow.h"
#include <QApplication>


const QString VERSION = "0.1";

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);

    // Set application icon
    QIcon appIcon(":/icons/stopwatch.ico");
    app.setWindowIcon(appIcon);

    // Create and show main window
    mainWindow.setWindowTitle("Stopwatch " + VERSION);
    MainWindow mainWindow;
    mainWindow.show();

    // Execute the application
    return app.exec();
}
