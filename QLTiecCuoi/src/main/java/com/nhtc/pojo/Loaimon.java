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
@Table(name = "loaimon")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Loaimon.findAll", query = "SELECT l FROM Loaimon l"),
    @NamedQuery(name = "Loaimon.findByIdThucDon", query = "SELECT l FROM Loaimon l WHERE l.idThucDon = :idThucDon"),
    @NamedQuery(name = "Loaimon.findByTenLoaiMon", query = "SELECT l FROM Loaimon l WHERE l.tenLoaiMon = :tenLoaiMon")})
public class Loaimon implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "idThucDon")
    private Integer idThucDon;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "tenLoaiMon")
    private String tenLoaiMon;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "idThucDon")
    private Set<Monan> monanSet;

    public Loaimon() {
    }

    public Loaimon(Integer idThucDon) {
        this.idThucDon = idThucDon;
    }

    public Loaimon(Integer idThucDon, String tenLoaiMon) {
        this.idThucDon = idThucDon;
        this.tenLoaiMon = tenLoaiMon;
    }

    public Integer getIdThucDon() {
        return idThucDon;
    }

    public void setIdThucDon(Integer idThucDon) {
        this.idThucDon = idThucDon;
    }

    public String getTenLoaiMon() {
        return tenLoaiMon;
    }

    public void setTenLoaiMon(String tenLoaiMon) {
        this.tenLoaiMon = tenLoaiMon;
    }

    @XmlTransient
    public Set<Monan> getMonanSet() {
        return monanSet;
    }

    public void setMonanSet(Set<Monan> monanSet) {
        this.monanSet = monanSet;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idThucDon != null ? idThucDon.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Loaimon)) {
            return false;
        }
        Loaimon other = (Loaimon) object;
        if ((this.idThucDon == null && other.idThucDon != null) || (this.idThucDon != null && !this.idThucDon.equals(other.idThucDon))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.nhtc.pojo.Loaimon[ idThucDon=" + idThucDon + " ]";
    }
    
}
