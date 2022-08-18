/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.nhtc.pojo;

import java.io.Serializable;
import java.util.Set;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author hdao2
 */
@Entity
@Table(name = "khachhang")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Khachhang.findAll", query = "SELECT k FROM Khachhang k"),
    @NamedQuery(name = "Khachhang.findByIdKhachHang", query = "SELECT k FROM Khachhang k WHERE k.idKhachHang = :idKhachHang"),
    @NamedQuery(name = "Khachhang.findByTenKH", query = "SELECT k FROM Khachhang k WHERE k.tenKH = :tenKH"),
    @NamedQuery(name = "Khachhang.findBySdt", query = "SELECT k FROM Khachhang k WHERE k.sdt = :sdt"),
    @NamedQuery(name = "Khachhang.findByEmail", query = "SELECT k FROM Khachhang k WHERE k.email = :email")})
public class Khachhang implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "idKhachHang")
    private Integer idKhachHang;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "tenKH")
    private String tenKH;
    @Basic(optional = false)
    @NotNull
    @Column(name = "sdt")
    private int sdt;
    // @Pattern(regexp="[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?", message="Invalid email")//if the field contains email address consider using this annotation to enforce field validation
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "email")
    private String email;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "idKhachHang")
    private Set<Dondattiec> dondattiecSet;

    public Khachhang() {
    }

    public Khachhang(Integer idKhachHang) {
        this.idKhachHang = idKhachHang;
    }

    public Khachhang(Integer idKhachHang, String tenKH, int sdt, String email) {
        this.idKhachHang = idKhachHang;
        this.tenKH = tenKH;
        this.sdt = sdt;
        this.email = email;
    }

    public Integer getIdKhachHang() {
        return idKhachHang;
    }

    public void setIdKhachHang(Integer idKhachHang) {
        this.idKhachHang = idKhachHang;
    }

    public String getTenKH() {
        return tenKH;
    }

    public void setTenKH(String tenKH) {
        this.tenKH = tenKH;
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

    @XmlTransient
    public Set<Dondattiec> getDondattiecSet() {
        return dondattiecSet;
    }

    public void setDondattiecSet(Set<Dondattiec> dondattiecSet) {
        this.dondattiecSet = dondattiecSet;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idKhachHang != null ? idKhachHang.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Khachhang)) {
            return false;
        }
        Khachhang other = (Khachhang) object;
        if ((this.idKhachHang == null && other.idKhachHang != null) || (this.idKhachHang != null && !this.idKhachHang.equals(other.idKhachHang))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.nhtc.pojo.Khachhang[ idKhachHang=" + idKhachHang + " ]";
    }
    
}
