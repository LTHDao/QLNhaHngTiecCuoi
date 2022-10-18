/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.nhtc.pojo;

import com.fasterxml.jackson.annotation.JsonIgnore;
import java.io.Serializable;
import java.util.Date;
import java.util.Set;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author hdao2
 */
@Entity
@Table(name = "dondattiec")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Dondattiec.findAll", query = "SELECT d FROM Dondattiec d"),
    @NamedQuery(name = "Dondattiec.findByIdDonDatTiec", query = "SELECT d FROM Dondattiec d WHERE d.idDonDatTiec = :idDonDatTiec"),
    @NamedQuery(name = "Dondattiec.findByChitTiet", query = "SELECT d FROM Dondattiec d WHERE d.chitTiet = :chitTiet"),
    @NamedQuery(name = "Dondattiec.findByNgayToChuc", query = "SELECT d FROM Dondattiec d WHERE d.ngayToChuc = :ngayToChuc"),
    @NamedQuery(name = "Dondattiec.findBySoBan", query = "SELECT d FROM Dondattiec d WHERE d.soBan = :soBan")})
public class Dondattiec implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "idDonDatTiec")
    private Integer idDonDatTiec;
    @Size(max = 45)
    @Column(name = "chitTiet")
    private String chitTiet;
    @Basic(optional = false)
    @NotNull
    @Column(name = "ngayToChuc")
    @Temporal(TemporalType.TIMESTAMP)
    private Date ngayToChuc;
    @Basic(optional = false)
    @NotNull
    @Column(name = "ngayDatHen")
    @Temporal(TemporalType.TIMESTAMP)
    private Date ngayDatHen;
    @Basic(optional = false)
    @NotNull
    @Column(name = "soBan")
    private int soBan;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "idTiecCuoi")
    @JsonIgnore
    private Set<Phieudatmon> phieudatmonSet;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "idTiecCuoi")
    @JsonIgnore
    private Set<Hoadon> hoadonSet;
    @JoinColumn(name = "idCaToChuc", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Catochuc idCaToChuc;
    @JoinColumn(name = "idKhachHang", referencedColumnName = "idKhachHang")
    @ManyToOne(optional = false)
    private Khachhang idKhachHang;
    @JoinColumn(name = "idSanh", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private SanhCuoiStore idSanh;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "idTiecCuoi")
    @JsonIgnore
    private Set<Phieudatdichvu> phieudatdichvuSet;

    public Dondattiec() {
    }

    public Dondattiec(Integer idDonDatTiec) {
        this.idDonDatTiec = idDonDatTiec;
    }

    public Dondattiec(Integer idDonDatTiec, Date ngayToChuc, int soBan) {
        this.idDonDatTiec = idDonDatTiec;
        this.ngayToChuc = ngayToChuc;
        this.soBan = soBan;
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

    public int getSoBan() {
        return soBan;
    }

    public void setSoBan(int soBan) {
        this.soBan = soBan;
    }

    @XmlTransient
    public Set<Phieudatmon> getPhieudatmonSet() {
        return phieudatmonSet;
    }

    public void setPhieudatmonSet(Set<Phieudatmon> phieudatmonSet) {
        this.phieudatmonSet = phieudatmonSet;
    }

    @XmlTransient
    public Set<Hoadon> getHoadonSet() {
        return hoadonSet;
    }

    public void setHoadonSet(Set<Hoadon> hoadonSet) {
        this.hoadonSet = hoadonSet;
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

    public SanhCuoiStore getIdSanh() {
        return idSanh;
    }

    public void setIdSanh(SanhCuoiStore idSanh) {
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

    /**
     * @return the ngayDatHen
     */
    public Date getNgayDatHen() {
        return ngayDatHen;
    }

    /**
     * @param ngayDatHen the ngayDatHen to set
     */
    public void setNgayDatHen(Date ngayDatHen) {
        this.ngayDatHen = ngayDatHen;
    }
    
}
