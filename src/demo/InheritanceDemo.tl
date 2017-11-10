package demo;

import javax.swing.JFrame;
import javax.swing.JButton;

fun main() {
    var frame = TestFrame("Title...");
}

public class TestFrame extends JFrame {

    public constructor(title) {
        super(str(title));
        setSize(400, 400);
        add(JButton("A button..."));
        setVisible(true);
    }
}
