MySQL COMANDO:
MySQL 5.6 Command Line Client

show databases; //...Mostar todas las bases de datos
use mysql; //...Usar la base de datos MySQL
show tables; //...Mostrar Tablas de MySQL
describe user; //...Describir la tabla "user"
select * from user; //...Mostrar la tabla "User"
select user from user; //...Mostrar user (Usuario) de la tabla "user"
select user, password from user; //...Mostrar user y contraseña de la tabla "user"
============================================================================
//...CREAR LA BASE DE DATOS BD_Clinica
create database BD_Clinica;

//...USAR LA BASE DE DATOS BD_Clinica
use BD_Clinica;
============================================================================
//...Mostrar Tablas
show tables; 

//...Describir Tabla tPersona;
describe tPersona;

//...Mostrar la tabla tPersona
select * from tPersona;

//...Ordenar tabla por apellidos
select * from tPersona order by ap;

//...BORRAR UNA TABLA
DROP TABLE tLogin;
============================================================================
//...Clave primario
PRIMARY KEY(NombreVariable) //...Ejemplo: NombreVariable = DNI
FOREIGN KEY(NombreVariable)
============================================================================
...CREAR TABLAS
create table tPersona(DNI varchar(8) not null, Nombre varchar(30), AP varchar(30), AM varchar(30),FechaNaci date, Sexo varchar(5), PRIMARY KEY (DNI));
create table tVacuna(Codigo varchar(8) not null, Nombre varchar(30), Tipo varchar(30), FechaFabr date,FechaVenc date, Lote varchar(20), PRIMARY KEY (Codigo));
create table tHistorial(CodigoHistorial varchar(8) not null, DNIPaciente varchar(8) not null, NombreEstablecimiento varchar(30), PRIMARY KEY (CodigoHistorial), FOREIGN KEY (DNIPaciente) REFERENCES tPersona(DNI));
create table tDetalle(CodigoDetalle varchar(8) not null, CodigoHistorial varchar(8) not null, CodigoVacuna varchar(8) not null, FechaVacunacion date, Observacion varchar(100), PRIMARY KEY (CodigoDetalle), FOREIGN KEY (CodigoHistorial) REFERENCES tHistorial(CodigoHistorial), FOREIGN KEY (CodigoVacuna) REFERENCES tVacuna(Codigo));
create table tLogin(Usuario varchar(30), Contraseña varchar(100));
============================================================================
//...INSERTAR PERSONAS A LA TABLA "tPersona"
insert into tPersona values('12345678','Diana','Puma','Jara','1999/12/12','Mujer');
insert into tPersona values('45673476','Jose','Quispe','Jara','1998/03/30','Varon');
insert into tPersona values('56745834','Pedro','Soto','Viza','1998/01/01','Varon');
insert into tPersona values('65874584', 'Rosmery', 'Cala', 'Viza', '1997/07/16', 'Mujer');
insert into tPersona values('24568795', 'Lina', 'Viza', 'Mamani', '1999/02/17', 'Mujer');
insert into tPersona values('62584569', 'Esteban', 'Melo', 'Jara', '1998/08/11', 'Varon');
insert into tPersona values('67545854', 'Jeans', 'Quispe', 'Garcia', '2000/09/25', 'Varon');
insert into tPersona values('65734568', 'Cristian', 'Garcia', 'Perez', '2002/08/23', 'Varon');
insert into tPersona values('24365788', 'Micaela', 'Torres', 'de la vega', '2003/03/09', 'Mujer');
insert into tPersona values('94567345', 'Evelyne', 'Lope', 'Cornejo', '2001/11/01', 'Mujer');
insert into tPersona values('74536547', 'Daniel', 'Villa', 'Gutierez', '2004/02/15', 'Varon');

