//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace SitiosPrueba4.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Victimas
    {
        public int Id_Victima { get; set; }
        public string Codigo { get; set; }
        public string NA { get; set; }
        public int Sexo { get; set; }
        public double Edad { get; set; }
        public string Procedencia { get; set; }
        public string Familia { get; set; }
        public string PresuntaAfiliacion { get; set; }
    
        public virtual Sitios Sitios { get; set; }
        public virtual Familiares Familiares { get; set; }
    }
}
