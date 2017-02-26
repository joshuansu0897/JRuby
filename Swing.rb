require 'java'

java_import javax.swing.JFrame
java_import javax.swing.JButton
java_import javax.swing.JOptionPane

class Saludar < JFrame
  def initialize
    super "Ejemplo"
    setSize(100,75)
    setDefaultCloseOperation(JFrame::EXIT_ON_CLOSE)

    boton = JButton.new("Saluda")
    add(boton)

    boton.addActionListener do |a|
      JOptionPane.showMessageDialog(nil, "que tranza raza")
    end
    setVisible(true)
  end
end
Saludar.new
