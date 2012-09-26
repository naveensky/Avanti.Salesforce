<?php
/**
 * Created by JetBrains PhpStorm.
 * User: naveen
 * Date: 9/9/12
 * Time: 10:22 PM
 * To change this template use File | Settings | File Templates.
 */
class Admin extends CI_Controller {

    public function __construct() {
        parent::__construct();
        //validate login
        validate_login();

        //redirect to login if not admin
        //        if(!is_admin())
        //            redirect('auth/login', 'refresh');
    }


    public function parse_file() {

    }
}
