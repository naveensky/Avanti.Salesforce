<?php
/**
 * Created by JetBrains PhpStorm.
 * User: naveen
 * Date: 9/8/12
 * Time: 10:21 PM
 * To change this template use File | Settings | File Templates.
 */
class Mentor_Model extends CI_Model
{

    public $id;
    public $name;
    public $email;

    public $fellows;

    public function __construct()
    {
        parent::__construct();
    }

    public function __toString()
    {
        return "";
    }

    public function get_mentors_child($user_id)
    {
        $this->db->select('id');
        $this->db->where('user_id', $user_id);
        $mentor = $this->db->get('mentors')->row();
        $mentor_id = 0;
        if (empty($mentor))
            return null;
        else
            $mentor_id = $mentor->id;

        $query = $this->db->query("select get_mentor_mentors($mentor_id) as ids;");
        $result = $query->row();
        $id_array = array();

        if (!empty($result)& !empty($result->ids))
            $id_array = explode(",", $result->ids);
        else
            return null;

        $this->db->select('username');
        $this->db->from('users');
        $this->db->join('mentors', 'mentors.user_id = users.id');
        $this->db->where_in('mentors.id',$id_array);
        $user_names=$query = $this->db->get()->result();
        return $user_names;
    }




}
