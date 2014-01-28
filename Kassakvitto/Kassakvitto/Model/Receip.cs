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
                if (value <= 0)
                {
                    throw new ArgumentException("Ett fel har inträffat på affärslagrets Subtotal egenskap");
                }
                _subtotal = value;
            }
        }

        public double Total { get; set; }

        // Konstruktor
        public Receip(double subtotal) {
            Calculate(subtotal);
            
        }
        // Metod
        public void Calculate( double subtotal){
            Subtotal = subtotal;
            // Här ska värdena från fälten matas in.
            if (subtotal < 500) {
                DiscountRate = 1;
            }
            if (Subtotal >= 500 && Subtotal < 1000)
            {
                DiscountRate = 0.95;
            }
            if (Subtotal >= 1000 && Subtotal < 5000)
            {
                DiscountRate = 0.90;
            }
            if (Subtotal >= 5000)
            {
                 DiscountRate = 0.85;
            }
            MoneyOff = (1 - DiscountRate)*Subtotal;
            Total = Subtotal*DiscountRate;    
    }
    }
}