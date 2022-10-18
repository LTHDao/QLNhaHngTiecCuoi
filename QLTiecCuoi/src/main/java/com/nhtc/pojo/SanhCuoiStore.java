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
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;
import org.springframework.web.multipart.MultipartFile;

/**
 *
 * @author hdao2
 */
@Entity
@Table(name = "sanh_cuoi_store")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "SanhCuoiStore.findAll", query = "SELECT s FROM SanhCuoiStore s"),
    @NamedQuery(name = "SanhCuoiStore.findById", query = "SELECT s FROM SanhCuoiStore s WHERE s.id = :id"),
    @NamedQuery(name = "SanhCuoiStore.findByTenSanh", query = "SELECT s FROM SanhCuoiStore s WHERE s.tenSanh = :tenSanh"),
    @NamedQuery(name = "SanhCuoiStore.findByGiaToiThieu", query = "SELECT s FROM SanhCuoiStore s WHERE s.giaToiThieu = :giaToiThieu"),
    @NamedQuery(name = "SanhCuoiStore.findByMoTa", query = "SELECT s FROM SanhCuoiStore s WHERE s.moTa = :moTa"),
    @NamedQuery(name = "SanhCuoiStore.findByDienTich", query = "SELECT s FROM SanhCuoiStore s WHERE s.dienTich = :dienTich"),
    @NamedQuery(name = "SanhCuoiStore.findBySoLuongBan", query = "SELECT s FROM SanhCuoiStore s WHERE s.soLuongBan = :soLuongBan"),
    @NamedQuery(name = "SanhCuoiStore.findByHinhAnh", query = "SELECT s FROM SanhCuoiStore s WHERE s.hinhAnh = :hinhAnh")})
public class SanhCuoiStore implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "tenSanh")
    private String tenSanh;
    @Basic(optional = false)
    @NotNull
    @Column(name = "giaToiThieu")
    private long giaToiThieu;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 500)
    @Column(name = "moTa")
    private String moTa;
    @Basic(optional = false)
    @NotNull
    @Column(name = "dienTich")
    private double dienTich;
    @Basic(optional = false)
    @NotNull
    @Column(name = "soLuongBan")
    private int soLuongBan;
    @Basic(optional = false)
    @Size(min = 1, max = 100)
    @Column(name = "hinhAnh")
    private String hinhAnh;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "idSanh")
    @JsonIgnore
    private Set<Dondattiec> dondattiecSet;
    @JoinColumn(name = "id_sanh_chinh", referencedColumnName = "idSanhCuoi")
    @ManyToOne
    private Sanhcuoi idSanhChinh;
    
    @Transient
    private MultipartFile file;

    public SanhCuoiStore() {
    }

    public SanhCuoiStore(Integer id) {
        this.id = id;
    }

    public SanhCuoiStore(Integer id, String tenSanh, long giaToiThieu, String moTa, double dienTich, int soLuongBan, String hinhAnh) {
        this.id = id;
        this.tenSanh = tenSanh;
        this.giaToiThieu = giaToiThieu;
        this.moTa = moTa;
        this.dienTich = dienTich;
        this.soLuongBan = soLuongBan;
        this.hinhAnh = hinhAnh;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTenSanh() {
        return tenSanh;
    }

    public void setTenSanh(String tenSanh) {
        this.tenSanh = tenSanh;
    }

    public long getGiaToiThieu() {
        return giaToiThieu;
    }

    public void setGiaToiThieu(long giaToiThieu) {
        this.giaToiThieu = giaToiThieu;
    }

    public String getMoTa() {
        return moTa;
    }

    public void setMoTa(String moTa) {
        this.moTa = moTa;
    }

    public double getDienTich() {
        return dienTich;
    }

    public void setDienTich(double dienTich) {
        this.dienTich = dienTich;
    }

    public int getSoLuongBan() {
        return soLuongBan;
    }

    public void setSoLuongBan(int soLuongBan) {
        this.soLuongBan = soLuongBan;
    }

    public String getHinhAnh() {
        return hinhAnh;
    }

    public void setHinhAnh(String hinhAnh) {
        this.hinhAnh = hinhAnh;
    }

    @XmlTransient
    public Set<Dondattiec> getDondattiecSet() {
        return dondattiecSet;
    }

    public void setDondattiecSet(Set<Dondattiec> dondattiecSet) {
        this.dondattiecSet = dondattiecSet;
    }

    public Sanhcuoi getIdSanhChinh() {
        return idSanhChinh;
    }

    public void setIdSanhChinh(Sanhcuoi idSanhChinh) {
        this.idSanhChinh = idSanhChinh;
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
        if (!(object instanceof SanhCuoiStore)) {
            return false;
        }
        SanhCuoiStore other = (SanhCuoiStore) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.nhtc.pojo.SanhCuoiStore[ id=" + id + " ]";
    }

    /**
     * @return the file
     */
    public MultipartFile getFile() {
        return file;
    }

    /**
     * @param file the file to set
     */
    public void setFile(MultipartFile file) {
        this.file = file;
    }
    
}
