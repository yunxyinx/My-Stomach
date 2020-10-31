/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entity;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
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
 * @author yunxyinx
 */
@Entity
@Table(name = "menu")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Menu.findAll", query = "SELECT m FROM Menu m"),
    @NamedQuery(name = "Menu.findByMenuID", query = "SELECT m FROM Menu m WHERE m.menuID = :menuID"),
    @NamedQuery(name = "Menu.findByFood", query = "SELECT m FROM Menu m WHERE m.food = :food"),
    @NamedQuery(name = "Menu.findByCalorie", query = "SELECT m FROM Menu m WHERE m.calorie = :calorie")})
public class Menu implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "menuID")
    private Integer menuID;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 100)
    @Column(name = "food")
    private String food;
    @Basic(optional = false)
    @NotNull
    @Column(name = "calorie")
    private int calorie;
    @JoinColumn(name = "category_categoryID", referencedColumnName = "categoryID")
    @ManyToOne(optional = false)
    private Category categorycategoryID;

    public Menu() {
    }

    public Menu(Integer menuID) {
        this.menuID = menuID;
    }

    public Menu(Integer menuID, String food, int calorie) {
        this.menuID = menuID;
        this.food = food;
        this.calorie = calorie;
    }

    public Integer getMenuID() {
        return menuID;
    }

    public void setMenuID(Integer menuID) {
        this.menuID = menuID;
    }

    public String getFood() {
        return food;
    }

    public void setFood(String food) {
        this.food = food;
    }

    public int getCalorie() {
        return calorie;
    }

    public void setCalorie(int calorie) {
        this.calorie = calorie;
    }

    public Category getCategorycategoryID() {
        return categorycategoryID;
    }

    public void setCategorycategoryID(Category categorycategoryID) {
        this.categorycategoryID = categorycategoryID;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (menuID != null ? menuID.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Menu)) {
            return false;
        }
        Menu other = (Menu) object;
        if ((this.menuID == null && other.menuID != null) || (this.menuID != null && !this.menuID.equals(other.menuID))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Entity.Menu[ menuID=" + menuID + ", food=" + food +", calorie"+ calorie + " ]";
    }
    
}
