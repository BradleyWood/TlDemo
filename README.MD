### TLDemo

This repository contains a few demo programs for my JVM language.


#### MathDemo

The math demo serves to display the simplicity of mathematical functions.

```java
f(x) = x**2 + x + 1;

g(x) = 4 * x + 50;
```


#### Interoperability

A simple example of java interop.

```java
import javax.swing.JOptionPane;

fun main() {
    var input = JOptionPane.showInputDialog("What is your name?");
    JOptionPane.showMessageDialog(null, "Hello, " + input);
}
```

#### Go routines

A go routine can be created by using the ```go``` keyword followed by
function invocation.

```java
go aFunction();
```
