<?php
if (!defined('BASEPATH')) exit('No direct script access allowed');

///validates if a user is an authenticated user or not
function validate_login() {
    $ci =& get_instance();
    if (!$ci->ion_auth->logged_in()) {
        //redirect them to the login page
        redirect('auth/login', 'refresh');
    }
}

//gets current logged in username or null
function get_user_name() {
    $ci =& get_instance();
    if ($ci->ion_auth->logged_in()) {
        return $ci->ion_auth->user()->row()->username;
    }
    return null;
}

function get_user_by_email($email_id) {
    $ci =& get_instance();
    $ci->db->where('email', $email_id);
    $query = $this->db->get('users');

    $results = $query->result();

    if (empty($results))
        return array();


    $first_element = $results[0];

    //todo: update this list
    return array(
        'id' => $first_element->id,
        'username' => $first_element->username,
        'email' => $first_element->email
    );
}

function user_exists($email_id) {
    $ci =& get_instance();
    $ci->db->where('email', $email_id);
    $ci->db->from('users');
    $count = $this->db->count_all_results();

    if ($count > 0)
        return true;
    else
        return false;
}

//gets current logged in user
function get_user() {
    $ci =& get_instance();
    if ($ci->ion_auth->logged_in()) {
        return $ci->ion_auth->user()->row();
    }
    return null;
}

//validate if current request is from a logged in user or not
function is_logged_in() {
    $ci =& get_instance();
    if ($ci->ion_auth->logged_in()) {
        return true;
    } else {
        return false;
    }

}

//check is current user admin
function is_admin() {
    $ci =& get_instance();
    if ($ci->ion_auth->is_admin()) {
        return true;
    } else {
        return false;
    }
}

//return current user artist_id
function get_current_user_id() {
    $ci =& get_instance();
    if ($ci->ion_auth->logged_in()) {
        return get_user()->id;
    } else {
        return 0;
    }
}

//return current user name
function get_current_user_name() {
    $ci =& get_instance();
    if ($ci->ion_auth->logged_in()) {
        $auth_id = get_user()->id;
        $ci->db->select('name');
        $ci->db->where('user_id', $auth_id);
        $ci->db->from('artist');
        $res = $ci->db->get()->row();
        return $res->name;
    } else {
        return 0;
    }

}

//return current user artist_id or user_name
function get_current_id_or_username() {
    $ci =& get_instance();
    if ($ci->ion_auth->logged_in()) {
        $auth_id = get_user()->id;
        $ci->db->select('id,user_name');
        $ci->db->where('user_id', $auth_id);
        $ci->db->from('artist');
        $res = $ci->db->get()->row();
        if ($res->user_name) {
            return $res->user_name;
        } else {
            return $res->id;
        }
    } else {
        return false;
    }

}

//return current user role
function get_current_user_role() {
    $ci =& get_instance();
    if ($ci->ion_auth->logged_in()) {
        $auth_id = get_user()->id;
        $ci->db->select('role');
        $ci->db->where('user_id', $auth_id);
        $ci->db->from('artist');
        $user = $ci->db->get()->row();
        return $user->role;
    } else {
        return 0;
    }
}

function get_user_email() {
    $ci =& get_instance();
    if ($ci->ion_auth->logged_in()) {
        return $ci->ion_auth->user()->row()->email;
    }
    return null;
}

/**
 * @param $type : Type can be 'success', 'error', 'info'
 * @param $message : The message to show
 */
function set_message($type, $message) {
    $ci =& get_instance();
    $ci->load->library('session');

    $ci->session->set_flashdata($type, $message);
}

/**
 * @return array which contains all message saved
 */
function get_message() {
    $ci =& get_instance();

    $ci->load->library('session');
    $data = array();

    $success_message = $ci->session->flashdata('success');
    $error_message = $ci->session->flashdata('error');
    $info_message = $ci->session->flashdata('info');

    if (!empty($success_message)) {
        $data['success'] = $success_message;
    }

    if (!empty($error_message)) {
        $data['error'] = $error_message;
    }

    if (!empty($info_message)) {
        $data['info'] = $info_message;
    }
    return $data;
}

function valid_url($url) {
    if ($url == '') {
        return true;
    }
    return (preg_match('/^(http|https|ftp):\/\/([A-Z0-9][A-Z0-9_-]*(?:\.[A-Z0-9][A-Z0-9_-]*)+):?(\d+)?\/?/i', $url)) ? TRUE : FALSE;

}

function trim_text($input, $length, $ellipses = true, $strip_html = true) {
    //strip tags if desired
    if ($strip_html) {
        $input = strip_tags($input);
    }

    //no need to trim, already shorter than trim length
    if (strlen($input) <= $length) {
        return $input;
    }

    //find last space within length
    $last_space = strrpos(substr($input, 0, $length), ' ');
    if (!$last_space) {
        $trimmed_text = substr($input, 0, $length);
    } else {
        $trimmed_text = substr($input, 0, $last_space);

    }

    //add ellipses (...)
    if ($ellipses) {
        $trimmed_text .= '...';
    }

    return $trimmed_text;
}

function empty_display_value($value, $empty_text) {
    return empty($value) ? $empty_text : $value;
}

function get_temp_file_path($filename) {
    $ci =& get_instance();
    return str_replace("\\", "/", getcwd()) . $ci->config->item('temp_directory') . $filename;
}