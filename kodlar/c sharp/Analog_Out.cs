using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

using NationalInstruments;
using NationalInstruments.DAQmx;

namespace WindowsFormsApplication4
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void btnWriteAnalogOut_Click(object sender, EventArgs e)
        {
            Task analogOutTask = new Task();

            AOChannel myAOChannel;

            myAOChannel = analogOutTask.AOChannels.CreateVoltageChannel("dev1/ao0", "myAOChannel", 0, 5, AOVoltageUnits.Volts);

            AnalogSingleChannelWriter writer = new AnalogSingleChannelWriter(analogOutTask.Stream);

            double analogDataOut;

            analogDataOut = Convert.ToDouble(txtAnalogOut.Text);

            writer.WriteSingleSample(true, analogDataOut);

            // kullanacaðýmýz zaman 
            Form1 nesne1 = new Form1();

        }

    }
}