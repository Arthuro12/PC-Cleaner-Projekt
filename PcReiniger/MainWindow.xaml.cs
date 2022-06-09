using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Diagnostics;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.IO;

namespace PcReiniger
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public DirectoryInfo winTemp;//represents the folders that contain the windows temporary files
        public DirectoryInfo appTemp;//represents the folders that contain the temporary files of some applications

        public MainWindow()
        {
            InitializeComponent();
            winTemp = new DirectoryInfo(@"C:\Windows\Temp");
            appTemp = new DirectoryInfo(System.IO.Path.GetTempPath());//GetTempPath will return the exact path to the temporary files folder
        }

        //calculates the size of a folder
        public long dirSize(DirectoryInfo dir)
        {
            /*The size of the folder is a sum of the size of files and subfolders included in the folder
             GetFiles returns the number of files in a folder, with Sum which takes the size of a file as a parameter we sum the size of all files
             GetDirectories return the number of subfolders
             */
            return dir.GetFiles().Sum(fi => fi.Length) + dir.GetDirectories().Sum(di => dirSize(di));
        }

        //method to empty a folder
        public void clearTempData(DirectoryInfo dir)
        {
            foreach (FileInfo file in dir.GetFiles())
            {
                try
                {
                    file.Delete();
                    Console.WriteLine(file.FullName);
                }
                catch (Exception ex)
                {
                    continue;
                }
            }

            foreach (DirectoryInfo d in dir.GetDirectories())
            {
                try
                {

                    // Delete the subdirectory. The true indicates that if subdirectories
                    // or files are in this directory, they are to be deleted as well
                    d.Delete(true);
                    Console.WriteLine(d.FullName);
                }
                catch (Exception ex)
                {
                    continue;
                }
            }
        }

        private void Button_CLEAN_Click(object sender, RoutedEventArgs e)
        {
            Console.WriteLine("Das Reinigen lauft...");
            //btnClean.Content = "Das Reinigen lauft";
            MessageBox.Show("Das Reinigen lauft gerade", "Reinigung");

            Clipboard.Clear();//Clean the Clipboard

            try
            {
                clearTempData(winTemp);
            }
            catch (Exception ex)
            {
                Console.WriteLine("Fehler : " + ex.Message);
            }

            try
            {
                clearTempData(appTemp);
            }
            catch (Exception ex)
            {
                Console.WriteLine("Fehler : " + ex.Message);
            }

            MessageBox.Show("Das Reinigen ist fertig", "Reinigung");
            space.Content = "0 Mb";
        }

        private void Button_SEARCHHISTORY_Click(object sender, RoutedEventArgs e)
        {
            MessageBox.Show("TODO", "Search history", MessageBoxButton.OK, MessageBoxImage.Information);
        }

        private void Button_UPDATE_Click(object sender, RoutedEventArgs e)
        {
            MessageBox.Show("Ihre Software ist auf dem neuesten Stand", "Aktualisierung", MessageBoxButton.OK, MessageBoxImage.Information);
        }

        private void Button_WEBSITE_Click(object sender, RoutedEventArgs e)
        {         
            //tries to open the software website, if the user does not have a browser an error is displayed
            try
            {
                Process.Start(new ProcessStartInfo("http://www.linkedin.com/in/arthur-foadjo-dje-080397203/")
                {
                    UseShellExecute = true
                }); 
            }
            catch(Exception ex)
            {
                Console.WriteLine("Fehler : " + ex.Message);
            }
        }

        private void Button_Analyse_Click(object sender, RoutedEventArgs e)
        {
            analyseFolders();
        }

        public void analyseFolders()
        {
            Console.WriteLine("Analyse angefangen...");

            long totalOfSize = 0; //total space to clean

            try
            {
                totalOfSize += dirSize(winTemp) / 1000000; //dirSize retourne la taille en octet, nous avons besoin de la diviser par 1000000 pour obtenir la taille en mega
                totalOfSize += dirSize(appTemp) / 1000000;
            }
            catch (Exception ex)
            {
                Console.WriteLine("Es ist nicht möglich die Ordner zu analysieren" + ex.Message);
            }

            space.Content = totalOfSize + " Mb";
            title.Content = "Analyse durchgeführt !";
            date.Content = DateTime.Today;
        }
    }
}
