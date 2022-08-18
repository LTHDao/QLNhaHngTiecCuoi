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
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
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
@Table(name = "monan")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Monan.findAll", query = "SELECT m FROM Monan m"),
    @NamedQuery(name = "Monan.findById", query = "SELECT m FROM Monan m WHERE m.id = :id"),
    @NamedQuery(name = "Monan.findByTen", query = "SELECT m FROM Monan m WHERE m.ten = :ten"),
    @NamedQuery(name = "Monan.findByGia", query = "SELECT m FROM Monan m WHERE m.gia = :gia")})
public class Monan implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "id")
    private Integer id;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "ten")
    private String ten;
    @Basic(optional = false)
    @NotNull
    @Column(name = "gia")
    private float gia;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "idMonAn")
    private Set<Phieudatmon> phieudatmonSet;
    @JoinColumn(name = "idThucDon", referencedColumnName = "idThucDon")
    @ManyToOne(optional = false)
    private Loaimon idThucDon;

    public Monan() {
    }

    public Monan(Integer id) {
        this.id = id;
    }

    public Monan(Integer id, String ten, float gia) {
        this.id = id;
        this.ten = ten;
        this.gia = gia;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTen() {
        return ten;
    }

    public void setTen(String ten) {
        this.ten = ten;
    }

    public float getGia() {
        return gia;
    }

    public void setGia(float gia) {
        this.gia = gia;
    }

    @XmlTransient
    public Set<Phieudatmon> getPhieudatmonSet() {
        return phieudatmonSet;
    }

    public void setPhieudatmonSet(Set<Phieudatmon> phieudatmonSet) {
        this.phieudatmonSet = phieudatmonSet;
    }

    public Loaimon getIdThucDon() {
        return idThucDon;
    }

    public void setIdThucDon(Loaimon idThucDon) {
        this.idThucDon = idThucDon;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Monan)) {
            return false;
        }
        Monan other = (Monan) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.nhtc.pojo.Monan[ id=" + id + " ]";
    }
    
}
