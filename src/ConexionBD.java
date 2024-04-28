//ConexionBasedeDatos

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/*Por John Castiblanco*/

public class ConexionBD {
    // URL de conexión a la base de datos
    private static final String URL = "jdbc:mysql://localhost:3306/kdelectronics";
    // Credenciales de la base de datos
    private static final String USUARIO = "tu_usuario";
    private static final String CONTRASEÑA = "tu_contraseña";

    // Método para establecer la conexión a la base de datos
    public static Connection conectar() {
        Connection conexion = null;
        try {
            // Cargar el controlador JDBC
            Class.forName("com.mysql.cj.jdbc.Driver");
            // Establecer la conexión
            conexion = DriverManager.getConnection(URL, USUARIO, CONTRASEÑA);
            System.out.println("Conexión exitosa a la base de datos.");
        } catch (ClassNotFoundException | SQLException e) {
            System.out.println("Error al conectar a la base de datos: " + e.getMessage());
        }
        return conexion;
    }

    // Método para cerrar la conexión a la base de datos
    public static void cerrarConexion(Connection conexion) {
        if (conexion != null) {
            try {
                conexion.close();
                System.out.println("Conexión cerrada correctamente.");
            } catch (SQLException e) {
                System.out.println("Error al cerrar la conexión: " + e.getMessage());
            }
        }
    }
}