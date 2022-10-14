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
 * @author Minh
 */
@Entity
@Table(name = "dich_vu_store")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "DichVuStore.findAll", query = "SELECT d FROM DichVuStore d"),
    @NamedQuery(name = "DichVuStore.findById", query = "SELECT d FROM DichVuStore d WHERE d.id = :id"),
    @NamedQuery(name = "DichVuStore.findByTenDichVu", query = "SELECT d FROM DichVuStore d WHERE d.tenDichVu = :tenDichVu"),
    @NamedQuery(name = "DichVuStore.findByChiTiet", query = "SELECT d FROM DichVuStore d WHERE d.chiTiet = :chiTiet"),
    @NamedQuery(name = "DichVuStore.findByGiaDichVu", query = "SELECT d FROM DichVuStore d WHERE d.giaDichVu = :giaDichVu"),
    @NamedQuery(name = "DichVuStore.findByHinhAnh", query = "SELECT d FROM DichVuStore d WHERE d.hinhAnh = :hinhAnh"),
    @NamedQuery(name = "DichVuStore.findByLoaiDichVu", query = "SELECT d FROM DichVuStore d WHERE d.loaiDichVu = :loaiDichVu")})
public class DichVuStore implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "tenDichVu")
    private String tenDichVu;
    @Size(max = 250)
    @Column(name = "chiTiet")
    private String chiTiet;
    @Basic(optional = false)
    @NotNull
    @Column(name = "giaDichVu")
    private long giaDichVu;
    @Size(max = 150)
    @Column(name = "hinhAnh")
    private String hinhAnh;
    @Basic(optional = false)
    @NotNull
    @Column(name = "loaiDichVu")
    private int loaiDichVu;
    @JoinColumn(name = "id_dich_vu_chinh", referencedColumnName = "idDichVu")
    @ManyToOne
    private Dichvu idDichVuChinh;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "idDichVu")
    private Set<Phieudatdichvu> phieudatdichvuSet;

    public DichVuStore() {
    }

    public DichVuStore(Integer id) {
        this.id = id;
    }

    public DichVuStore(Integer id, String tenDichVu, long giaDichVu, int loaiDichVu) {
        this.id = id;
        this.tenDichVu = tenDichVu;
        this.giaDichVu = giaDichVu;
        this.loaiDichVu = loaiDichVu;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTenDichVu() {
        return tenDichVu;
    }

    public void setTenDichVu(String tenDichVu) {
        this.tenDichVu = tenDichVu;
    }

    public String getChiTiet() {
        return chiTiet;
    }

    public void setChiTiet(String chiTiet) {
        this.chiTiet = chiTiet;
    }

    public long getGiaDichVu() {
        return giaDichVu;
    }

    public void setGiaDichVu(long giaDichVu) {
        this.giaDichVu = giaDichVu;
    }

    public String getHinhAnh() {
        return hinhAnh;
    }

    public void setHinhAnh(String hinhAnh) {
        this.hinhAnh = hinhAnh;
    }

    public int getLoaiDichVu() {
        return loaiDichVu;
    }

    public void setLoaiDichVu(int loaiDichVu) {
        this.loaiDichVu = loaiDichVu;
    }

    public Dichvu getIdDichVuChinh() {
        return idDichVuChinh;
    }

    public void setIdDichVuChinh(Dichvu idDichVuChinh) {
        this.idDichVuChinh = idDichVuChinh;
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
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof DichVuStore)) {
            return false;
        }
        DichVuStore other = (DichVuStore) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.nhtc.pojo.DichVuStore[ id=" + id + " ]";
    }
    
}
