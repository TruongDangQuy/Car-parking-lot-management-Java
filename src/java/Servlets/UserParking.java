/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

/**
 *
 * @author Adminstrator
 */
public class UserParking {
    private String idxe;
    private String idname;
    private String bienso;
    private String loaixe;
    private String thoigianvao;
    private String thoigianra;
    private String baidau;
    
    public UserParking(){
        
    }
    public UserParking(String idxe,String idname,String bienso,String loaixe,String thoigianvao,String thoigianra,String baidau){
        this.idxe=idxe;
        this.idname=idname;
        this.bienso=bienso;
        this.loaixe=loaixe;
        this.thoigianvao=thoigianvao;
        this.thoigianra=thoigianra;
        this.baidau=baidau;
    }
    public UserParking(UserParking usp){
        this.idxe=usp.idxe;
        this.idname=usp.idname;
        this.bienso=usp.bienso;
        this.loaixe=usp.loaixe;
        this.thoigianvao=usp.thoigianvao;
        this.thoigianra=usp.thoigianra;
        this.baidau=usp.baidau;
    }

    /**
     * @return the idxe
     */
    public String getIdxe() {
        return idxe;
    }

    /**
     * @param idxe the idxe to set
     */
    public void setIdxe(String idxe) {
        this.idxe = idxe;
    }

    /**
     * @return the idname
     */
    public String getIdname() {
        return idname;
    }

    /**
     * @param idname the idname to set
     */
    public void setIdname(String idname) {
        this.idname = idname;
    }

    /**
     * @return the bienso
     */
    public String getBienso() {
        return bienso;
    }

    /**
     * @param bienso the bienso to set
     */
    public void setBienso(String bienso) {
        this.bienso = bienso;
    }

    /**
     * @return the loaixe
     */
    public String getLoaixe() {
        return loaixe;
    }

    /**
     * @param loaixe the loaixe to set
     */
    public void setLoaixe(String loaixe) {
        this.loaixe = loaixe;
    }

    /**
     * @return the thoigianvao
     */
    public String getThoigianvao() {
        return thoigianvao;
    }

    /**
     * @param thoigianvao the thoigianvao to set
     */
    public void setThoigianvao(String thoigianvao) {
        this.thoigianvao = thoigianvao;
    }

    /**
     * @return the thoigianra
     */
    public String getThoigianra() {
        return thoigianra;
    }

    /**
     * @param thoigianra the thoigianra to set
     */
    public void setThoigianra(String thoigianra) {
        this.thoigianra = thoigianra;
    }

    /**
     * @return the baidau
     */
    public String getBaidau() {
        return baidau;
    }

    /**
     * @param baidau the baidau to set
     */
    public void setBaidau(String baidau) {
        this.baidau = baidau;
    }
    
}
