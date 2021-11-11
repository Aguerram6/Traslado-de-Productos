using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace CVcompras
{
    public partial class LlamadaReporteT : Form
    {
        public LlamadaReporteT()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            frmReporteTraslado formulario = new ReporteTraslado();
            formulario.MdiParent = this;
            formulario.Show();
        }
    }
}
