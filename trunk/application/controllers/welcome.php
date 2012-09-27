<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Welcome extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        validate_login();
    }

    public function index()
    {
        $model = new Fellow_Model();
        $mentor_model = new Mentor_Model();
        $mentors = $mentor_model->get_mentors_child(get_current_user_id());

        $fellows = $model->get_fellows(get_current_user_id());
        if (empty($fellows))
            $fellows = array();
        $data['fellows'] = $fellows;

        if (empty($mentors)) {
            $this->template->title("Avanti Fellows - Mentor Platform");
            $this->template->build('mentor_fellows_view', $data);
        }
        else{
            $data['mentors'] = $mentors;
            $this->template->title("Avanti Fellows - Mentor Platform");
            $this->template->build('team_view', $data);
        }

    }


}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */