//------------------------------------------------------------------------------
// <auto-generated>
//     此代码已从模板生成。
//
//     手动更改此文件可能导致应用程序出现意外的行为。
//     如果重新生成代码，将覆盖对此文件的手动更改。
// </auto-generated>
//------------------------------------------------------------------------------

namespace EMS201724112116.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Equ
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Equ()
        {
            this.Emp = new HashSet<Emp>();
        }
    
        public string Equ_Id { get; set; }
        public string Equ_name { get; set; }
        public string Equ_standards { get; set; }
        public string Equ_img { get; set; }
        public Nullable<int> Equ_price { get; set; }
        public Nullable<System.DateTime> Equ_date { get; set; }
        public string Equ_location { get; set; }
        public string Equ_resp { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Emp> Emp { get; set; }
        public virtual Emp Emp1 { get; set; }
    }
}
