<?php
/**
 * Created by JetBrains PhpStorm.
 * User: naveen
 * Date: 9/8/12
 * Time: 11:01 PM
 * To change this template use File | Settings | File Templates.
 */
class Tests extends CI_Controller {

    public function __construct() {
        parent::__construct();
        validate_login();
    }

    public function index() {
        $this->load->library('unit_test');
        $this->Test_Fellow_Model();
        $this->test_parse_csv();
        echo $this->unit->report();
    }

    private function test_parse_csv(){
        $mentor_model = new Mentor_Model();
        $file_path = "C:\\Users\\naveen\\Downloads\\sample-database.csv";
        $fellows_data = $mentor_model->load_data_from_csv($file_path);
        $this->unit->run(empty($fellows_data), false,"Parse Fellows CSV");

    }
     public function test_fellows(){
         $ins=new Test_Model();
         $ins->test_fellows("135,136,137,138,139,140,141");
     }
    private function  Test_Fellow_Model() {
        $fellow_model = new Fellow_Model();
        $fellows = $fellow_model->get_fellows_for_mentor(3);
        $this->unit->run(empty($fellows), false, 'Fetch Fellows');
    }


}
