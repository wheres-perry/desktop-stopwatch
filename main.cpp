#include "mainwindow.h"
#include <QApplication>

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);

    // Set application icon
    QIcon appIcon(":/icons/stopwatch.ico");
    app.setWindowIcon(appIcon);

    // Create and show main window
    MainWindow mainWindow;
    mainWindow.show();

    // Execute the application
    return app.exec();
}
