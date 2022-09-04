/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.nhtc.pojo;

import java.io.Serializable;
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
import javax.validation.constraints.NotNull;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author hdao2
 */
@Entity
@Table(name = "hoadon")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Hoadon.findAll", query = "SELECT h FROM Hoadon h"),
    @NamedQuery(name = "Hoadon.findByIdhoadon", query = "SELECT h FROM Hoadon h WHERE h.idhoadon = :idhoadon"),
    @NamedQuery(name = "Hoadon.findByTongGia", query = "SELECT h FROM Hoadon h WHERE h.tongGia = :tongGia")})
public class Hoadon implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "idhoadon")
    private Integer idhoadon;
    @Basic(optional = false)
    @NotNull
    @Column(name = "tongGia")
    private long tongGia;
    @JoinColumn(name = "idTiecCuoi", referencedColumnName = "idDonDatTiec")
    @ManyToOne(optional = false)
    private Dondattiec idTiecCuoi;

    public Hoadon() {
    }

    public Hoadon(Integer idhoadon) {
        this.idhoadon = idhoadon;
    }

    public Hoadon(Integer idhoadon, long tongGia) {
        this.idhoadon = idhoadon;
        this.tongGia = tongGia;
    }

    public Integer getIdhoadon() {
        return idhoadon;
    }

    public void setIdhoadon(Integer idhoadon) {
        this.idhoadon = idhoadon;
    }

    public long getTongGia() {
        return tongGia;
    }

    public void setTongGia(long tongGia) {
        this.tongGia = tongGia;
    }

    public Dondattiec getIdTiecCuoi() {
        return idTiecCuoi;
    }

    public void setIdTiecCuoi(Dondattiec idTiecCuoi) {
        this.idTiecCuoi = idTiecCuoi;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idhoadon != null ? idhoadon.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Hoadon)) {
            return false;
        }
        Hoadon other = (Hoadon) object;
        if ((this.idhoadon == null && other.idhoadon != null) || (this.idhoadon != null && !this.idhoadon.equals(other.idhoadon))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.nhtc.pojo.Hoadon[ idhoadon=" + idhoadon + " ]";
    }
    
}
