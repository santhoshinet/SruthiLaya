using Telerik.OpenAccess;

namespace SruthiOrchestraDL
{
    [Persistent]
    public class File
    {
        public byte[] Filedata { get; set; }

        public string Filename { get; set; }

        public string MimeType { get; set; }

        public string ID { get; set; }
    }
}