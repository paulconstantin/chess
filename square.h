#ifndef SQUARE_H
#define SQUARE_H

#include <private/qquickrectangle_p.h>

class Square : public QQuickRectangle
{
    Q_OBJECT
    Q_PROPERTY(bool clicked READ getClicked /*WRITE setClicked*/ NOTIFY clickedChanged)
public:
    explicit Square(QQuickItem *parent = 0);
private:
    bool m_clicked;
public:
    bool getClicked();
//    void setClicked(bool clicked);

signals:
    void clickedChanged();

public slots:

    // QQuickItem interface
protected:
    void mouseReleaseEvent(QMouseEvent *event) Q_DECL_OVERRIDE;

    // QQuickItem interface
protected:
    void mousePressEvent(QMouseEvent *event) Q_DECL_OVERRIDE;
};

#endif // SQUARE_H
