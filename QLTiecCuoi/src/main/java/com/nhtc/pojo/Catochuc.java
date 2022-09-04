/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.nhtc.pojo;

import com.fasterxml.jackson.annotation.JsonIgnore;
import java.io.Serializable;
import java.util.Set;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author hdao2
 */
@Entity
@Table(name = "catochuc")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Catochuc.findAll", query = "SELECT c FROM Catochuc c"),
    @NamedQuery(name = "Catochuc.findById", query = "SELECT c FROM Catochuc c WHERE c.id = :id"),
    @NamedQuery(name = "Catochuc.findByThoiGian", query = "SELECT c FROM Catochuc c WHERE c.thoiGian = :thoiGian"),
    @NamedQuery(name = "Catochuc.findByGiaTang", query = "SELECT c FROM Catochuc c WHERE c.giaTang = :giaTang"),
    @NamedQuery(name = "Catochuc.findByLoaiNgay", query = "SELECT c FROM Catochuc c WHERE c.loaiNgay = :loaiNgay")})
public class Catochuc implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Size(max = 45)
    @Column(name = "thoiGian")
    private String thoiGian;
    @Column(name = "giaTang")
    private Long giaTang;
    @Size(max = 45)
    @Column(name = "loai_ngay")
    private String loaiNgay;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "idCaToChuc")
    @JsonIgnore
    private Set<Dondattiec> dondattiecSet;

    public Catochuc() {
    }

    public Catochuc(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getThoiGian() {
        return thoiGian;
    }

    public void setThoiGian(String thoiGian) {
        this.thoiGian = thoiGian;
    }

    public Long getGiaTang() {
        return giaTang;
    }

    public void setGiaTang(Long giaTang) {
        this.giaTang = giaTang;
    }

    public String getLoaiNgay() {
        return loaiNgay;
    }

    public void setLoaiNgay(String loaiNgay) {
        this.loaiNgay = loaiNgay;
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
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Catochuc)) {
            return false;
        }
        Catochuc other = (Catochuc) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.nhtc.pojo.Catochuc[ id=" + id + " ]";
    }
    
}
