/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.nhtc.pojo;

import com.fasterxml.jackson.annotation.JsonProperty;
import java.io.Serializable;
import java.util.Date;
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
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author hdao2
 */
@Entity
@Table(name = "phan_hoi")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "PhanHoi.findAll", query = "SELECT p FROM PhanHoi p"),
    @NamedQuery(name = "PhanHoi.findById", query = "SELECT p FROM PhanHoi p WHERE p.id = :id"),
    @NamedQuery(name = "PhanHoi.findByNoiDung", query = "SELECT p FROM PhanHoi p WHERE p.noiDung = :noiDung"),
    @NamedQuery(name = "PhanHoi.findByNgayPhanHoi", query = "SELECT p FROM PhanHoi p WHERE p.ngayPhanHoi = :ngayPhanHoi")})
public class PhanHoi implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 300)
    @Column(name = "noi_dung")
    private String noiDung;
    @Basic(optional = false)
    @NotNull
    @Column(name = "ngay_phan_hoi")
    @Temporal(TemporalType.TIMESTAMP)
    private Date ngayPhanHoi = new Date();
    @JoinColumn(name = "user_id", referencedColumnName = "id")
    @ManyToOne(optional = false)
    @JsonProperty("user")
    private User userId;

    public PhanHoi() {
    }

    public PhanHoi(Integer id) {
        this.id = id;
    }

    public PhanHoi(Integer id, String noiDung, Date ngayPhanHoi) {
        this.id = id;
        this.noiDung = noiDung;
        this.ngayPhanHoi = ngayPhanHoi;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNoiDung() {
        return noiDung;
    }

    public void setNoiDung(String noiDung) {
        this.noiDung = noiDung;
    }

    public Date getNgayPhanHoi() {
        return ngayPhanHoi;
    }

    public void setNgayPhanHoi(Date ngayPhanHoi) {
        this.ngayPhanHoi = ngayPhanHoi;
    }

    public User getUserId() {
        return userId;
    }

    public void setUserId(User userId) {
        this.userId = userId;
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
        if (!(object instanceof PhanHoi)) {
            return false;
        }
        PhanHoi other = (PhanHoi) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.nhtc.pojo.PhanHoi[ id=" + id + " ]";
    }
    
}
