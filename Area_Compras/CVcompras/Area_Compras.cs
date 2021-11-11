using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using CCcompras;
using System.Data.Odbc;

namespace CVcompras
{
    public partial class Area_Compras : Form
    {
        clscontrolador cn = new clscontrolador();
        public Area_Compras()
        {
            InitializeComponent();
        }

     
        private void Area_Compras_Load(object sender, EventArgs e)
        {

        }

        // Direccionamiento de formularios Andrea Guerra 0901-18-858
    
        private void trasladoDeProductosToolStripMenuItem_Click(object sender, EventArgs e)
        {
            frmTrasladoProducto formulario = new frmTrasladoProducto();
            formulario.MdiParent = this;
            formulario.Show();
        }

        private void reporteTrasladoToolStripMenuItem_Click(object sender, EventArgs e)
        {
            frmReporteTrasladoP formulario = new frmReporteTrasladoP();
            formulario.MdiParent = this;
            formulario.Show();
        }

        private void trasladoDeProductosToolStripMenuItem1_Click(object sender, EventArgs e)
        {
            Help.ShowHelp(this, "ayudasTP/AyudaTP.chm", "/Traslado-de-Productos.html/ ");
        }

        private void iNVENTARIOToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }
    }
}
