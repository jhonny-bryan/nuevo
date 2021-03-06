/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package datos;

/**
 *
 * @author Nicol Samanamud
 */
public class proveedor {
    /*proveedor_id	int	Unchecked
proveedor_razon_social	varchar(200)	Unchecked
proveedor_ruc	varchar(11)	Unchecked
proveedor_distrito	int	Unchecked
proveedor_direccion	varchar(200)	Unchecked
proveedor_email	varchar(50)	Unchecked
proveedor_telefono	varchar(9)	Unchecked
proveedor_fecha_registro	varchar(10)	Unchecked
		Unchecked*/
    
    
    private int proveedor_id;
    private String proveedor_razon_social,proveedor_ruc,proveedor_direccion,
            proveedor_email,proveedor_telefono,proveedor_fecha_registro;
    private distrito FK_distrito;
    private int id_distrito;
    private String desdist,coddis;
    private int distrito_provincias;
    
    private provincia FK_distrito_provincias;
    
     private int provincia_id;
    private String despro,codpro;
    private int provincia_departamento;
    
    private departamento FK_provincia_departamento;
    private int departamento_id;
    private String coddep, desdep;

    public proveedor() {
    }

    public proveedor(int proveedor_id, String proveedor_razon_social, String proveedor_ruc, String proveedor_direccion, String proveedor_email, String proveedor_telefono, String proveedor_fecha_registro, distrito FK_distrito, int id_distrito, String desdist, String coddis, int distrito_provincias, provincia FK_distrito_provincias, int provincia_id, String despro, String codpro, int provincia_departamento, departamento FK_provincia_departamento, int departamento_id, String coddep, String desdep) {
        this.proveedor_id = proveedor_id;
        this.proveedor_razon_social = proveedor_razon_social;
        this.proveedor_ruc = proveedor_ruc;
        this.proveedor_direccion = proveedor_direccion;
        this.proveedor_email = proveedor_email;
        this.proveedor_telefono = proveedor_telefono;
        this.proveedor_fecha_registro = proveedor_fecha_registro;
        this.FK_distrito = FK_distrito;
        this.id_distrito = id_distrito;
        this.desdist = desdist;
        this.coddis = coddis;
        this.distrito_provincias = distrito_provincias;
        this.FK_distrito_provincias = FK_distrito_provincias;
        this.provincia_id = provincia_id;
        this.despro = despro;
        this.codpro = codpro;
        this.provincia_departamento = provincia_departamento;
        this.FK_provincia_departamento = FK_provincia_departamento;
        this.departamento_id = departamento_id;
        this.coddep = coddep;
        this.desdep = desdep;
    }

    public proveedor(int proveedor_id, String proveedor_razon_social, String proveedor_ruc, String proveedor_direccion, String proveedor_email, String proveedor_telefono, String proveedor_fecha_registro, String desdist) {
        this.proveedor_id = proveedor_id;
        this.proveedor_razon_social = proveedor_razon_social;
        this.proveedor_ruc = proveedor_ruc;
        this.proveedor_direccion = proveedor_direccion;
        this.proveedor_email = proveedor_email;
        this.proveedor_telefono = proveedor_telefono;
        this.proveedor_fecha_registro = proveedor_fecha_registro;
        this.desdist = desdist;
    }

    public proveedor(String proveedor_razon_social, String proveedor_ruc, String proveedor_direccion, String proveedor_email, String proveedor_telefono, int id_distrito) {
        this.proveedor_razon_social = proveedor_razon_social;
        this.proveedor_ruc = proveedor_ruc;
        this.proveedor_direccion = proveedor_direccion;
        this.proveedor_email = proveedor_email;
        this.proveedor_telefono = proveedor_telefono;
        this.id_distrito = id_distrito;
    }