insert into tPersona values('75674563','Antonio','Garcia','Yavar','1997/01/23','Varon');
insert into tPersona values('65834572','Maria','Martines','Jara','1998/02/12','Mujer');
insert into tPersona values('34564345','Jose','Lopez','Viza','1999/03/01','Varon');
insert into tPersona values('44452356', 'Maria carmen', 'Gonzales', 'Viza', '2000/04/12', 'Mujer');
insert into tPersona values('35461000', 'Francisco', 'Gomez', 'Mamani', '2001/05/14', 'Varon');
insert into tPersona values('34745835', 'Josefina', 'Fernandes', 'Jara', '2002/06/11', 'Mujer');
insert into tPersona values('95716345', 'Juan', 'Moreno', 'Garcia', '2003/07/12', 'Varon');
insert into tPersona values('86439675', 'Isabela', 'Jimenez', 'Perez', '2004/08/14', 'Mujer');
insert into tPersona values('55253585', 'Manuel', 'Torres', 'perez', '2005/09/13', 'Varon');
insert into tPersona values('86452458', 'Maria Dolores', 'Rodrigez', 'Cornejo', '2006/10/14', 'Mujer');
insert into tPersona values('13785875', 'Pedro', 'Navaro', 'Gutierez', '2007/11/15', 'Varon');
insert into tPersona values('58554245', 'Carmen', 'Ruiz', 'Viza', '2008/12/16', 'Mujer');
insert into tPersona values('42720545', 'Jesus', 'Serrano', 'Mamani', '2009/01/17', 'Varon');
insert into tPersona values('52054045', 'Francisca', 'Hernadez', 'Jara', '2010/02/18', 'Mujer');
insert into tPersona values('87927075', 'Angel', 'Nuños', 'Garcia', '2011/03/19', 'Varon');
insert into tPersona values('55742405', 'Maria pilar', 'Romero', 'Perez', '2012/04/20', 'Mujer');
insert into tPersona values('27200078', 'Miguel', 'Torres', 'Alfaro', '2013/05/21', 'Varon');
insert into tPersona values('87270778', 'Dolores', 'Lope', 'Molina', '2014/06/22', 'Mujer');
insert into tPersona values('62485425', 'Javier', 'Lozano', 'Gutierez', '2015/07/23', 'Varon');
insert into tPersona values('57577857', 'MariaJose', 'Castillo', 'Gutierez', '2016/08/24', 'Mujer');
insert into tPersona values('67837247', 'Javier', 'Villa', 'Picazo', '2017/09/25', 'Varon');
insert into tPersona values('37842588', 'MariaJose', 'Ortega', 'Gutierez', '2018/10/26', 'Mujer');

//...INSERTAR VACUNAS A LA TABLA "tVacuna"
insert into tVacuna values('64357456','Sarampión','Viva, atenuada','2018/02/05','2019/02/05','1A');
insert into tVacuna values('75463472','Paperas','Viva, atenuada','2018/05/01','2019/05/01','1A');

insert into tVacuna values('53754254','rubéola','Viva, atenuada','2018/01/09','2019/01/09','1A');
insert into tVacuna values('45242448','Varicela','Viva, atenuada','2018/03/11','2019/03/11','1A');
insert into tVacuna values('76745245','Influenza','Viva, atenuada','2018/04/12','2019/04/12','1A');
insert into tVacuna values('45254254','Rotavirus','Viva, atenuada','2018/05/13','2019/05/13','1A');
insert into tVacuna values('57542542','Poliomielitis','Inactiva/muerta','2018/06/14','2019/06/14','2B');
insert into tVacuna values('53653455','Difteria','Toxoide','2018/01/17','2019/01/17','3C');
insert into tVacuna values('45645654','tétanos','Toxoide','2018/02/18','2019/02/18','3C');
insert into tVacuna values('37869205','Haemophilus influenza tipo B','Subunitaria/conjugada','2018/04/20','2019/04/20','4D');

//...INSERTAR VACUNAS A LA TABLA "tHistorial"
insert into tHistorial values('AAC_2345','12345678','EsSalud');
insert into tHistorial values('ABB_6472','45673476','EsSalud');
insert into tHistorial values('DFD_4573','56745834','EsSalud');
insert into tHistorial values('FDG_6784','65874584','EsSalud');

insert into tHistorial values('HGF_2345','75674563','EsSalud');
insert into tHistorial values('JYF_6342','65834572','EsSalud');
insert into tHistorial values('JYF_4453','34564345','EsSalud');
insert into tHistorial values('WAD_6784','44452356','EsSalud');
insert into tHistorial values('DFD_2453','34745835','EsSalud');
insert into tHistorial values('HRE_7544','95716345','EsSalud');
insert into tHistorial values('HTI_4543','86439675','EsSalud');
insert into tHistorial values('IKL_6745','55253585','EsSalud');
insert into tHistorial values('RHU_2753','86452458','EsSalud');
insert into tHistorial values('MBG_6872','13785875','EsSalud');
insert into tHistorial values('ERH_4573','58554245','EsSalud');
insert into tHistorial values('SDF_6784','42720545','EsSalud');
insert into tHistorial values('GFD_2125','52054045','EsSalud');
insert into tHistorial values('JRF_2542','87927075','EsSalud');
insert into tHistorial values('EFS_4343','55742405','EsSalud');
insert into tHistorial values('HRD_6723','27200078','EsSalud');
insert into tHistorial values('WEF_2323','87270778','EsSalud');
insert into tHistorial values('HDR_1243','62485425','EsSalud');
insert into tHistorial values('ETG_6573','57577857','EsSalud');
insert into tHistorial values('JYF_5464','67837247','EsSalud');
insert into tHistorial values('WEA_6754','37842588','EsSalud');


