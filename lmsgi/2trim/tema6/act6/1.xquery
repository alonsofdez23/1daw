xquery version "3.1";

<html>
    <body>
		<h2>Muestra todos los datos de los proveedores que se encuentran en la ciudad de Paris</h2>
        <table border="2">
            <tr>
                <th>Numero proveedor</th>
                <th>Nombre</th>
                <th>Estado</th>
                <th>Ciudad</th>
            </tr>
			{
			for $proveedor in /proveedores/proveedor
			where $proveedor/ciudad = "Paris"
			return
				<tr>
					<td> {data($proveedor/@numprov)} </td>
          <td> {data($proveedor/nombreprov)} </td>
          <td> {data($proveedor/estado)} </td>
          <td> {data($proveedor/ciudad)} </td>
				</tr>
			}
        </table>
    </body>
</html>