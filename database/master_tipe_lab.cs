using System;
using System.Collections;
using System.Collections.Generic;
using System.Text;
namespace Sionlab
{
    #region Master_tipe_lab
    public class Master_tipe_lab
    {
        #region Member Variables
        protected int _id;
        protected string _kode;
        protected string _tipe_lab;
        protected string _keterangan;
        #endregion
        #region Constructors
        public Master_tipe_lab() { }
        public Master_tipe_lab(string kode, string tipe_lab, string keterangan)
        {
            this._kode=kode;
            this._tipe_lab=tipe_lab;
            this._keterangan=keterangan;
        }
        #endregion
        #region Public Properties
        public virtual int Id
        {
            get {return _id;}
            set {_id=value;}
        }
        public virtual string Kode
        {
            get {return _kode;}
            set {_kode=value;}
        }
        public virtual string Tipe_lab
        {
            get {return _tipe_lab;}
            set {_tipe_lab=value;}
        }
        public virtual string Keterangan
        {
            get {return _keterangan;}
            set {_keterangan=value;}
        }
        #endregion
    }
    #endregion
}