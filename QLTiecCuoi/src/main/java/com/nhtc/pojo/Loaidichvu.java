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
 * @author Minh
 */
@Entity
@Table(name = "loaidichvu")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Loaidichvu.findAll", query = "SELECT l FROM Loaidichvu l"),
    @NamedQuery(name = "Loaidichvu.findByIdloaidichvu", query = "SELECT l FROM Loaidichvu l WHERE l.idloaidichvu = :idloaidichvu"),
    @NamedQuery(name = "Loaidichvu.findByTenLoaiDichVu", query = "SELECT l FROM Loaidichvu l WHERE l.tenLoaiDichVu = :tenLoaiDichVu")})
public class Loaidichvu implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "idloaidichvu")
    private Integer idloaidichvu;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "tenLoaiDichVu")
    private String tenLoaiDichVu;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "loaiDichVu")
    private Set<Dichvu> dichvuSet;

    public Loaidichvu() {
    }

    public Loaidichvu(Integer idloaidichvu) {
        this.idloaidichvu = idloaidichvu;
    }

    public Loaidichvu(Integer idloaidichvu, String tenLoaiDichVu) {
        this.idloaidichvu = idloaidichvu;
        this.tenLoaiDichVu = tenLoaiDichVu;
    }

    public Integer getIdloaidichvu() {
        return idloaidichvu;
    }

    public void setIdloaidichvu(Integer idloaidichvu) {
        this.idloaidichvu = idloaidichvu;
    }

    public String getTenLoaiDichVu() {
        return tenLoaiDichVu;
    }

    public void setTenLoaiDichVu(String tenLoaiDichVu) {
        this.tenLoaiDichVu = tenLoaiDichVu;
    }

    @XmlTransient
    public Set<Dichvu> getDichvuSet() {
        return dichvuSet;
    }

    public void setDichvuSet(Set<Dichvu> dichvuSet) {
        this.dichvuSet = dichvuSet;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idloaidichvu != null ? idloaidichvu.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Loaidichvu)) {
            return false;
        }
        Loaidichvu other = (Loaidichvu) object;
        if ((this.idloaidichvu == null && other.idloaidichvu != null) || (this.idloaidichvu != null && !this.idloaidichvu.equals(other.idloaidichvu))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.nhtc.pojo.Loaidichvu[ idloaidichvu=" + idloaidichvu + " ]";
    }
    
}
