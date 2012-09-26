<?php
/**
 * Created by JetBrains PhpStorm.
 * User: naveen
 * Date: 9/8/12
 * Time: 10:39 PM
 * To change this template use File | Settings | File Templates.
 */
class Fellow_Model extends CI_Model
{

    public $id;
    public $name;
    public $roll_number;

    public function __construct()
    {
        parent::__construct();
    }

    public function __toString()
    {
        return "";
    }

    /*
     * this function will return all fellows of user_id
     * @param user_id
     */
    function get_fellows($user_id)
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
        if (!empty($result))
            $id_array = explode(",", $result->ids);
        $id_array[] = $mentor_id;

        $this->db->where_in('mentor_id', $id_array);
        $fellows = $this->db->get('fellows')->result();
        return $fellows;
    }


    public function get_fellows_for_mentor($mentor_user_id)
    {

        $this->db->select("*");
        $this->db->from("fellows");
        $this->db->join("mentors", 'fellows.mentor_id = mentors.id');
        $this->db->join("users", "mentors.user_id = users.id");
        $this->db->where('users.id', $mentor_user_id);
        $query = $this->db->get();
        $results = $query->result();

        $fellows = array();

        foreach ($results as $fellow) {
            $fellow_model = new Fellow_Model();
            $fellow_model->id = $fellow->id;
            $fellow_model->name = $fellow->name;
            $fellow_model->roll_number = $fellow->roll_number;
            $fellows[] = $fellow_model;
        }

        return $fellows;
    }

    public function create_fellow($name, $roll_number, $mentor_id, $chapter_id)
    {
        $data = array(
            'chapter_id' => $chapter_id,
            'mentor_id' => $mentor_id,
            'name' => $name,
            'roll_number' => $roll_number
        );

        $this->db->insert('fellows', $data);

        $fellow = new Fellow_Model();
        $fellow->name = $name;
        $fellow->roll_number = $roll_number;

        return $fellow;
    }
}
