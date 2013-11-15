<?php
App::uses('AppModel', 'Model');
/**
 * VenuePicture Model
 *
 * @property Venue $Venue
 */
class VenuePicture extends AppModel {

/**
 * Display field
 *
 * @var string
 */
	public $displayField = 'name';


	//The Associations below have been created with all possible keys, those that are not needed can be removed

/**
 * belongsTo associations
 *
 * @var array
 */
	public $belongsTo = array(
		'Venue' => array(
			'className' => 'Venue',
			'foreignKey' => 'venue_id',
			'conditions' => '',
			'fields' => '',
			'order' => ''
		)
	);
}
