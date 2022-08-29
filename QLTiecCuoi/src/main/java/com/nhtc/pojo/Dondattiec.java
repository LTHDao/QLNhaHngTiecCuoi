/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.nhtc.pojo;

import java.io.Serializable;
import java.util.Date;
import java.util.Set;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author Minh
 */
@Entity
@Table(name = "dondattiec")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Dondattiec.findAll", query = "SELECT d FROM Dondattiec d"),
    @NamedQuery(name = "Dondattiec.findByIdDonDatTiec", query = "SELECT d FROM Dondattiec d WHERE d.idDonDatTiec = :idDonDatTiec"),
    @NamedQuery(name = "Dondattiec.findByChitTiet", query = "SELECT d FROM Dondattiec d WHERE d.chitTiet = :chitTiet"),
    @NamedQuery(name = "Dondattiec.findByNgayToChuc", query = "SELECT d FROM Dondattiec d WHERE d.ngayToChuc = :ngayToChuc")})
public class Dondattiec implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "idDonDatTiec")
    private Integer idDonDatTiec;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "chitTiet")
    private String chitTiet;
    @Basic(optional = false)
    @NotNull
    @Column(name = "ngayToChuc")
    @Temporal(TemporalType.DATE)
    private Date ngayToChuc;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "idTiecCuoi")
    private Set<Phieudatmon> phieudatmonSet;
    @OneToOne(cascade = CascadeType.ALL, mappedBy = "idTiecCuoi")
    private Hoadon hoadon;
    @JoinColumn(name = "idCaToChuc", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Catochuc idCaToChuc;
    @JoinColumn(name = "idKhachHang", referencedColumnName = "idKhachHang")
    @ManyToOne(optional = false)
    private Khachhang idKhachHang;
    @JoinColumn(name = "idSanh", referencedColumnName = "idSanhCuoi")
    @ManyToOne(optional = false)
    private Sanhcuoi idSanh;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "idTiecCuoi")
    private Set<Phieudatdichvu> phieudatdichvuSet;

    public Dondattiec() {
    }

    public Dondattiec(Integer idDonDatTiec) {
        this.idDonDatTiec = idDonDatTiec;
    }

    public Dondattiec(Integer idDonDatTiec, String chitTiet, Date ngayToChuc) {
        this.idDonDatTiec = idDonDatTiec;
        this.chitTiet = chitTiet;
        this.ngayToChuc = ngayToChuc;
    }

    public Integer getIdDonDatTiec() {
        return idDonDatTiec;
    }

    public void setIdDonDatTiec(Integer idDonDatTiec) {
        this.idDonDatTiec = idDonDatTiec;
    }

    public String getChitTiet() {
        return chitTiet;
    }

    public void setChitTiet(String chitTiet) {
        this.chitTiet = chitTiet;
    }

    public Date getNgayToChuc() {
        return ngayToChuc;
    }

    public void setNgayToChuc(Date ngayToChuc) {
        this.ngayToChuc = ngayToChuc;
    }

    @XmlTransient
    public Set<Phieudatmon> getPhieudatmonSet() {
        return phieudatmonSet;
    }

    public void setPhieudatmonSet(Set<Phieudatmon> phieudatmonSet) {
        this.phieudatmonSet = phieudatmonSet;
    }

    public Hoadon getHoadon() {
        return hoadon;
    }

    public void setHoadon(Hoadon hoadon) {
        this.hoadon = hoadon;
    }

    public Catochuc getIdCaToChuc() {
        return idCaToChuc;
    }

    public void setIdCaToChuc(Catochuc idCaToChuc) {
        this.idCaToChuc = idCaToChuc;
    }

    public Khachhang getIdKhachHang() {
        return idKhachHang;
    }

    public void setIdKhachHang(Khachhang idKhachHang) {
        this.idKhachHang = idKhachHang;
    }

    public Sanhcuoi getIdSanh() {
        return idSanh;
    }

    public void setIdSanh(Sanhcuoi idSanh) {
        this.idSanh = idSanh;
    }

    @XmlTransient
    public Set<Phieudatdichvu> getPhieudatdichvuSet() {
        return phieudatdichvuSet;
    }

    public void setPhieudatdichvuSet(Set<Phieudatdichvu> phieudatdichvuSet) {
        this.phieudatdichvuSet = phieudatdichvuSet;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idDonDatTiec != null ? idDonDatTiec.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Dondattiec)) {
            return false;
        }
        Dondattiec other = (Dondattiec) object;
        if ((this.idDonDatTiec == null && other.idDonDatTiec != null) || (this.idDonDatTiec != null && !this.idDonDatTiec.equals(other.idDonDatTiec))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.nhtc.pojo.Dondattiec[ idDonDatTiec=" + idDonDatTiec + " ]";
    }
    
}
