<?php

namespace {
    // templete to trigger render view usign view() function to get rce
    class Template
    {
        protected $name;
        protected $data;

        function __construct($name)
        {
            $this->name = $name;
            $this->data = array();
            $this->data['title'] = "pwned";
        }
    }
}

namespace App\Models {
    class UserModel
    {
        protected $db;
        function __construct($db)
        {
            $this->db = $db;
        }
    }
}
