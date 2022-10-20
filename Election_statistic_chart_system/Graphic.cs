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
    public partial class Graphic : Form
    {
        public Graphic()
        {
            InitializeComponent();
        }
        SqlConnection baglan = new SqlConnection("Data Source=DESKTOP-48MHJFV;Initial Catalog=dbo_Secim_Istatistik_Grafik_Sistemi;Integrated Security=True");


        private void Grafik_Load(object sender, EventArgs e)
        {
            baglan.Open();
            SqlCommand komut1 = new SqlCommand("Select Ilce_Adi from tbl_Ilce", baglan);
            SqlDataReader dr1 = komut1.ExecuteReader();
            while (dr1.Read())
            {
                comboBox1.Items.Add(dr1[0]);
            }
            baglan.Close();

            baglan.Open();
            SqlCommand komut = new SqlCommand("Select SUM(A_partisi),SUM(B_partisi),SUM(C_partisi),SUM(D_partisi),SUM(E_partisi) from tbl_Ilce", baglan);
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                chart1.Series["Partiler"].Points.AddXY("A Party", dr[0]);
                chart1.Series["Partiler"].Points.AddXY("B Party", dr[1]);
                chart1.Series["Partiler"].Points.AddXY("C Party", dr[2]);
                chart1.Series["Partiler"].Points.AddXY("D Party", dr[3]);
                chart1.Series["Partiler"].Points.AddXY("E Party", dr[4]);
            }
            baglan.Close();
        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            baglan.Open();
            SqlCommand komut = new SqlCommand("Select A_partisi,B_partisi,C_partisi,D_partisi,E_partisi from tbl_Ilce where Ilce_Adi=@p1", baglan);
            komut.Parameters.AddWithValue("@p1", comboBox1.Text);
            SqlDataReader dr = komut.ExecuteReader();
            while(dr.Read())
            {
                progressBar1.Value = int.Parse((dr[0].ToString()));
                progressBar5.Value = int.Parse((dr[1].ToString()));
                progressBar4.Value = int.Parse((dr[2].ToString()));
                progressBar3.Value = int.Parse((dr[3].ToString()));
                progressBar2.Value = int.Parse((dr[4].ToString()));
            }
            baglan.Close();

            baglan.Open();
            SqlCommand komut1 = new SqlCommand("Select A_partisi,B_partisi,C_partisi,D_partisi,E_partisi from tbl_Ilce where Ilce_Adi=@p1", baglan);
            komut1.Parameters.AddWithValue("@p1", comboBox1.Text);
            SqlDataReader dr1 = komut1.ExecuteReader();
            while(dr1.Read())
            {
                A_label.Text = dr1[0].ToString();
                B_label.Text = dr1[1].ToString();
                C_label.Text = dr1[2].ToString();
                D_label.Text = dr1[3].ToString();
                E_label.Text = dr1[4].ToString();
            }
            baglan.Close();
        }

        
    }
}
