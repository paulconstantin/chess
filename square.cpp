#include "square.h"
#include <QDebug>

Square::Square(QQuickItem *parent)
    : QQuickRectangle(parent),
      m_clicked(false)
{
    setColor(Qt::yellow);
}

bool Square::getClicked()
{
    return m_clicked;
}

void Square::mouseReleaseEvent(QMouseEvent *event)
{
    qDebug()<<"bla bla inside mouseReleaseEvent";
    if (event->button() == Qt::LeftButton)
    {
        m_clicked = !m_clicked;
        emit clickedChanged();
    }
}

//void Square::setClicked(bool clicked)
//{
//    if(m_clicked != clicked)
//    {
//        m_clicked = clicked;
//        emit clickedChanged();
//    }
//}
