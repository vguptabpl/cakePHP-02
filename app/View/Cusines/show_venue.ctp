<div class="left-box-landing">
    <?php foreach ($cuisine_venue as $venue): ?>
        <div class="headings">
            <div class="srchGrdImg">
                <img src="/img/image.resize.jpg" />
            </div>
            <div class="srchGrdSet">
                <h2><?php echo $venue['Venue']['name']; ?></h2>
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