//...INSERTAR LOS DETALLE DE VACUNA A LA TABLA "tDetalle"
insert into tDetalle values('AAAAAAAA','AAC_2345','64357456','2018/08/05','Reposar durante 3 dias');
insert into tDetalle values('ABDFHFDR','AAC_2345','75463472','2018/08/01','Ninguna');
insert into tDetalle values('SGDSGDFD','ABB_6472','64357456','2018/08/02','Reposar durante 2 dias');
insert into tDetalle values('DSFDFDFH','DFD_4573','64357456','2018/08/03','Ninguna');
insert into tDetalle values('JHFDFDSF','DFD_4573','75463472','2018/08/05','Reposar durante 1 dia');
insert into tDetalle values('GHRDRTHF','FDG_6784','64357456','2018/08/05','Ninguna');

insert into tDetalle values('JHYRFGDE','WEF_2323','64357456','2018/08/05','');
insert into tDetalle values('JHDWFGKL','EFS_4343','75463472','2018/08/05','Tomar mucha agua');

insert into tDetalle values('ADSFSGSD','HGF_2345','53754254','2016/04/09','No tocar agua una semana');
insert into tDetalle values('JTFGHGFH','JYF_6342','45242448','2017/05/10','Comer carne muy poco');
insert into tDetalle values('HGJGJGJG','JYF_4453','53653455','2018/06/11','Tomar jugo de zanahoria');
insert into tDetalle values('HFHTFHDF','WAD_6784','53754254','2016/07/12','Ninguna');
insert into tDetalle values('QEADEWDA','DFD_2453','45242448','2017/08/13','Reposar durante 1 dia');
insert into tDetalle values('GSEFDSFS','HRE_7544','45254254','2018/04/14','No tocar agua una semana');
insert into tDetalle values('MBBNHBHF','HTI_4543','37869205','2016/10/15','Comer carne muy poco');
insert into tDetalle values('SSEDXCZD','IKL_6745','53754254','2017/11/16','Tomar jugo de zanahoria');
insert into tDetalle values('DSFDSSDC','RHU_2753','45254254','2018/05/17','Ninguna');
insert into tDetalle values('HDGFVXCX','MBG_6872','53653455','2016/01/18','Reposar durante 1 dia');
insert into tDetalle values('SDGSFDVG','ERH_4573','53754254','2017/02/19','No tocar agua una semana');
insert into tDetalle values('HDRDFDVC','SDF_6784','45242448','2018/03/20','Comer carne muy poco');
insert into tDetalle values('DFESFDFD','GFD_2125','53653455','2016/04/21','Tomar jugo de zanahoria');
insert into tDetalle values('DHDGDGRD','JRF_2542','53754254','2017/05/21','Ninguna');
insert into tDetalle values('DRGDGDFF','EFS_4343','53754254','2018/06/23','Reposar durante 5 horas');
insert into tDetalle values('FDGDFGDR','HRD_6723','37869205','2016/07/24','No tocar agua una semana');
insert into tDetalle values('NRDGFDGD','WEF_2323','53754254','2017/08/25','Comer carne muy poco');
insert into tDetalle values('MUYIKKHJ','HDR_1243','45242448','2018/07/26','Tomar jugo de zanahoria');
insert into tDetalle values('LIOUKHJG','ETG_6573','53754254','2016/10/27','Ninguna');
insert into tDetalle values('DFDVFFDD','JYF_5464','53653455','2017/11/28','Reposar durante 1 dia');
insert into tDetalle values('DHDGDDFR','WEA_6754','45254254','2018/01/29','Reposar durante 3 horas');

select * from tPersona;
select * from tVacuna;
select * from tHistorial;
select * from tDetalle;

