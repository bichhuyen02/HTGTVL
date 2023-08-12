/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.htran.pojo;

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
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author ACER
 */
@Entity
@Table(name = "apply")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Apply.findAll", query = "SELECT a FROM Apply a"),
    @NamedQuery(name = "Apply.findById", query = "SELECT a FROM Apply a WHERE a.id = :id"),
    @NamedQuery(name = "Apply.findByCv", query = "SELECT a FROM Apply a WHERE a.cv = :cv"),
    @NamedQuery(name = "Apply.findByDescription", query = "SELECT a FROM Apply a WHERE a.description = :description")})
public class Apply implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 255)
    @Column(name = "cv")
    private String cv;
    @Size(max = 255)
    @Column(name = "description")
    private String description;
    @JoinColumn(name = "notifi_id", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Notifi notifiId;

    public Apply() {
    }

    public Apply(Integer id) {
        this.id = id;
    }

    public Apply(Integer id, String cv) {
        this.id = id;
        this.cv = cv;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCv() {
        return cv;
    }

    public void setCv(String cv) {
        this.cv = cv;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Notifi getNotifiId() {
        return notifiId;
    }

    public void setNotifiId(Notifi notifiId) {
        this.notifiId = notifiId;
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
        if (!(object instanceof Apply)) {
            return false;
        }
        Apply other = (Apply) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.htran.pojo.Apply[ id=" + id + " ]";
    }
    
}
