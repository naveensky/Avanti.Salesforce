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


        $fellows = $model->get_fellows(get_current_user_id());
        if(empty($fellows))
            $fellows = array();
        $data['fellows'] = $fellows;
        $this->template->title('Avanti Fellows - Mentor Platform');
        $this->template->build('welcome_message', $data);
    }


}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */