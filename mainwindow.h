#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include <QTimer>
#include <QTime>
#include <QMessageBox>
#include <QCloseEvent>
#include <QMouseEvent>
#include <QPainterPath>
#include <QInputDialog>
#include <QFile>
#include <QTextStream>
#include <QJsonDocument>
#include <QJsonObject>
#include <QJsonArray>
#include <QJsonValue>
#include <QStandardPaths>
#include <QDir>

QT_BEGIN_NAMESPACE
namespace Ui { class MainWindow; }
QT_END_NAMESPACE

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    explicit MainWindow(QWidget *parent = nullptr);
    ~MainWindow();

private slots:
    void toggleTimer();     // Slot to start/stop the timer
    void resetTimer();      // Slot to reset the timer
    void updateTimer();     // Slot to update the timer display

protected:
    void mousePressEvent(QMouseEvent *event) override;   // Handle mouse press events
    void mouseReleaseEvent(QMouseEvent *event) override; // Handle mouse release events
    void mouseMoveEvent(QMouseEvent *event) override;    // Handle mouse move events
    bool eventFilter(QObject *watched, QEvent *event) override; // Event filter for custom button events

private:
    Ui::MainWindow *ui;          // UI components
    QTimer *timer;               // Timer for stopwatch functionality
    QTime *currentTime;          // Current time for the stopwatch
    QPoint dragStartPosition;    // Position to handle window dragging
    bool timerEmpty = true;      // Flag to check if the timer is empty
    QJsonArray timestampsArray;  // Array to store timestamp data
    QString appDataPath;
    QString filePath;
};

#endif // MAINWINDOW_H
