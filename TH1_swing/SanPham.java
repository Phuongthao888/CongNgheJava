package swing;

import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import java.awt.FlowLayout;
import javax.swing.BoxLayout;
import java.awt.BorderLayout;
import javax.swing.JScrollPane;
import java.awt.TextField;
import java.awt.Label;
import java.awt.Font;
import java.awt.Button;
import java.awt.Color;
import java.awt.event.ActionListener;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Vector;
import java.awt.event.ActionEvent;
import java.awt.ScrollPane;
import javax.swing.JTable;
import javax.swing.table.DefaultTableModel;

public class SanPham extends JFrame {

	private static final long serialVersionUID = 1L;
	private JPanel dongia;
	private JTable tableSP;
	DefaultTableModel dfTableModel = new DefaultTableModel(null,new String[] {"mã hàng hóa", "Tên hàng hóa", "Giá", "Xuấtxứ","Loại sản phẩm"});
				
	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					SanPham frame = new SanPham();
					frame.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}

	/**
	 * Create the frame.
	 */
	public SanPham() {
		setTitle("Sản phẩm");
		setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
		setBounds(100, 100, 914, 678);
		dongia = new JPanel();
		dongia.setBorder(new EmptyBorder(5, 5, 5, 5));

		setContentPane(dongia);
		dongia.setLayout(null);
		
		Label label = new Label("Quản lý thông tin sản phẩm");
		label.setFont(new Font("Dialog", Font.PLAIN, 20));
		label.setBounds(319, 10, 388, 42);
		dongia.add(label);
		
		TextField textField = new TextField();
		textField.setBounds(142, 80, 214, 21);
		dongia.add(textField);
		
		Label mahang = new Label("Mã sản phẩm");
		mahang.setBounds(35, 80, 84, 21);
		dongia.add(mahang);
		
		TextField textField_1 = new TextField();
		textField_1.setBounds(142, 133, 214, 21);
		dongia.add(textField_1);
		
		Label label_2 = new Label("Đơn giá");
		label_2.setBounds(38, 133, 59, 21);
		dongia.add(label_2);
		
		TextField textField_2 = new TextField();
		textField_2.setBounds(592, 80, 214, 21);
		dongia.add(textField_2);
		
		Label tenhang = new Label("Tên sản phẩm");
		tenhang.setBounds(485, 80, 101, 21);
		dongia.add(tenhang);
		
		TextField textField_3 = new TextField();
		textField_3.setBounds(592, 133, 214, 21);
		dongia.add(textField_3);
		
		Label xuatxu = new Label("Xuất xứ");
		xuatxu.setBounds(485, 133, 59, 21);
		dongia.add(xuatxu);
		
		TextField textField_4 = new TextField();
		textField_4.setBounds(592, 184, 214, 21);
		dongia.add(textField_4);
		
		Label maloaihang = new Label("Loại sản phẩm");
		maloaihang.setBounds(485, 184, 101, 21);
		dongia.add(maloaihang);
		
		Button button = new Button("Ghi");
		button.setBackground(new Color(153, 204, 255));
		button.setBounds(129, 262, 101, 21);
		dongia.add(button);
		
		Button button_1 = new Button("Không");
		button_1.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
			}
		});
		button_1.setBackground(new Color(153, 204, 255));
		button_1.setBounds(292, 262, 101, 21);
		dongia.add(button_1);
		
		Button button_2 = new Button("Sửa");
		button_2.setBackground(new Color(153, 204, 255));
		button_2.setBounds(480, 262, 101, 21);
		dongia.add(button_2);
		
		Button button_3 = new Button("Xóa");
		button_3.setBackground(new Color(153, 204, 255));
		button_3.setBounds(643, 262, 101, 21);
		dongia.add(button_3);
		
		JScrollPane scrollPane = new JScrollPane();
		scrollPane.setBounds(35, 332, 855, 326);
		dongia.add(scrollPane);
		List<spModel> lst=new ArrayList<spModel>();
		CSDL csdl=new CSDL();
		try {
		lst=csdl.getProduct();
		for(spModel sp:lst) {
		Vector value=new Vector();
		value.add(sp.getMasp());
		value.add(sp.getTensp());
		value.add(sp.getDongia());
		value.add(sp.getXuatxu());
		value.add(sp.getLoaisp());
		dfTableModel.addRow(value);
		}
		} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		}		
		
		
	
		tableSP = new JTable();
		tableSP.setModel(dfTableModel);
		scrollPane.setViewportView(tableSP);
	}
}