============================================================================
//...MODIFICAR DATOS:
UPDATE tPersona SET AM='Peres'  WHERE DNI='65734568';
UPDATE tPersona SET AP='Garcia' and AM='Quispe'  WHERE DNI='67545854';
UPDATE tPersona SET AP='Garcia', AM='Quispe'  WHERE DNI='67545854';

//....ELIMINAR DATOS;
DELETE FROM tPersona WHERE DNI=74536547;
============================================================================
SISTEMA:

tPersona
DNI string(8)//Clave primaria - No null
Nombre string(30)
AP
AM
Fecha nacimiento
Sexo

tVacunas
Codigo de vacuna string(8)//Clave primaria - No null
Nombre
Tipo
Fecha de fabricacion
Fecha de vencimiento
Lote

tHISTORIAL
CodigoHistorial
DNIPaciente // - Clave foraneas
NombreEstablecimiento

tDETALLES
CodigoDetalle
CodigoHistorial // - Clave foraneas
CodigoVacuna // - Clave foraneas
FechaVacunacion
Observacion

PersonalMedico
CódigoMedico
Especialidad
Fecha de ingreso
============================================================================
//...CONECTARSE A MySQL DE OTRA COMPUTADORAS 
ping: Verificar si estan conectados
yipcad: Conectar desde casa a casa

GRANT ALL ON BD_Clinica.* TO root@'%' IDENTIFIED BY '123456';
GRANT ALL ON BD_Clinica.* TO root@localhost IDENTIFIED BY '123456';
GRANT ALL PRIVILEGES ON *.* TO root@'localhost' IDENTIFIED BY '123456' WITH GRANT OPTION;

GRANT ALL ON BD_Libreria.* TO root@'%' IDENTIFIED BY '123456';
GRANT ALL ON BD_Libreria.* TO root@localhost IDENTIFIED BY '123456';
GRANT ALL PRIVILEGES ON *.* TO root@'localhost' IDENTIFIED BY '123456' WITH GRANT OPTION;


GRANT ALL ON BD_Libreria2.* TO root@'%' IDENTIFIED BY '123456';
GRANT ALL ON BD_Libreria2.* TO root@localhost IDENTIFIED BY '123456';
GRANT ALL PRIVILEGES ON *.* TO root@'localhost' IDENTIFIED BY '123456' WITH GRANT OPTION;

============================================================================
//...CONECTAR VARIAS COMPUTADORAS:
1.- Conectar a una red ambas computadoras
2.- Ir a "Abrir configuracion de red e internet"
3.-	...	Cambiar opciones de adaptador
4.-			Wifi o Ethernet (Propiedades)
5.-				Funciones de red: "Habilitar el protocolo de internet versión 4(TCP/IPv4)"
6.-				Crear una direccion ip "Usar la siguiente dirrecion IP"
7.-					IP: 192.168.1.# //#:Cualquier numero que identifique tu ip propio (Ejemplo: 192.168.1.1)
8.-					Mascara: 255.255.255.0
	
9.-	Buscar: "Firewall de Windows Defender"
10.-	Activar o desactivar Firewall de Windows Defender
11.-		Seleccionar las 2: "Desactivar Firewall de Windows Defender(No recomendado)"
	
============================================================================
//Para ejecutar un archivo en consola mysql
.\Ruta

conemux64 //Agrandar consola de MySQL
============================================================================
//...VARONES VACUNADOS
select A.Nombre, A.AP, A.AM, C.CodigoHistorial, B.Codigo, B.Nombre 
FROM tPersona A, tVacuna B,  tHistorial C, tDetalle D
where (C.DNIPaciente=A.DNI) and (D.CodigoVacuna=B.Codigo) and (D.CodigoHistorial=C.CodigoHistorial) and A.Sexo='Varon';

//...PERSONAS MENORES VACUNADOS EN UNA FECHA ESPECIFICA
select A.Nombre, A.AP, A.AM,TIMESTAMPDIFF(YEAR,A.FechaNaci,CURDATE()) AS edad, C.CodigoHistorial, B.Codigo, B.Nombre
FROM tPersona A, tVacuna B,  tHistorial C, tDetalle D
where (C.DNIPaciente=A.DNI) and (D.CodigoVacuna=B.Codigo) and (D.CodigoHistorial=C.CodigoHistorial) and D.FechaVacunacion='2018-08-05' and TIMESTAMPDIFF(YEAR,A.FechaNaci,CURDATE())>18;

