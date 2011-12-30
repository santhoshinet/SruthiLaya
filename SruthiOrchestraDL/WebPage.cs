using Telerik.OpenAccess;

namespace SruthiOrchestraDL
{
    [Persistent]
    public class ContentPage
    {
        public string Name { get; set; }

        public string Content { get; set; }

        public string ID { get; set; }
    }
}