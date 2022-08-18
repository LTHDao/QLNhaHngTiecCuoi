/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.nhtc.pojo;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author hdao2
 */
@Entity
@Table(name = "nhanvien")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Nhanvien.findAll", query = "SELECT n FROM Nhanvien n"),
    @NamedQuery(name = "Nhanvien.findByIdNhanVien", query = "SELECT n FROM Nhanvien n WHERE n.idNhanVien = :idNhanVien"),
    @NamedQuery(name = "Nhanvien.findByHoTen", query = "SELECT n FROM Nhanvien n WHERE n.hoTen = :hoTen"),
    @NamedQuery(name = "Nhanvien.findBySdt", query = "SELECT n FROM Nhanvien n WHERE n.sdt = :sdt"),
    @NamedQuery(name = "Nhanvien.findByEmail", query = "SELECT n FROM Nhanvien n WHERE n.email = :email"),
    @NamedQuery(name = "Nhanvien.findByUserName", query = "SELECT n FROM Nhanvien n WHERE n.userName = :userName"),
    @NamedQuery(name = "Nhanvien.findByPass", query = "SELECT n FROM Nhanvien n WHERE n.pass = :pass")})
public class Nhanvien implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "idNhanVien")
    private Integer idNhanVien;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "hoTen")
    private String hoTen;
    @Basic(optional = false)
    @NotNull
    @Column(name = "sdt")
    private int sdt;
    // @Pattern(regexp="[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?", message="Invalid email")//if the field contains email address consider using this annotation to enforce field validation
    @Size(max = 45)
    @Column(name = "email")
    private String email;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "userName")
    private String userName;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "pass")
    private String pass;
    @JoinColumn(name = "userID", referencedColumnName = "id")
    @OneToOne(optional = false)
    private User userID;

    public Nhanvien() {
    }

    public Nhanvien(Integer idNhanVien) {
        this.idNhanVien = idNhanVien;
    }

    public Nhanvien(Integer idNhanVien, String hoTen, int sdt, String userName, String pass) {
        this.idNhanVien = idNhanVien;
        this.hoTen = hoTen;
        this.sdt = sdt;
        this.userName = userName;
        this.pass = pass;
    }

    public Integer getIdNhanVien() {
        return idNhanVien;
    }

    public void setIdNhanVien(Integer idNhanVien) {
        this.idNhanVien = idNhanVien;
    }

    public String getHoTen() {
        return hoTen;
    }

    public void setHoTen(String hoTen) {
        this.hoTen = hoTen;
    }

    public int getSdt() {
        return sdt;
    }

    public void setSdt(int sdt) {
        this.sdt = sdt;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public User getUserID() {
        return userID;
    }

    public void setUserID(User userID) {
        this.userID = userID;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idNhanVien != null ? idNhanVien.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Nhanvien)) {
            return false;
        }
        Nhanvien other = (Nhanvien) object;
        if ((this.idNhanVien == null && other.idNhanVien != null) || (this.idNhanVien != null && !this.idNhanVien.equals(other.idNhanVien))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.nhtc.pojo.Nhanvien[ idNhanVien=" + idNhanVien + " ]";
    }
    
}
