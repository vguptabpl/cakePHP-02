<?php
/**
 *
 * PHP 5
 *
 * CakePHP(tm) : Rapid Development Framework (http://cakephp.org)
 * Copyright 2005-2012, Cake Software Foundation, Inc. (http://cakefoundation.org)
 *
 * Licensed under The MIT License
 * Redistributions of files must retain the above copyright notice.
 *
 * @copyright     Copyright 2005-2012, Cake Software Foundation, Inc. (http://cakefoundation.org)
 * @link          http://cakephp.org CakePHP(tm) Project
 * @package       Cake.View.Layouts
 * @since         CakePHP(tm) v 0.10.0.1076
 * @license       MIT License (http://www.opensource.org/licenses/mit-license.php)
 */
$cakeDescription = __d('cake_dev', 'CakePHP: the rapid development php framework');
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <?php echo $this->Html->charset(); ?>
        <title>Look 4 Venue | vgupta.in</title>
        <?php
        echo $this->Html->meta('icon');
        echo $this->Html->css('cake.generic');
        echo $this->Html->css('style');
        echo $this->Html->script(array('jquery-1.2.3.min','script'));
        ?>
    </head>
    <body>
        <div id="wrapper">
            <?php echo $this->element('header'); ?>
            <div id="content middle-container-listing-outer">
                <?php echo $this->Session->flash(); ?>
                <div id="middle-container-listing-outer">
                    <?php echo $this->element('top_nav'); ?>
                    <div class="middle-container-listing">
                        <?php echo __($this->fetch('content')); ?>
                        <div style="clear:both;"></div>
                    </div>
                    <div style="clear:both;"></div>
                </div> <!--middle container outer-->
                <div style="clear:both;"></div>
            </div>
            <?php echo $this->element('footer'); ?>
            <?php 
            if($this->request['controller'] == 'venues' && $this->request['action'] == 'details'){
            ?>
            <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false"></script>
            <?php } ?>
        </div>
        <?php //echo $this->element('sql_dump'); ?>
    </body>
</html>
