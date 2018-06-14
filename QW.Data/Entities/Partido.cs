﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QW.Data.Entities
{
    public class Partido
    {
        public virtual int IdPartido { set; get; }
        public virtual string Codigo1 { set; get; }
        public virtual string Codigo2 { set; get; }
        public virtual string Equipo1 { set; get; }
        public virtual string Equipo2 { set; get; }
        public virtual int? Goles1 { set; get; }
        public virtual int? Goles2 { set; get; }
        public virtual DateTime? FechaHoraInicio { set; get; }
        public virtual DateTime? FechaHoraFin { set; get; }
        public virtual string Lugar { set; get; }
        public virtual Etapa EtapaPartido { set; get; }
        public virtual IList<Pronostico> PronosticosPartidos { set; get; }

        public virtual bool Iniciado
        {
            get
            {
                return PartidoIniciado(FechaHoraInicio);
            }
        }

        public Partido()
        {
            PronosticosPartidos = new List<Pronostico>();
        }

        public static bool PartidoIniciado(DateTime? FechaHoraInicioPartido)
        {
            return (FechaHoraInicioPartido == null) ? false : DateTime.Now.Subtract((DateTime)FechaHoraInicioPartido).TotalMinutes > -5;
        }
    }
}