    public proveedor(int proveedor_id, String proveedor_razon_social, String proveedor_ruc, String proveedor_direccion, String proveedor_email, String proveedor_telefono, int id_distrito) {
        this.proveedor_id = proveedor_id;
        this.proveedor_razon_social = proveedor_razon_social;
        this.proveedor_ruc = proveedor_ruc;
        this.proveedor_direccion = proveedor_direccion;
        this.proveedor_email = proveedor_email;
        this.proveedor_telefono = proveedor_telefono;
        this.id_distrito = id_distrito;
    }
    
    

    public int getProveedor_id() {
        return proveedor_id;
    }

    public void setProveedor_id(int proveedor_id) {
        this.proveedor_id = proveedor_id;
    }

    public String getProveedor_razon_social() {
        return proveedor_razon_social;
    }

    public void setProveedor_razon_social(String proveedor_razon_social) {
        this.proveedor_razon_social = proveedor_razon_social;
    }

    public String getProveedor_ruc() {
        return proveedor_ruc;
    }

    public void setProveedor_ruc(String proveedor_ruc) {
        this.proveedor_ruc = proveedor_ruc;
    }

    public String getProveedor_direccion() {
        return proveedor_direccion;
    }

    public void setProveedor_direccion(String proveedor_direccion) {
        this.proveedor_direccion = proveedor_direccion;
    }

    public String getProveedor_email() {
        return proveedor_email;
    }

    public void setProveedor_email(String proveedor_email) {
        this.proveedor_email = proveedor_email;
    }

    public String getProveedor_telefono() {
        return proveedor_telefono;
    }

    public void setProveedor_telefono(String proveedor_telefono) {
        this.proveedor_telefono = proveedor_telefono;
    }

    public String getProveedor_fecha_registro() {
        return proveedor_fecha_registro;
    }

    public void setProveedor_fecha_registro(String proveedor_fecha_registro) {
        this.proveedor_fecha_registro = proveedor_fecha_registro;
    }

    public distrito getFK_distrito() {
        return FK_distrito;
    }

    public void setFK_distrito(distrito FK_distrito) {
        this.FK_distrito = FK_distrito;
    }

    public int getId_distrito() {
        return id_distrito;
    }

    public void setId_distrito(int id_distrito) {
        this.id_distrito = id_distrito;
    }

    public String getDesdist() {
        return desdist;
    }

    public void setDesdist(String desdist) {
        this.desdist = desdist;
    }

    public String getCoddis() {
        return coddis;
    }

    public void setCoddis(String coddis) {
        this.coddis = coddis;
    }

    public int getDistrito_provincias() {
        return distrito_provincias;
    }

    public void setDistrito_provincias(int distrito_provincias) {
        this.distrito_provincias = distrito_provincias;
    }

    public provincia getFK_distrito_provincias() {
        return FK_distrito_provincias;
    }

    public void setFK_distrito_provincias(provincia FK_distrito_provincias) {
        this.FK_distrito_provincias = FK_distrito_provincias;
    }

    public int getProvincia_id() {
        return provincia_id;
    }

    public void setProvincia_id(int provincia_id) {
        this.provincia_id = provincia_id;
    }

    public String getDespro() {
        return despro;
    }

    public void setDespro(String despro) {
        this.despro = despro;
    }

    public String getCodpro() {
        return codpro;
    }

    public void setCodpro(String codpro) {
        this.codpro = codpro;
    }

    public int getProvincia_departamento() {
        return provincia_departamento;
    }

    public void setProvincia_departamento(int provincia_departamento) {
        this.provincia_departamento = provincia_departamento;
    }

    public departamento getFK_provincia_departamento() {
        return FK_provincia_departamento;
    }

    public void setFK_provincia_departamento(departamento FK_provincia_departamento) {
        this.FK_provincia_departamento = FK_provincia_departamento;
    }

    public int getDepartamento_id() {
        return departamento_id;
    }

    public void setDepartamento_id(int departamento_id) {
        this.departamento_id = departamento_id;
    }

    public String getCoddep() {
        return coddep;
    }

    public void setCoddep(String coddep) {
        this.coddep = coddep;
    }

    public String getDesdep() {
        return desdep;
    }

    public void setDesdep(String desdep) {
        this.desdep = desdep;
    }
    
    
}
