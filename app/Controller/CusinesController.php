<?php

App::uses('AppController', 'Controller');

/**
 * Venues Controller
 *
 * @property Venue $Venue
 */
class CusinesController extends AppController {

    /**
     * Controller name
     *
     * @var string
     */
    public $name = 'Cusines';
    public $uses = array('Cusine', 'Venue');
    var $paginate = array(
        'limit' => 10,
        'fields' => array('Cusine.id', 'Cusine.cusine', 'Cusine.description'),
        'order' => array(
            'Cusine.cusine' => 'asc'
        )
    );
    /**
     * Action will used for landing page of cuisine. 
     */
    public function index() {
        $data = $this->Cusine->getCuisineList();        
        $data_featured = $this->Venue->find(
                'all', array(
            'recursive' => -1,
            'conditions' => array('Venue.featured' => 1),
            'fields' => array('Venue.id', 'Venue.name', 'Venue.cuisine', 'Venue.city', 'Venue.country'),
            'limit' => '5',
            'order' => array('rand()'))
        );
        $this->set('data', $data);
        $this->set('data_featured', $data_featured);
    }
}
