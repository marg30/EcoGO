package entidades;

public class PuntoVerde {
    
    private int _id;
    private String _nombre;
    private String _descripcion;
    private String _direccion;
    private Barrio _barrio;

    public Barrio getBarrio() {
        return _barrio;
    }

    public void setBarrio(Barrio _barrio) {
        this._barrio = _barrio;
    }

    public String getDireccion() {
        return _direccion;
    }

    public void setDireccion(String _direccion) {
        this._direccion = _direccion;
    }
    private boolean _especial;

    public int getId() {
        return _id;
    }

    public void setId(int _id) {
        this._id = _id;
    }

    public String getNombre() {
        return _nombre;
    }

    public void setNombre(String _nombre) {
        this._nombre = _nombre;
    }

    public String getDescripcion() {
        return _descripcion;
    }

    public void setDescripcion(String _descripcion) {
        this._descripcion = _descripcion;
    }

    public boolean isEspecial() {
        return _especial;
    }

    public void setEspecial(boolean _especial) {
        this._especial = _especial;
    }
    
    
}
