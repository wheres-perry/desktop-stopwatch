#include "mainwindow.h"
#include "ui_mainwindow.h"

// Constructor: Initializes the main window and its components
MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent), ui(new Ui::MainWindow) {
    // Setup UI components
    ui->setupUi(this);

    // Initialize timer and time
    timer = new QTimer(this);
    currentTime = new QTime(0, 0);

    // Set window icon and fixed size
    setWindowIcon(QIcon());
    setFixedSize(sizeHint());

    // Connect signals to slots
    connect(timer, &QTimer::timeout, this, &MainWindow::updateTimer);
    connect(ui->startButton, &QPushButton::clicked, this, &MainWindow::toggleTimer);
    connect(ui->resetButton, &QPushButton::clicked, this, &MainWindow::resetTimer);

    // Set style sheets for UI elements
    setStyleSheet("QTabBar::tab { background-color: #ffffff; color: #000000; }");
    setStyleSheet("border-radius: 10px;");

    // Set window flags for custom appearance and behavior
    setWindowFlags(Qt::Window | Qt::FramelessWindowHint | Qt::WindowStaysOnTopHint);
    setAttribute(Qt::WA_TranslucentBackground);

    // Install event filters for buttons
    ui->startButton->installEventFilter(this);
    ui->resetButton->installEventFilter(this);
}

// Destructor: Cleans up allocated resources
MainWindow::~MainWindow() {
    delete ui;
}

// Toggle the timer on and off
void MainWindow::toggleTimer() {
    if (timer->isActive()) {
        // Stop the timer and update button text
        timer->stop();
        ui->startButton->setText("Start");

        // Record stop timestamp
        QJsonObject timestamp;
        timestamp["type"] = "STOP";
        timestamp["time"] = QDateTime::currentDateTime().toString(Qt::ISODate);
        timestampsArray.append(timestamp);
    } else {
        // Start the timer and update button text
        timer->start(1000);
        ui->startButton->setText("Stop");
        timerEmpty = false;
        ui->resetButton->setText("Reset");

        // Record start timestamp
        QJsonObject timestamp;
        timestamp["type"] = "START";
        timestamp["time"] = QDateTime::currentDateTime().toString(Qt::ISODate);
        timestampsArray.append(timestamp);
    }
}

// Reset the timer and handle log entries
void MainWindow::resetTimer() {
    if (!timerEmpty && currentTime->minute() >= 0) {
        // Prompt user for a label for the timestamp
        bool ok;
        QString label = QInputDialog::getText(this, tr("Label Your Time Stamp"), tr("Label:"), QLineEdit::Normal, "", &ok);

        if (label.isEmpty()) {
            label = " ";
        }

        if (ok && !label.isEmpty()) {
            // Handle log file
            QFile logFile("log.json");
            QJsonDocument logDoc;
            QJsonArray logArray;

            // Load existing log entries
            if (logFile.exists() && logFile.open(QIODevice::ReadOnly)) {
                logDoc = QJsonDocument::fromJson(logFile.readAll());
                if (logDoc.isArray()) {
                    logArray = logDoc.array();
                }
                logFile.close();
            }

            // Create new log entry
            QJsonObject logEntry;
            logEntry["label"] = label;
            logEntry["total_hours"] = currentTime->hour();
            logEntry["total_minutes"] = currentTime->minute();
            logEntry["timestamps"] = timestampsArray;
            timestampsArray = QJsonArray();

            // Append new entry to log array and write to file
            logArray.append(logEntry);
            logDoc = QJsonDocument(logArray);
            if (logFile.open(QIODevice::WriteOnly)) {
                logFile.write(logDoc.toJson(QJsonDocument::Indented));
                logFile.close();
            }
        }

        // Reset the timer and update UI
        timer->stop();
        ui->startButton->setText("Start");
        currentTime->setHMS(0, 0, 0);
        ui->timeLabel->setText(currentTime->toString());
        timerEmpty = true;
        ui->resetButton->setText("Exit");
    } else if (!timerEmpty) {
        // Confirm reset action
        QMessageBox::StandardButton reply = QMessageBox::question(this, "Exit", "You are about to reset the stopwatch, are you sure?", QMessageBox::Yes | QMessageBox::No);

        if (reply == QMessageBox::Yes) {
            // Reset the timer and update UI
            timer->stop();
            ui->startButton->setText("Start");
            currentTime->setHMS(0, 0, 0);
            ui->timeLabel->setText(currentTime->toString());
            timerEmpty = true;
            ui->resetButton->setText("Exit");
        }
    } else {
        // Confirm exit action
        QMessageBox::StandardButton reply = QMessageBox::warning(this, "Exit", "You are about to exit, are you sure?", QMessageBox::Yes | QMessageBox::No);

        if (reply == QMessageBox::Yes) {
            close();
        }
    }
}

// Update the timer display
void MainWindow::updateTimer() {
    *currentTime = currentTime->addSecs(1);
    ui->timeLabel->setText(currentTime->toString());
}

// Handle mouse press events for dragging the window
void MainWindow::mousePressEvent(QMouseEvent *event) {
    QWidget *child = childAt(event->pos());

    if (child != ui->startButton && child != ui->resetButton && event->button() == Qt::LeftButton) {
        dragStartPosition = event->globalPosition().toPoint() - frameGeometry().topLeft();
        event->accept();
    } else {
        dragStartPosition = QPoint();
    }
}

// Handle mouse move events for dragging the window
void MainWindow::mouseMoveEvent(QMouseEvent *event) {
    if (!(event->buttons() & Qt::LeftButton)) {
        return;
    }

    if (!dragStartPosition.isNull()) {
        move(event->globalPosition().toPoint() - dragStartPosition);
        event->accept();
    }
}

// Handle mouse release events for dragging the window
void MainWindow::mouseReleaseEvent(QMouseEvent *event) {
    if (event->button() == Qt::LeftButton) {
        dragStartPosition = QPoint();
    }
}

// Event filter for handling custom button events
bool MainWindow::eventFilter(QObject *watched, QEvent *event) {
    if (watched == ui->startButton || watched == ui->resetButton) {
        return false;
    }

    return QMainWindow::eventFilter(watched, event);
}
