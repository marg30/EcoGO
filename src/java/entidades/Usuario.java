package entidades;

public class Usuario {
	private int _id;
	private String _nombre;
	private String _contraseña;
	private String _email;
	
	
	public int get_id() {
		return _id;
	}
	public void set_id(int _id) {
		this._id = _id;
	}
	public String get_nombre() {
		return _nombre;
	}
	public void set_nombre(String _nombre) {
		this._nombre = _nombre;
	}
	public String get_contraseña() {
		return _contraseña;
	}
	public void set_contraseña(String _contraseña) {
		this._contraseña = _contraseña;
	}
	public String get_email() {
		return _email;
	}
	public void set_email(String _email) {
		this._email = _email;
	}
	
}
