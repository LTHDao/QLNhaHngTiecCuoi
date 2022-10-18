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
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author hdao2
 */
@Entity
@Table(name = "phieudatdichvu")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Phieudatdichvu.findAll", query = "SELECT p FROM Phieudatdichvu p"),
    @NamedQuery(name = "Phieudatdichvu.findById", query = "SELECT p FROM Phieudatdichvu p WHERE p.id = :id"),
    @NamedQuery(name = "Phieudatdichvu.findByGhiChu", query = "SELECT p FROM Phieudatdichvu p WHERE p.ghiChu = :ghiChu")})
public class Phieudatdichvu implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Size(max = 100)
    @Column(name = "ghiChu")
    private String ghiChu;
    @JoinColumn(name = "idDichVu", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private DichVuStore idDichVu;
    @JoinColumn(name = "idTiecCuoi", referencedColumnName = "idDonDatTiec")
    @ManyToOne(optional = false)
    private Dondattiec idTiecCuoi;

    public Phieudatdichvu() {
    }

    public Phieudatdichvu(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getGhiChu() {
        return ghiChu;
    }

    public void setGhiChu(String ghiChu) {
        this.ghiChu = ghiChu;
    }

    public DichVuStore getIdDichVu() {
        return idDichVu;
    }

    public void setIdDichVu(DichVuStore idDichVu) {
        this.idDichVu = idDichVu;
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
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Phieudatdichvu)) {
            return false;
        }
        Phieudatdichvu other = (Phieudatdichvu) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.nhtc.pojo.Phieudatdichvu[ id=" + id + " ]";
    }
    
}
