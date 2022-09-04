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
@Table(name = "sanhcuoi")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Sanhcuoi.findAll", query = "SELECT s FROM Sanhcuoi s"),
    @NamedQuery(name = "Sanhcuoi.findByIdSanhCuoi", query = "SELECT s FROM Sanhcuoi s WHERE s.idSanhCuoi = :idSanhCuoi"),
    @NamedQuery(name = "Sanhcuoi.findByTenSanh", query = "SELECT s FROM Sanhcuoi s WHERE s.tenSanh = :tenSanh"),
    @NamedQuery(name = "Sanhcuoi.findByGiaToiThieu", query = "SELECT s FROM Sanhcuoi s WHERE s.giaToiThieu = :giaToiThieu"),
    @NamedQuery(name = "Sanhcuoi.findByMoTa", query = "SELECT s FROM Sanhcuoi s WHERE s.moTa = :moTa"),
    @NamedQuery(name = "Sanhcuoi.findByDienTich", query = "SELECT s FROM Sanhcuoi s WHERE s.dienTich = :dienTich"),
    @NamedQuery(name = "Sanhcuoi.findBySoLuongBan", query = "SELECT s FROM Sanhcuoi s WHERE s.soLuongBan = :soLuongBan"),
    @NamedQuery(name = "Sanhcuoi.findByHinhAnh", query = "SELECT s FROM Sanhcuoi s WHERE s.hinhAnh = :hinhAnh")})
public class Sanhcuoi implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
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
    @NotNull
    @Size(min = 1, max = 100)
    @Column(name = "hinhAnh")
    private String hinhAnh;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "idSanh")
    private Set<Dondattiec> dondattiecSet;

    @Transient
    private MultipartFile file;

    public Sanhcuoi() {
    }

    public Sanhcuoi(Integer idSanhCuoi) {
        this.idSanhCuoi = idSanhCuoi;
    }

    public Sanhcuoi(Integer idSanhCuoi, String tenSanh, long giaToiThieu, String moTa, double dienTich, int soLuongBan, String hinhAnh) {
        this.idSanhCuoi = idSanhCuoi;
        this.tenSanh = tenSanh;
        this.giaToiThieu = giaToiThieu;
        this.moTa = moTa;
        this.dienTich = dienTich;
        this.soLuongBan = soLuongBan;
        this.hinhAnh = hinhAnh;
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
