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
@Table(name = "sanhcuoi")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Sanhcuoi.findAll", query = "SELECT s FROM Sanhcuoi s"),
    @NamedQuery(name = "Sanhcuoi.findByIdSanhCuoi", query = "SELECT s FROM Sanhcuoi s WHERE s.idSanhCuoi = :idSanhCuoi"),
    @NamedQuery(name = "Sanhcuoi.findByTenSanh", query = "SELECT s FROM Sanhcuoi s WHERE s.tenSanh = :tenSanh"),
    @NamedQuery(name = "Sanhcuoi.findByGiaToiThieu", query = "SELECT s FROM Sanhcuoi s WHERE s.giaToiThieu = :giaToiThieu"),
    @NamedQuery(name = "Sanhcuoi.findByMoTa", query = "SELECT s FROM Sanhcuoi s WHERE s.moTa = :moTa"),
    @NamedQuery(name = "Sanhcuoi.findByT\u00ecnhTrangSanh", query = "SELECT s FROM Sanhcuoi s WHERE s.t\u00ecnhTrangSanh = :t\u00ecnhTrangSanh")})
public class Sanhcuoi implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "idSanhCuoi")
    private Integer idSanhCuoi;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "tenSanh")
    private String tenSanh;
    @Basic(optional = false)
    @NotNull
    @Column(name = "giaToiThieu")
    private float giaToiThieu;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "moTa")
    private String moTa;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 10)
    @Column(name = "t\u00ecnhTrangSanh")
    private String tìnhTrangSanh;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "idSanh")
    private Set<Dondattiec> dondattiecSet;
    @JoinColumn(name = "loaiSanhID", referencedColumnName = "idloai_sanh")
    @ManyToOne(optional = false)
    private Loaisanh loaiSanhID;

    public Sanhcuoi() {
    }

    public Sanhcuoi(Integer idSanhCuoi) {
        this.idSanhCuoi = idSanhCuoi;
    }

    public Sanhcuoi(Integer idSanhCuoi, String tenSanh, float giaToiThieu, String moTa, String tìnhTrangSanh) {
        this.idSanhCuoi = idSanhCuoi;
        this.tenSanh = tenSanh;
        this.giaToiThieu = giaToiThieu;
        this.moTa = moTa;
        this.tìnhTrangSanh = tìnhTrangSanh;
    }

    public Integer getIdSanhCuoi() {
        return idSanhCuoi;
    }

    public void setIdSanhCuoi(Integer idSanhCuoi) {
        this.idSanhCuoi = idSanhCuoi;
    }

    public String getTenSanh() {
        return tenSanh;
    }

    public void setTenSanh(String tenSanh) {
        this.tenSanh = tenSanh;
    }

    public float getGiaToiThieu() {
        return giaToiThieu;
    }

    public void setGiaToiThieu(float giaToiThieu) {
        this.giaToiThieu = giaToiThieu;
    }

    public String getMoTa() {
        return moTa;
    }

    public void setMoTa(String moTa) {
        this.moTa = moTa;
    }

    public String getTìnhTrangSanh() {
        return tìnhTrangSanh;
    }

    public void setTìnhTrangSanh(String tìnhTrangSanh) {
        this.tìnhTrangSanh = tìnhTrangSanh;
    }

    @XmlTransient
    public Set<Dondattiec> getDondattiecSet() {
        return dondattiecSet;
    }

    public void setDondattiecSet(Set<Dondattiec> dondattiecSet) {
        this.dondattiecSet = dondattiecSet;
    }

    public Loaisanh getLoaiSanhID() {
        return loaiSanhID;
    }

    public void setLoaiSanhID(Loaisanh loaiSanhID) {
        this.loaiSanhID = loaiSanhID;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idSanhCuoi != null ? idSanhCuoi.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Sanhcuoi)) {
            return false;
        }
        Sanhcuoi other = (Sanhcuoi) object;
        if ((this.idSanhCuoi == null && other.idSanhCuoi != null) || (this.idSanhCuoi != null && !this.idSanhCuoi.equals(other.idSanhCuoi))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.nhtc.pojo.Sanhcuoi[ idSanhCuoi=" + idSanhCuoi + " ]";
    }
    
}
