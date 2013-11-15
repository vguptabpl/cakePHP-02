<div class="left-box-landing">
    <?php foreach ($data as $cuisine_list): ?>
        <div class="headings">
            <h2><a href="<?php echo $cuisine_list['Cusine']['cusine_url']; ?>"><?php echo $cuisine_list['Cusine']['cusine']; ?></a></h2>
            <p><?php echo $cuisine_list['Cusine']['description']; ?></p>
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