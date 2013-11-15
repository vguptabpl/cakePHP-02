<div class="left-box-landing">
    <div class="basic_info">
        <fieldset>
            <legend><?php echo $venue['Venue']['name']; ?></legend><br>
        <p><?php echo $venue['Venue']['address'] . ' ' . $venue['Venue']['postcode']; ?></p>
        <p><?php echo 'CAD ' . $venue['Venue']['average_price']; ?></p>
        <p><?php echo $venue['Venue']['nearest_station']; ?></p>
        <p><?php echo $venue['Venue']['dress_code']; ?></p>
        <input type="hidden" id="comp_lat" value="<?php echo $venue['Venue']['lat']; ?>" />
        <input type="hidden" id="comp_lng" value="<?php echo $venue['Venue']['lng']; ?>" />
        <input type="hidden" id="comp_address_map" value="<?php echo $venue['Venue']['address'] . ',' . $venue['Venue']['city'] . ',' . $venue['Venue']['country'] . ',' . $venue['Venue']['postcode']; ?>" />
        </fieldset>
    </div>
    <div class="contact_info">
        <?php foreach ($venue['Mediae'] as $mediae_list): ?>
            <div class="headings_contact">
                <div class="secHead">Contact Info</div><hr>
                <div>
                    <p>Youtube :: <?php echo (!empty($mediae_list['youtube_id'])) ? $mediae_list['youtube_id'] : '- N/A -'; ?></p>
                    <p>Flicker :: <?php echo (!empty($mediae_list['flickr_username'])) ? $mediae_list['flickr_username'] : '- N/A -'; ?></p>
                    <p>Twitter :: <?php echo (!empty($mediae_list['twitter_username'])) ? $mediae_list['twitter_username'] : '- N/A -'; ?></p>
                </div>
            </div>
        <?php endforeach; ?>
    </div>
    <div class="room_info">
        <?php foreach ($venue['Room'] as $room_list): ?>
            <div class="headings_room">
                <div class="secHead">Room Info</div><hr>
                <div>
                    <p>Room Name :: <?php echo $room_list['name']; ?></p>
                    <p>Seating Capacity :: <?php echo $room_list['seating']; ?></p>
                </div>
            </div>
        <?php endforeach; ?>
    </div>
    <div class="review_info">
        <?php foreach ($venue['Review'] as $review_list): ?>
            <div class="headings_review">
                <div class="secHead">Venue's Review</div><hr>
                <div>
                    <p><?php echo $review_list['heading']; ?></p>
                    <p><?php echo $review_list['detail']; ?></p>
                    <p>Average :: <?php echo $review_list['average']; ?></p>
                    <p>Food :: <?php echo $review_list['food']; ?></p>
                    <p>Service :: <?php echo $review_list['service']; ?></p>
                    <p>Atmosphere :: <?php echo $review_list['atmosphere']; ?></p>
                </div>
            </div>
        <?php endforeach; ?>
    </div>

</div>
<div class="right-box-landing">
    <div class="widget">
        <div class="grids_box_sidebar">
            <div class="widget-title"><h3>Location's Map</h3></div>
            <div id="map-canvas"></div>
        </div>
        <div class="clearfix"></div>
    </div>
    <br><hr><br>
    <div class="widget">
        <div class="grids_box_sidebar">
            <div class="widget-title"><h3>Similar Restaurant</h3></div>
            <ul>
                <?php foreach ($venue_simillar as $featured): ?>
                    <li class="cat-item cat-item-5">
                        <a title="<?php echo $take_away['Venue']['name'] ?>" href="<?php echo $featured['Venue']['venue_url'] ?>">
                            <?php echo $featured['Venue']['name'] ?>
                        </a>&nbsp;<br>
                        <?php echo 'Cuisine : '.$featured['Venue']['cuisine'] ?>
                        <p><?php echo $featured['Venue']['address'] . ', ' . $featured['Venue']['postcode'] ?></p>
                    </li>
                <?php endforeach; ?>
            </ul>
        </div>
    </div>
    <div class="clearfix"></div>
    <br />
</div>