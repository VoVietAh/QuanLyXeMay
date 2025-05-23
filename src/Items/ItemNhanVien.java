/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/GUIForms/JPanel.java to edit this template
 */
package Items;

import Model.NhanVien;
import Utility.UtilityDate;
import Utility.UtilityImage;
import java.awt.Color;
import java.time.LocalDate;
import javax.swing.ImageIcon;

/**
 *
 * @author ADMIN
 */
public class ItemNhanVien extends javax.swing.JPanel {

    private NhanVien nv = null;
    int index;
    boolean clicked = false;

    /**
     * Creates new form ItemXemay
     */
    public ItemNhanVien(NhanVien x, int i) {
        initComponents();

        nv = x;
        index = i;
        lblMaNhanVien.setText(nv.getMaNhanVien());
        lblHovaten.setText(nv.getHovaTen());
        lblMatkhau.setText("*****");
        lblVaitro.setText(x.getVaiTro() ? "Trưởng phòng" : "Nhân viên");
        lblMail.setText(nv.getMail());
        lblHinh.setSize(188, 137);
        String ngayketthucDate = UtilityDate.DateToString(x.getNgayketthuc());
        LocalDate NgayKetThuc = null;
        LocalDate NgayHienTai = LocalDate.now();
        if (ngayketthucDate != null) {
            NgayKetThuc = UtilityDate.StringToLocalDate(ngayketthucDate);
        }

        if (x.getHinh() != null) {
            ImageIcon icon = UtilityImage.BytesToImageIcon(x.getHinh());
            lblHinh.setIcon(UtilityImage.ResizeHinh(lblHinh, icon));
        }
        if (NgayKetThuc == null || NgayKetThuc.isAfter(NgayHienTai)) {
            pnlItem.setBackground(Color.WHITE);
        } else {
            pnlItem.setBackground(Color.gray);
        }
    }

    public void Choose() {
        pnlItem.setBackground(new Color(175, 175, 220));
        lblMaNhanVien.setForeground(Color.white);
        lblHovaten.setForeground(Color.white);
        lblMatkhau.setForeground(Color.white);
        lblVaitro.setForeground(Color.white);
        lblMail.setForeground(Color.white);

        lblLabel2.setForeground(Color.white);
        lblLabel3.setForeground(Color.white);
        lblLabel4.setForeground(Color.white);
        lblLabel5.setForeground(Color.white);
        clicked = true;
    }

    public void RemoveChoose() {
        String ngayketthucDate = UtilityDate.DateToString(nv.getNgayketthuc());
        LocalDate NgayKetThuc = null;
        LocalDate NgayHienTai = LocalDate.now();
        if (ngayketthucDate != null) {
            NgayKetThuc = UtilityDate.StringToLocalDate(ngayketthucDate);
        }        
        if (NgayKetThuc == null || NgayKetThuc.isAfter(NgayHienTai)) {
            pnlItem.setBackground(Color.WHITE);
        } else {
            pnlItem.setBackground(Color.gray);
        }
        
        lblMaNhanVien.setForeground(Color.black);
        lblHovaten.setForeground(Color.black);
        lblMatkhau.setForeground(Color.black);
        lblVaitro.setForeground(Color.black);
        lblMail.setForeground(Color.black);

        lblLabel2.setForeground(Color.black);
        lblLabel3.setForeground(Color.black);
        lblLabel4.setForeground(Color.black);
        lblLabel5.setForeground(Color.black);
        clicked = false;
    }

    public String RutGonChuoi(String x) {
        String chuoi = x;
        if (chuoi.length() > 19) {//chi rut gon nhung chuoi co do dai tren 19 ky tu
            StringBuilder sb = new StringBuilder(22);//tao do dai toi da cho chuoi la 22;
            for (int i = 0; i < 22; i++) {
                if (i > 18) {
                    sb.append('.');// 3 ky tu cuoi cung là ... 
                } else {
                    sb.append(chuoi.charAt(i));     //nhung ky tu con lai add vao Stringbuilder               
                }
            }
            chuoi = sb.toString();//chuyen sang String;
        }
        return chuoi;
    }

    public int getIndex() {
        return index;
    }

