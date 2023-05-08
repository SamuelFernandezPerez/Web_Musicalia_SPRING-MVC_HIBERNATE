package constantesSQL;

public class ConstantesSQL {
	
	public final static String SQL_OBTENER_CATEGORIAS_PARA_DESPLEGABLE = 
			"select id, nombre from tabla_categorias order by nombre asc";
	
	public static final String SQL_OBTENER_PRODUCTOS_CARRITO = 
			"select cd.id as cd_id,  cd.titulo, "
			+ "cd.precio, productocarrito.cantidad "
			+ "from cd, productocarrito "
			+ "where productocarrito.cd_id = cd.id and "
			+ "productocarrito.carrito_id = :carrito_id "
			+ "ORDER by productocarrito.id asc";
	
	public static final String BORRAR_PRODUCTOS_CARRITO = 
			"delete from productocarrito where carrito_id = :carrito_id";
	
	public static final String OBTENER_TOTAL_CDS = 
			"select count(id) from cd where titulo like :titulo and alta = 1";
}
