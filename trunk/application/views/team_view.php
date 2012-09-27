<div class="row">
    <div class="span12">
        <ul class="nav nav-tabs" id="men_fel_tab">
            <li class="active"><a href="#fellows">Fellows</a></li>
            <li><a href="#mentors">Mentors</a></li>
        </ul>

        <div class="tab-content">
            <div class="tab-pane" id="mentors">
                <div>
                    <table class="table table-striped">
                        <thead>
                        <tr>
                            <th>
                                Name
                            </th>

                        </tr>
                        </thead>
                        <tbody>

                        <?php foreach ($mentors as $mentor): ?>
                        <tr>
                             <td>
                                 <?php echo $mentor->username;?>
                             </td>
                        </tr>
                            <?php endforeach; ?>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="tab-pane active" id="fellows">
                <div>
                    <table class="table table-striped">
                        <thead>
                        <tr>
                            <th>
                                Name of Student
                            </th>
                            <th>
                                Roll Number
                            </th>
                            <th class="width-50 text-right">
                                Goals
                            </th>
                            <th class="width-50 text-right">
                                Monthly Reports
                            </th>
                            <th class="width-50 text-right">
                                Interaction
                            </th>
                        </tr>
                        </thead>
                        <tbody>

                        <?php foreach ($fellows as $fellow): ?>
                        <tr>
                            <td><?php echo $fellow->name; ?></td>
                            <td>
                                <?php echo $fellow->roll_number;?>
                            </td>
                            <td class="text-right">
                                <a target="_blank" target="_blank" href="<?php echo
                                    "http://www.formstack.com/forms/?1263698-rWnaydsUyH&staff_avanti_pin=" .
                                    get_user_email() . "&fellow_roll_number=" . $fellow->roll_number ?>">Submit a Goal</a>
                            </td>
                            <td class="text-right">
                                <a target="_blank" href="<?php echo
                                    "http://www.formstack.com/forms/?1258004-7GdhAtYPy4&staff_avanti_pin=" .
                                    get_user_email() . "&fellow_roll_number=" . $fellow->roll_number ?>">Submit a Monthly Report</a></td>
                            <td class="text-right">
                                <a target="_blank" href="<?php echo
                                    "http://www.formstack.com/forms/?1255471-EGG2QhnkpU&staff_avanti_pin=" .
                                    get_user_email() . "&fellow_roll_number=" . $fellow->roll_number ?>">Submit an Interaction</a></td>
                            <!--                http://www.formstack.com/forms/?1255471-EGG2QhnkpU&staff_avanti_pin=abhgupta@iitk.ac.in&fellow_roll_number=55555-->

                        </tr>
                            <?php endforeach; ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    $(function () {

        $('#men_fel_tab a').click(function (e) {
            e.preventDefault();
            $(this).tab('show');
        })
    })
</script>