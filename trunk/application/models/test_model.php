<?php
/**
 * Created by JetBrains PhpStorm.
 * User: saxena.arunesh
 * Date: 9/26/12
 * Time: 6:39 PM
 * To change this template use File | Settings | File Templates.
 */
class Test_Model extends CI_Model
{
    function test_fellows($str)
    {
        $id_array = explode(",", $str);
        $this->db->where_in('mentor_id', $id_array);
        $fellows = $this->db->get('fellows')->result();
        foreach ($fellows as $fellow)
            var_dump($fellow->name);
    }

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
        if (empty($result))
            return null;

        $id_array = explode(",", $result->ids);
        $this->db->where_in('mentor_id', $id_array);
        $fellows = $this->db->get('fellows')->result();
        return $fellows;
    }
}
