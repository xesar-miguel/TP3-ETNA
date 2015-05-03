using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ETNA.DAL;
using ETNA.Domain;

namespace ETNA.BL.FB
{
    public class GestorLotes
    {
        public List<Lote> Listar()
        {
            var context = new ETNADbModelContainer();
            return context.LoteSet.ToList();
            //AAAAAA
        }

        public int InsertarLote(string nroLote, int idTipoLote)
        {
            var context = new ETNADbModelContainer();
            var newLote = new Lote();
            newLote.NroLote = nroLote;
            newLote.FechaCreacion = DateTime.Now;
            //newLote.TipoLote = context.TipoLoteSet.Find(idTipoLote);
            context.LoteSet.Add(newLote);
            context.SaveChanges();
            return newLote.Id;
        }

        public bool EditarLote(int idLote, string nroLote)
        {
            var context = new ETNADbModelContainer();
            var lote = context.LoteSet.Find(idLote);
            lote.NroLote = nroLote;
            lote.FechaCreacion = DateTime.Now;
            context.SaveChanges();
            return true;
        }

        public bool EliminarLote(int idLote)
        {
            var context = new ETNADbModelContainer();
            var lote = context.LoteSet.Find(idLote);
            context.LoteSet.Remove(lote);
            context.SaveChanges();
            return true;
        }

    }
}
