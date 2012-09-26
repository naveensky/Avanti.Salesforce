<?php
/**
 * Created by JetBrains PhpStorm.
 * User: naveen
 * Date: 9/8/12
 * Time: 10:21 PM
 * To change this template use File | Settings | File Templates.
 */
class Mentor_Model extends CI_Model {

    public $id;
    public $name;
    public $email;

    public $fellows;

    public function __construct() {
        parent::__construct();
    }

    public function __toString() {
        return "";
    }

    public function load_data_from_csv($file_path) {
        if (!file_exists($file_path))
            return;

        $data = read_file($file_path);
        $lines = explode("\n", $data);
        $ion_auth = new Ion_auth();

        //remove header line
        $lines = array_slice($lines, 1, sizeof($lines));

        print_r($lines);

        foreach ($lines as $data_line) {
            $cells_data = explode(",", $data_line);

            $mentor_email = $cells_data[3];
            $mentor = get_user_by_email($mentor_email);

            if (empty($mentor)) {
                $ion_auth->register($mentor_email, 'asdf1234', $mentor_email);
            }

            $mentor = get_user_by_email($mentor_email);

            //todo: check for duplicate fellows






            //            $ion_auth->


        }

        return null;
    }

    public function add_mentor($name, $email, $chapter_id) {
    }


}
