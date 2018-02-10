package demo;

import java.io.File;
import java.awt.Color;
import java.awt.image.BufferedImage;
import javax.imageio.ImageIO;

fun main() {
    var image = BufferedImage(400, 400, BufferedImage.TYPE_INT_ARGB);
    var output = File("results/graphicsDemo.png");
    var graphics = image.getGraphics();

    graphics.setColor(Color.BLACK);
    graphics.fillRect(0, 0, 400, 400);

    graphics.setColor(Color.RED);
    graphics.fillRect(100, 100, 200, 200);

    graphics.setColor(Color.BLUE);
    graphics.drawOval(150, 150, 100, 100);

    graphics.setColor(Color.GREEN);
    graphics.drawString("Hello World!", 167, 205);

    ImageIO.write(image, "png", output);
}
