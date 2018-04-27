package demo;

import javax.swing.JFrame;
import javax.swing.JButton;
import javax.swing.JLabel;

fun main() {
    var frame = TestFrame("Title...");
    frame.setLocation(600, 200);
}

public class TestFrame extends JFrame {

    public constructor(title) {
        super(str(title));
        //setSize(400, 400);
        //add(JButton("A button..."));
        //setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        //setVisible(true);
    }
}
