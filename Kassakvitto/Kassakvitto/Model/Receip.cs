using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Kassakvitto.Model
{
    public class Receip
    {
        private double _subtotal;

        public double DiscountRate { get; set; }

        public double MoneyOff { get; set; }

        public double Subtotal {
            get
            {
                return _subtotal;
            }
            set
            {
                if (value <= 0 )
                {
                    _subtotal = value;
                }
                else
                {
                    throw new ArgumentException();
                }
            }
        }

        public int Total { get; set; }

        // Konstruktor
        public Receip(double Subtotal) {
            Calculate(Subtotal);
        }
        // Metod
        public void Calculate( double Subtotal){
            // Här ska värdena från fälten matas in.
            MoneyOff = 15;
            Subtotal = 15;
    }
    }
}