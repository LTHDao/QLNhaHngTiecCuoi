/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.nhtc.pojo;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Minh
 */
@Entity
@Table(name = "nhanvien")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Nhanvien.findAll", query = "SELECT n FROM Nhanvien n"),
    @NamedQuery(name = "Nhanvien.findByIdNhanVien", query = "SELECT n FROM Nhanvien n WHERE n.idNhanVien = :idNhanVien"),
    @NamedQuery(name = "Nhanvien.findByHoTen", query = "SELECT n FROM Nhanvien n WHERE n.hoTen = :hoTen"),
    @NamedQuery(name = "Nhanvien.findByNgaySinh", query = "SELECT n FROM Nhanvien n WHERE n.ngaySinh = :ngaySinh"),
    @NamedQuery(name = "Nhanvien.findBySdt", query = "SELECT n FROM Nhanvien n WHERE n.sdt = :sdt"),
    @NamedQuery(name = "Nhanvien.findByEmail", query = "SELECT n FROM Nhanvien n WHERE n.email = :email"),
    @NamedQuery(name = "Nhanvien.findByDiaChi", query = "SELECT n FROM Nhanvien n WHERE n.diaChi = :diaChi")})
public class Nhanvien implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "idNhanVien")
    private Integer idNhanVien;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "hoTen")
    private String hoTen;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "ngaySinh")
    private String ngaySinh;
    @Basic(optional = false)
    @NotNull
    @Column(name = "sdt")
    private int sdt;
    // @Pattern(regexp="[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?", message="Invalid email")//if the field contains email address consider using this annotation to enforce field validation
    @Size(max = 45)
    @Column(name = "email")
    private String email;
    @Size(max = 45)
    @Column(name = "diaChi")
    private String diaChi;

    public Nhanvien() {
    }

    public Nhanvien(Integer idNhanVien) {
        this.idNhanVien = idNhanVien;
    }

    public Nhanvien(Integer idNhanVien, String hoTen, String ngaySinh, int sdt) {
        this.idNhanVien = idNhanVien;
        this.hoTen = hoTen;
        this.ngaySinh = ngaySinh;
        this.sdt = sdt;
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

    public String getNgaySinh() {
        return ngaySinh;
    }

    public void setNgaySinh(String ngaySinh) {
        this.ngaySinh = ngaySinh;
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

    public String getDiaChi() {
        return diaChi;
    }

    public void setDiaChi(String diaChi) {
        this.diaChi = diaChi;
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
