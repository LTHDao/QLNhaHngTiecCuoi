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
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
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
@Table(name = "loaisanh")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Loaisanh.findAll", query = "SELECT l FROM Loaisanh l"),
    @NamedQuery(name = "Loaisanh.findByIdloaiSanh", query = "SELECT l FROM Loaisanh l WHERE l.idloaiSanh = :idloaiSanh"),
    @NamedQuery(name = "Loaisanh.findByTenLoaiSanh", query = "SELECT l FROM Loaisanh l WHERE l.tenLoaiSanh = :tenLoaiSanh")})
public class Loaisanh implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "idloai_sanh")
    private Integer idloaiSanh;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "tenLoaiSanh")
    private String tenLoaiSanh;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "loaiSanhID")
    private Set<Sanhcuoi> sanhcuoiSet;

    public Loaisanh() {
    }

    public Loaisanh(Integer idloaiSanh) {
        this.idloaiSanh = idloaiSanh;
    }

    public Loaisanh(Integer idloaiSanh, String tenLoaiSanh) {
        this.idloaiSanh = idloaiSanh;
        this.tenLoaiSanh = tenLoaiSanh;
    }

    public Integer getIdloaiSanh() {
        return idloaiSanh;
    }

    public void setIdloaiSanh(Integer idloaiSanh) {
        this.idloaiSanh = idloaiSanh;
    }

    public String getTenLoaiSanh() {
        return tenLoaiSanh;
    }

    public void setTenLoaiSanh(String tenLoaiSanh) {
        this.tenLoaiSanh = tenLoaiSanh;
    }

    @XmlTransient
    public Set<Sanhcuoi> getSanhcuoiSet() {
        return sanhcuoiSet;
    }

    public void setSanhcuoiSet(Set<Sanhcuoi> sanhcuoiSet) {
        this.sanhcuoiSet = sanhcuoiSet;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idloaiSanh != null ? idloaiSanh.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Loaisanh)) {
            return false;
        }
        Loaisanh other = (Loaisanh) object;
        if ((this.idloaiSanh == null && other.idloaiSanh != null) || (this.idloaiSanh != null && !this.idloaiSanh.equals(other.idloaiSanh))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.nhtc.pojo.Loaisanh[ idloaiSanh=" + idloaiSanh + " ]";
    }
    
}
