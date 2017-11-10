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
    
    public partial class Sitios
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Sitios()
        {
            this.Informantes = new HashSet<Informantes>();
            this.Victimas = new HashSet<Victimas>();
            this.Testigos = new HashSet<Testigos>();
        }
    
        public int Id_Sitio { get; set; }
        public string CodigoSitio { get; set; }
        public decimal X { get; set; }
        public decimal Y { get; set; }
        public decimal Altitud { get; set; }
        public int Propiedad { get; set; }
        public string Antecedentes { get; set; }
        public string RelatoAcontecimientos { get; set; }
        public System.DateTime FechaEvento { get; set; }
        public System.DateTime FechaInhumacion { get; set; }
        public int NumeroVictimas { get; set; }
        public bool ExhumacionAnterior { get; set; }
        public bool MaterialesAdicionales { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Informantes> Informantes { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Victimas> Victimas { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Testigos> Testigos { get; set; }
    }
}