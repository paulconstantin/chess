#include "square.h"
#include <QDebug>

Square::Square(QQuickItem *parent)
    : QQuickRectangle(parent),
      m_clicked(false)
{
    setColor(Qt::yellow);
    setAcceptedMouseButtons(Qt::LeftButton);
}

bool Square::getClicked()
{
    return m_clicked;
}

void Square::mouseReleaseEvent(QMouseEvent *event)
{
    qDebug()<<"bla bla inside mouseReleaseEvent";
    m_clicked = !m_clicked;
    emit clickedChanged();
    event->accept();

}

void Square::mousePressEvent(QMouseEvent *event)
{
    event->accept();
}
