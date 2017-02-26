require 'java'

java_import javax.swing.JFrame
java_import javax.swing.JButton
java_import javax.swing.JOptionPane
java_import javax.swing.JTextField

class Factorial < JFrame
  def initialize
    super "Factorial"
    setSize(400,400)
    setLayout(nil)
    setDefaultCloseOperation(JFrame::EXIT_ON_CLOSE)
    setLocationRelativeTo(nil)
    boton = JButton.new("Factorial")
    texto = JTextField.new("")
    texto.setBounds(100,100,170,30)
    boton.setBounds(100,200,170,30)
    add(texto)
    add(boton)
    boton.addActionListener do |a|
      JOptionPane.showMessageDialog(nil, factorial(Integer(texto.getText)))
    end
    setVisible(true)
  end

  def factorial(n)
  	n == 1 ? 1 : n * factorial(n-1)  	
  end
end
Factorial.new
