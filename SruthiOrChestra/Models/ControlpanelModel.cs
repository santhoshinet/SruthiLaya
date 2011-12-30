﻿using System.ComponentModel;
using System.ComponentModel.DataAnnotations;

namespace SruthiOrChestra.Models
{
    public class PageModel
    {
        [Required]
        [DisplayName("Page Title")]
        public string PageTitle { get; set; }

        [Required]
        [DataType(DataType.Html)]
        [DisplayName("Content")]
        public string Content { get; set; }

        [DataType(DataType.Text)]
        [DisplayName("ID")]
        public string ID { get; set; }
    }
}