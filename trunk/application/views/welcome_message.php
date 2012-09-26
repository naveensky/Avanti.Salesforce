<div class="row">
    <div class="span12">
        <h3>Mentee Reports</h3>
    </div>

    <div class="span12">
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
                        get_user_email() . "&fellow_roll_number=" . $fellow->roll_number ?>">Fill
                        Report</a>
                </td>
                <td class="text-right">
                    <a target="_blank"  href="<?php echo
                    "http://www.formstack.com/forms/?1258004-7GdhAtYPy4&staff_avanti_pin=" .
                    get_user_email() . "&fellow_roll_number=" . $fellow->roll_number ?>">Fill
                    Report</a></td>
                <td class="text-right">
                    <a target="_blank" href="<?php echo
                    "http://www.formstack.com/forms/?1255471-EGG2QhnkpU&staff_avanti_pin=" .
                    get_user_email() . "&fellow_roll_number=" . $fellow->roll_number ?>">Fill
                    Report</a></td>
<!--                http://www.formstack.com/forms/?1255471-EGG2QhnkpU&staff_avanti_pin=abhgupta@iitk.ac.in&fellow_roll_number=55555-->

            </tr>
                <?php endforeach; ?>
            </tbody>
        </table>
    </div>
</div>