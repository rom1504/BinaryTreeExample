#include "mainwindow.h"
#include "ui_mainwindow.h"
#include "genericbinarytree/model/genericnode.h"

typedef GenericNode<double> Node;

MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow)
{
    ui->setupUi(this);
    showMaximized();
    Node * a=new Node(5);
    Node * b=new Node(6);
    Node * c=new Node(7);
    a->setLeft(b);
    a->setRight(c);
    Node * d=new Node(8);
    Node * e=new Node(9);
    b->setLeft(d);
    b->setRight(e);
    mScene=new QGraphicsScene();
    ui->graphicsView->setScene(mScene);
    ui->graphicsView->setRenderHint(QPainter::Antialiasing);
    mTreeViewer=new TreeViewer<double>(mScene,[](double & d){return QString::number(d);});
    mTreeViewer->drawBinaryTree2(a);
}

MainWindow::~MainWindow()
{
    delete ui;
}