    public boolean isClicked() {
        return clicked;
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        pnlItem = new javax.swing.JPanel();
        lblMaNhanVien = new javax.swing.JLabel();
        lblLabel2 = new javax.swing.JLabel();
        lblHovaten = new javax.swing.JLabel();
        lblHinh = new javax.swing.JLabel();
        lblLabel3 = new javax.swing.JLabel();
        lblMatkhau = new javax.swing.JLabel();
        lblLabel4 = new javax.swing.JLabel();
        lblVaitro = new javax.swing.JLabel();
        lblLabel5 = new javax.swing.JLabel();
        lblMail = new javax.swing.JLabel();

        setBorder(javax.swing.BorderFactory.createBevelBorder(javax.swing.border.BevelBorder.RAISED));

        pnlItem.setBackground(new java.awt.Color(255, 255, 255));

        lblMaNhanVien.setFont(new java.awt.Font("Segoe UI", 1, 14)); // NOI18N
        lblMaNhanVien.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        lblMaNhanVien.setText("Ma");

        lblLabel2.setFont(new java.awt.Font("Segoe UI", 1, 14)); // NOI18N
        lblLabel2.setText("Họ và tên :");

        lblHovaten.setFont(new java.awt.Font("Segoe UI", 0, 14)); // NOI18N
        lblHovaten.setText("jLabel4");

        lblHinh.setBorder(javax.swing.BorderFactory.createBevelBorder(javax.swing.border.BevelBorder.RAISED));
        lblHinh.setMaximumSize(new java.awt.Dimension(188, 137));
        lblHinh.setMinimumSize(new java.awt.Dimension(188, 137));
        lblHinh.setPreferredSize(new java.awt.Dimension(188, 137));

        lblLabel3.setFont(new java.awt.Font("Segoe UI", 1, 14)); // NOI18N
        lblLabel3.setText("Mật khẩu :");

        lblMatkhau.setFont(new java.awt.Font("Segoe UI", 0, 14)); // NOI18N
        lblMatkhau.setText("jLabel4");

        lblLabel4.setFont(new java.awt.Font("Segoe UI", 1, 14)); // NOI18N
        lblLabel4.setText("Vai trò :");

        lblVaitro.setFont(new java.awt.Font("Segoe UI", 0, 14)); // NOI18N
        lblVaitro.setText("jLabel4");

        lblLabel5.setFont(new java.awt.Font("Segoe UI", 1, 14)); // NOI18N
        lblLabel5.setText("Mail :");

        lblMail.setFont(new java.awt.Font("Segoe UI", 0, 14)); // NOI18N
        lblMail.setText("jLabel4");

        javax.swing.GroupLayout pnlItemLayout = new javax.swing.GroupLayout(pnlItem);
        pnlItem.setLayout(pnlItemLayout);
        pnlItemLayout.setHorizontalGroup(
            pnlItemLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(pnlItemLayout.createSequentialGroup()
                .addContainerGap()
                .addGroup(pnlItemLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING, false)
                    .addComponent(lblMaNhanVien, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(lblHinh, javax.swing.GroupLayout.PREFERRED_SIZE, 144, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(pnlItemLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(lblLabel5, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(lblLabel4, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(lblLabel3, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(lblLabel2, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(pnlItemLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addComponent(lblVaitro, javax.swing.GroupLayout.DEFAULT_SIZE, 114, Short.MAX_VALUE)
                    .addComponent(lblHovaten, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(lblMatkhau, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(lblMail, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addGap(28, 28, 28))
        );
        pnlItemLayout.setVerticalGroup(
            pnlItemLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(pnlItemLayout.createSequentialGroup()
                .addContainerGap()
                .addGroup(pnlItemLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addComponent(lblHinh, javax.swing.GroupLayout.PREFERRED_SIZE, 137, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addGroup(pnlItemLayout.createSequentialGroup()
                        .addGroup(pnlItemLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(lblLabel2)
                            .addComponent(lblHovaten))
                        .addGap(18, 18, 18)
                        .addGroup(pnlItemLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(lblLabel3)
                            .addComponent(lblMatkhau))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addGroup(pnlItemLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(lblLabel4)
                            .addComponent(lblVaitro))
                        .addGap(18, 18, 18)
                        .addGroup(pnlItemLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(lblLabel5)
                            .addComponent(lblMail))))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(lblMaNhanVien)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(this);
        this.setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(pnlItem, javax.swing.GroupLayout.PREFERRED_SIZE, 353, javax.swing.GroupLayout.PREFERRED_SIZE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(pnlItem, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );
    }// </editor-fold>//GEN-END:initComponents


    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JLabel lblHinh;
    private javax.swing.JLabel lblHovaten;
    private javax.swing.JLabel lblLabel2;
    private javax.swing.JLabel lblLabel3;
    private javax.swing.JLabel lblLabel4;
    private javax.swing.JLabel lblLabel5;
    private javax.swing.JLabel lblMaNhanVien;
    private javax.swing.JLabel lblMail;
    private javax.swing.JLabel lblMatkhau;
    private javax.swing.JLabel lblVaitro;
    private javax.swing.JPanel pnlItem;
    // End of variables declaration//GEN-END:variables
}
