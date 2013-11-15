<div class="left-box-landing">    
    <div class="headings headTxt">
        Search for Cuisine :: <span><strong><?php echo $cuisine_name; ?></strong></span>
    </div>
    <?php foreach ($cuisine_venue as $venue): ?>
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
    <div class="widget">
        <div class="grids_box_sidebar">
            <div class="widget-title"><h3>Take-away's Restaurant</h3></div>
        </div>
        <ul>
            <?php foreach ($data_take_away as $take_away): ?>
                <li class="cat-item cat-item-5">
                    <a title="<?php echo $take_away['Venue']['name'] ?>" href="<?php echo $take_away['Venue']['venue_url'] ?>">
                        <?php echo $take_away['Venue']['name'] ?>                        
                    </a><br>
                    <?php echo 'Cuisine : '.$take_away['Venue']['cuisine'] ?>
                </li>
            <?php endforeach; ?>
        </ul>
    </div>
    <div class="clearfix"></div>
    <div class="widget">
        <div class="grids_box_sidebar">
            <div class="widget-title"><h3>Latest Reviews</h3></div>
        </div>
        <ul>
            <?php foreach ($reccent_reviews as $reviews): ?>
                <li class="cat-item cat-item-5">
                    <a href="javascript:void(0)">
                        <?php echo $reviews['Review']['heading'] ?>                        
                    </a>
                    <p>
                        <?php echo $reviews['Review']['detail'] ?>
                    </p>
                </li>
            <?php endforeach; ?>
        </ul>
    </div>
    <div class="clearfix"></div>
    <br />
</div>