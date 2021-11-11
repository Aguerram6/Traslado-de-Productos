using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CMcompras;
using System.Data;
using System.Data.Odbc;

namespace CCcompras
{
    public class clscontrolador
    {
        //Instanciamos la clase sentencias
       
        clssentencias sn = new clssentencias();

        

        public OdbcDataReader consultar(string tabla)
        {
            return sn.consulta(tabla);
        }

        public OdbcDataReader insertar_traslado(string[] dato)
        {
            return sn.insertar_traslado(dato);

        }

        public OdbcDataReader llenarbodega()
        {
            return sn.bodega();

        }

        public OdbcDataReader llenarproducto()
        {
            return sn.productos();

        }
    }
    }
