<div class="left-box-landing">
    <?php foreach ($data as $key => $cuisine_list): ?>
        <div class="headings">
            <h2><strong><?php echo $key; ?></strong></h2><hr>
            <?php foreach ($cuisine_list as $cuisine_key => $cuisine_list_data): ?>
            <span class="cuisineTxt">
                <a href="<?php echo Configure::read('WWW_SERVER_URL') . 'venues/show_venue/' . $cuisine_list_data; ?>"><?php echo $cuisine_list_data; ?></a>
            </span>
            <?php endforeach; ?>
        </div>
    <?php endforeach; ?>
</div>
<div class="right-box-landing">
    <div style="line-height: 2em;">
        <div class="widget">
            <div class="grids_box_sidebar">
                <div class="widget-title"><h3>Restaurant's</h3></div>
            </div>
            <ul>
                <?php foreach ($data_featured as $featured): ?>
                    <li class="cat-item cat-item-5">
                        <a title="View all posts filed under ACTION" href="javascript:void(0)">
                            <?php echo $featured['Venue']['name'] ?>,
                            <?php echo $featured['Venue']['cuisine'] ?>
                        </a>
                    </li>
                <?php endforeach; ?>
            </ul>
        </div>
        <div class="clearfix"></div>
        <br />
    </div>
</div>