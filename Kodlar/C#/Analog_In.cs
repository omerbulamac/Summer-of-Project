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

        private void btnGetAnalogIn_Click(object sender, EventArgs e) 
        { 
            Task analogInTask = new Task(); 
            
            AIChannel myAIChannel; 
            
            myAIChannel = analogInTask.AIChannels.CreateVoltageChannel("dev1/ai0", "myAIChannel", AITerminalConfiguration.Differential, 0, 5, AIVoltageUnits.Volts); 
            
            AnalogSingleChannelReader reader = new AnalogSingleChannelReader(analogInTask.Stream); 
            
            double analogDataIn = reader.ReadSingleSample();
            
            txtAnalogIn.Text = analogDataIn.ToString();
        }

    }
}
