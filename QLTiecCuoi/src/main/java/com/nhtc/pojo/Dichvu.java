/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.nhtc.pojo;

import com.fasterxml.jackson.annotation.JsonIgnore;
import java.io.Serializable;
import java.util.Set;
import javax.persistence.Basic;
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
@Table(name = "dichvu")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Dichvu.findAll", query = "SELECT d FROM Dichvu d"),
    @NamedQuery(name = "Dichvu.findByIdDichVu", query = "SELECT d FROM Dichvu d WHERE d.idDichVu = :idDichVu"),
    @NamedQuery(name = "Dichvu.findByTenDichVu", query = "SELECT d FROM Dichvu d WHERE d.tenDichVu = :tenDichVu"),
    @NamedQuery(name = "Dichvu.findByChiTiet", query = "SELECT d FROM Dichvu d WHERE d.chiTiet = :chiTiet"),
    @NamedQuery(name = "Dichvu.findByGiaDichVu", query = "SELECT d FROM Dichvu d WHERE d.giaDichVu = :giaDichVu"),
    @NamedQuery(name = "Dichvu.findByHinhAnh", query = "SELECT d FROM Dichvu d WHERE d.hinhAnh = :hinhAnh")})
public class Dichvu implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "idDichVu")
    private Integer idDichVu;
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
    @JoinColumn(name = "loaiDichVu", referencedColumnName = "idloaidichvu")
    @ManyToOne(optional = false)
    @JsonIgnore
    private Loaidichvu loaiDichVu;
    @OneToMany(mappedBy = "idDichVuChinh")
    @JsonIgnore
    private Set<DichVuStore> dichVuStoreSet;

    @Transient
    private MultipartFile file;

    public Dichvu() {
    }

    public Dichvu(Integer idDichVu) {
        this.idDichVu = idDichVu;
    }

    public Dichvu(Integer idDichVu, String tenDichVu, long giaDichVu) {
        this.idDichVu = idDichVu;
        this.tenDichVu = tenDichVu;
        this.giaDichVu = giaDichVu;
    }

    public Integer getIdDichVu() {
        return idDichVu;
    }

    public void setIdDichVu(Integer idDichVu) {
        this.idDichVu = idDichVu;
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

    public Loaidichvu getLoaiDichVu() {
        return loaiDichVu;
    }

    public void setLoaiDichVu(Loaidichvu loaiDichVu) {
        this.loaiDichVu = loaiDichVu;
    }

    @XmlTransient
    public Set<DichVuStore> getDichVuStoreSet() {
        return dichVuStoreSet;
    }

    public void setDichVuStoreSet(Set<DichVuStore> dichVuStoreSet) {
        this.dichVuStoreSet = dichVuStoreSet;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idDichVu != null ? idDichVu.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Dichvu)) {
            return false;
        }
        Dichvu other = (Dichvu) object;
        if ((this.idDichVu == null && other.idDichVu != null) || (this.idDichVu != null && !this.idDichVu.equals(other.idDichVu))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.nhtc.pojo.Dichvu[ idDichVu=" + idDichVu + " ]";
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
