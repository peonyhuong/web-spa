//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DoAnPhanMem.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class DANHMUCDV
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public DANHMUCDV()
        {
            this.DICHVUs = new HashSet<DICHVU>();
        }
    
        public string IDDM { get; set; }
        public string TENDM { get; set; }
        public string IMG { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<DICHVU> DICHVUs { get; set; }
    }
}
