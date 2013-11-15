<div class="left-box-landing">
    <?php foreach ($data as $venue): ?>
        <div class="headings">
            <div class="srchGrdImg">
                <img src="/img/image.resize.jpg" />
            </div>
            <div class="srchGrdSet">
                <h2><a title="<?php echo $venue['Venue']['name'] ?>" href="<?php echo $venue['Venue']['venue_url']; ?>"><?php echo $venue['Venue']['name']; ?></a></h2>
                <span><?php echo $venue['Venue']['address']; ?></span>,
                <span><?php echo $venue['Venue']['city'] . ', ' . $venue['Venue']['country']; ?></span><br />
                <span><?php echo $venue['Venue']['postcode']; ?></span><br />
                <span><strong>Cuisine </strong><?php echo $venue['Venue']['cuisine']; ?></span>
                <!--<p style="text-align: right;">[View Venue]</p>-->
            </div>
        </div>
    <?php endforeach; ?>
    <div class="paging">
        <?php
        echo $this->Paginator->prev('< ' . __('previous'), array(), null, array('class' => 'prev disabled'));
        echo $this->Paginator->numbers(array('separator' => ''));
        echo $this->Paginator->next(__('next') . ' >', array(), null, array('class' => 'next disabled'));
        ?>
    </div>
</div>
<div class="right-box-landing">
    <div style="line-height: 2em;">
        <div class="widget">
            <div class="grids_box_sidebar">
                <div class="widget-title"><h3>Cuisine</h3></div>
            </div>
            <ul>
                <?php foreach ($data_cuisine as $cuisine): ?>
                    <li class="cat-item cat-item-5">
                        <a title="<?php echo $cuisine['Cusine']['cusine'] ?>" href="<?php echo $cuisine['Cusine']['cusine_url']; ?>">
                            <?php echo $cuisine['Cusine']['cusine'] ?>
                        </a>
                    </li>
                <?php endforeach; ?>
            </ul>
        </div>
        <div class="widget">
            <div class="grids_box_sidebar">
                <div class="widget-title"><h3>Featured Restaurant</h3></div>
            </div>
            <ul>
                <?php foreach ($data_featured as $featured): ?>
                    <li class="cat-item cat-item-5">
                        <a title="<?php echo $featured['Venue']['name'] ?>" href="<?php echo $featured['Venue']['venue_url'] ?>">
                            <?php echo $featured['Venue']['name'] ?>
                        </a>
                        <p><?php echo $featured['Venue']['address'] . ', ' . $featured['Venue']['postcode'] ?></p>
                    </li>
                <?php endforeach; ?>
            </ul>
        </div>
        <div class="clearfix"></div>
        <br />
    </div>
</div>