//...PERSONAS MENORES VACUNADOS ENTRE 2 FECHAS
select A.Nombre, A.AP, A.AM,TIMESTAMPDIFF(YEAR,A.FechaNaci,CURDATE()) AS edad, C.CodigoHistorial, B.Codigo, B.Nombre
FROM tPersona A, tVacuna B,  tHistorial C, tDetalle D
where (C.DNIPaciente=A.DNI) and (D.CodigoVacuna=B.Codigo) and (D.CodigoHistorial=C.CodigoHistorial) and D.FechaVacunacion BETWEEN '2018-01-01' AND '2018-08-08' and TIMESTAMPDIFF(YEAR,A.FechaNaci,CURDATE())<18;

//...PERSONAS MENORES VACUNADOS ENTRE 2 FECHAS Y ENTRE EDADES
select A.Nombre, A.AP, A.AM,TIMESTAMPDIFF(YEAR,A.FechaNaci,CURDATE()) AS edad, C.CodigoHistorial, B.Codigo, B.Nombre
FROM tPersona A, tVacuna B,  tHistorial C, tDetalle D
where (C.DNIPaciente=A.DNI) and (D.CodigoVacuna=B.Codigo) and (D.CodigoHistorial=C.CodigoHistorial) and D.FechaVacunacion BETWEEN '2018-01-01' AND '2018-08-08' and (TIMESTAMPDIFF(YEAR,A.FechaNaci,CURDATE())>=0 and TIMESTAMPDIFF(YEAR,A.FechaNaci,CURDATE())<10);

//EXTRA
select*from tDetalle where FechaVacunacion='2018-08-05';
select*from tDetalle where FechaVacunacion BETWEEN '2018-08-02' AND '2018-08-05';
SELECT TIMESTAMPDIFF(YEAR,FechaNaci,CURDATE()) AS edad FROM tPersona;
============================================================================
INER
INER DENTRO DE OTRO INER


tPersona 
DNI String
Nombre String
Foto blod
============================================================================
FECHA ACTUAL JAVA

package fechahora;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
/**
*
* @author Mario
*/
public class FechaHora {
public static void main(String[] args) {
Date date = new Date();
//Caso 1: obtener la hora y salida por pantalla con formato:
DateFormat hourFormat = new SimpleDateFormat("HH:mm:ss");
System.out.println("Hora: "+hourFormat.format(date));
//Caso 2: obtener la fecha y salida por pantalla con formato:
DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
System.out.println("Fecha: "+dateFormat.format(date));
//Caso 3: obtenerhora y fecha y salida por pantalla con formato:
DateFormat hourdateFormat = new SimpleDateFormat("HH:mm:ss dd/MM/yyyy");
System.out.println("Hora y fecha: "+hourdateFormat.format(date));
}
}
	
============================================================================
REPORTES:	
String ruta = "d:\\Reporte1.jasper";
try 
{
	JasperPrint miReporte =new JasperFillManager.fillReport(ruta. misConexion);
	JasperViewer miVisor = new JasperViewer(miReporte,false);
	miVisor.setTitle("Diseños");
	miVisor.setVisible(true);
}
catch (Exception e) {
	//..Si ocurre algun problemas al ejecutar el programa. Notificarme el error
	System.out.print("Error... " + e);
}	
	
	
	
C:\Users\Jarvis\JaspersoftWorkspace\Demo	

============================================================================	
COMANDO PARA CONECTAR

public ResultSet rs2;
public void Conec(){
	try {
		System.out.println("Hola1");
		//CONECTAR CON SQL SERVER
		String nomClase = "com.mysql.jdbc.Driver";
		String servidor = "127.0.0.1";
		String baseDatos = "BD_Libreria";
		String usuario = "root";
		String password = "123456"; 
		
		System.out.println("Hola2");
		//Crear una conexion
		Class.forName(nomClase);
		String url = "jdbc:mysql://" + servidor +"/"+ baseDatos;
		Connection conexion = DriverManager.getConnection(url, usuario, password);
		Statement consultaSQL = conexion.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
		System.out.println("Hola3");
		consultaSQL.executeQuery("select * from tCliente");
		rs2 = consultaSQL.getResultSet();
		rs2.first();
		System.out.println("Hola4");
		System.out.println("Hola11 " + rs2.getString(1));
		System.out.println("Hola21 " + rs2.getString(2));
		System.out.println("Hola31 " + rs2.getString(3));
	}
	catch (ClassNotFoundException | SQLException e) {
		System.out.println(e);
	}
}	
	
