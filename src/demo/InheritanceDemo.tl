package demo;

import java.awt.Point;
import java.awt.Color;
import java.lang.Thread;
import javax.swing.JComponent;
import javax.swing.JFrame;
import javax.swing.JButton;
import javax.swing.JLabel;
import java.awt.event.MouseListener;
import java.awt.event.MouseMotionListener;


fun main() {
    var frame = JFrame("Drawing Canvas");

    var points = [];
    var display = FancyDisplay(points);
    frame.add(display);

    display.addMouseMotionListener(display);

    frame.setSize(400, 400);
    frame.setDefaultCloseOperation(3);
    frame.setLocation(600, 200);
    frame.setVisible(true);
}

class FancyDisplay(points) extends JComponent implements MouseMotionListener {

    @Override
    fun paintComponent(g) {
        g.setColor(Color.RED);
        for (pt : points) {
            g.fillOval(pt.x - 5, pt.y - 5, 10, 10);
        }

        g.setColor(Color.GREEN);
        g.drawString("Hello, World!", 100, 100);
    }

    @Override
    fun mouseDragged(e) {
        points.add(Point(e.getX(), e.getY()));
        repaint();
    }
}

