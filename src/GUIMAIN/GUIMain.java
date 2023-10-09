package GUIMAIN;
import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

public class GUIMain {

    private JFrame frame;
    private JTextArea textArea;
    private JPanel panel;

    public GUIMain() {
        frame = new JFrame("Mainframe Terminal");
        frame.setSize(800, 600);
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setLayout(new BorderLayout());

        textArea = new JTextArea();
        textArea.setBackground(Color.BLACK);
        textArea.setForeground(Color.GREEN);
        textArea.setFont(new Font("Monospaced", Font.PLAIN, 12));
        textArea.setCaretColor(Color.GREEN);
        textArea.setEditable(false);

        JScrollPane scrollPane = new JScrollPane(textArea);
        frame.add(scrollPane, BorderLayout.CENTER);

        panel = new JPanel();
        panel.setLayout(new FlowLayout());

        String[] options = { "Option 1", "Option 2", "Option 3" };
        JComboBox<String> comboBox = new JComboBox<>(options);
        panel.add(comboBox);

        JButton selectButton = new JButton("Select");
        selectButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                textArea.setText("Selected: " + comboBox.getSelectedItem() + "\n");
            }
        });
        panel.add(selectButton);

        JButton clearButton = new JButton("Clear Screen");
        clearButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                textArea.setText("");
            }
        });
        panel.add(clearButton);

        frame.add(panel, BorderLayout.SOUTH);

        frame.setVisible(true);
    }

    public static void main(String[] args) {
        new GUIMain();
    }
}