//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Calimex.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Producto
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Producto()
        {
            this.VentaProductoes = new HashSet<VentaProducto>();
        }
    
        public int id_producto { get; set; }
        public int id_categoria_producto { get; set; }
        public string nombre { get; set; }
        public string descripcion { get; set; }
        public Nullable<int> imagen { get; set; }
        public Nullable<decimal> precio { get; set; }
        public Nullable<bool> activo { get; set; }
    
        public virtual Categoria_producto Categoria_producto { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<VentaProducto> VentaProductoes { get; set; }
    }
}
