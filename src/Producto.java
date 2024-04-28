/*Conectar la tabla producto*/
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
/**
 *
 * @author Usuario
 */
public class Producto {
 // Método para obtener todos los productos de la base de datos
    public static void obtenerProductos() {
        Connection conexion = null;
        PreparedStatement consulta = null;
        ResultSet resultados = null;
        try {
            // Establecer conexión
            conexion = ConexionBD.conectar(); // Aquí utilizamos la clase ConexionBD que creamos en el Paso 4
            // Consulta SQL
            String sql = "SELECT * FROM productos";
            // Preparar consulta
            consulta = conexion.prepareStatement(sql);
            // Ejecutar consulta
            resultados = consulta.executeQuery();
            // Procesar resultados
            while (resultados.next()) {
                int codigo = resultados.getInt("codigo");
                String nombre = resultados.getString("nombre");
                // Aquí puedes obtener otros campos de la tabla según sea necesario
                // Por ejemplo: String descripcion = resultados.getString("descripcion");
                // Puedes imprimir los datos o almacenarlos como desees
                System.out.println("Código: " + codigo + ", Nombre: " + nombre);
            }
        } catch (SQLException e) {
            System.out.println("Error al obtener los productos: " + e.getMessage());
        } finally {
            // Cerrar recursos
            ConexionBD.cerrarConexion(conexion); // Aquí cerramos la conexión después de usarla
            try {
                if (consulta != null) consulta.close();
                if (resultados != null) resultados.close();
            } catch (SQLException e) {
                System.out.println("Error al cerrar los recursos: " + e.getMessage());
            }
        }
   }
    
   public class Main {
    public static void main(String[] args) {
        // Obtener y mostrar todos los productos
        Producto.obtenerProductos();
        }
    }
}
