using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Team5BookStore.Exceptions
{
    class InvalidObjectParams : ApplicationException
    {
        public InvalidObjectParams() : base() { }

        public InvalidObjectParams(string msg) : base(msg) { }
    }
}
