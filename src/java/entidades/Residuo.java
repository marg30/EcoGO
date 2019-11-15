package entidades;

public class Residuo {

    private int _id; // Camelcase
    private String _nombre;
    private int _tipo;
    private String _beneficios;

    public String getBeneficios() {
        return _beneficios;
    }

    public void setBeneficios(String _beneficios) {
        this._beneficios = _beneficios;
    }
    private String _consejo;
    private String _clasificacion;

    public String getClasificacion() {
        return _clasificacion;
    }

    public void setClasificacion(String _clasificacion) {
        this._clasificacion = _clasificacion;
    }

    public int getTipo() {
        return _tipo;
    }

    public void setTipo(int _tipo) {
        this._tipo = _tipo;
    }

    public String getConsejo() {
        return _consejo;
    }

    public void setConsejo(String _consejo) {
        this._consejo = _consejo;
    }

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

    public int get_tipo() {
        return _tipo;
    }

    public void set_tipo(int _tipo) {
        this._tipo = _tipo;
    }
}
