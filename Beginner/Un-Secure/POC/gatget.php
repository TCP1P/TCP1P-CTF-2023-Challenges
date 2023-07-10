<?php

namespace GadgetOne {
    class Adders
    {
        private $x;
        function __construct($x)
        {
            $this->x = $x;
        }
    }
}

namespace GadgetTwo {
    class Echoers
    {
        protected $klass;
        function __construct($klass)
        {
            $this->klass = $klass;
        }
    }
}


namespace GadgetThree {
    class Vuln
    {
        public $waf1;
        protected $waf2;
        private $waf3;
        public $cmd;
        function __construct($waf1, $waf2, $waf3, $cmd)
        {
            $this->waf1 = $waf1;
            $this->waf2 = $waf2;
            $this->waf3 = $waf3;
            $this->cmd = $cmd;
        }
    }
}
