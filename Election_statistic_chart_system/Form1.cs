using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;


namespace Secim_Istatistik_Grafik_Sistemi
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }
        SqlConnection baglan = new SqlConnection("Data Source=DESKTOP-48MHJFV;Initial Catalog=dbo_Secim_Istatistik_Grafik_Sistemi;Integrated Security=True");
        private void button1_Click(object sender, EventArgs e)
        {
            baglan.Open();
            SqlCommand komut = new SqlCommand("Insert into tbl_Ilce (Ilce_Adi,A_Partisi,B_Partisi,C_Partisi,D_Partisi,E_Partisi) values (@p1,@p2,@p3,@p4,@p5,@p6)",baglan);
            komut.Parameters.AddWithValue("@p1", Ilce_Adi.Text);
            komut.Parameters.AddWithValue("@p2", A_partisi.Text);
            komut.Parameters.AddWithValue("@p3", B_partisi.Text);
            komut.Parameters.AddWithValue("@p4", C_partisi.Text);
            komut.Parameters.AddWithValue("@p5", D_partisi.Text);
            komut.Parameters.AddWithValue("@p6", E_partisi.Text);
            komut.ExecuteNonQuery();
            MessageBox.Show("Oy Eklemesi Yapıldı");
            baglan.Close();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            Graphic gf = new Graphic();
            gf.Show();
        }
    }
}
