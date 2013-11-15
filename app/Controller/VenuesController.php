<?php

App::uses('AppController', 'Controller');

/**
 * Venues Controller
 *
 * @property Venue $Venue
 */
class VenuesController extends AppController {

    /**
     * Controller name
     *
     * @var string
     */
    public $name = 'Venues';
    public $uses = array('Cusine', 'Venue', 'Review');
    var $paginate = array(
        'recursive' => -1,
        'limit' => 5,
        'fields' => array('Venue.id', 'Venue.name', 'Venue.cuisine', 'Venue.city', 'Venue.country', 'Venue.postcode', 'Venue.address', 'Venue.average_price', 'Venue.nearest_station'),
        'order' => array(
            'Venue.name' => 'asc'
        )
    );

    /**
     * Controller action will default action for Venue list page. This will give 
     * dataset for venue list, cuisine and featured restaurant.
     * 
     */
    public function index() {
        $data = $this->paginate('Venue');
        $data_featured = $this->Venue->find(
                'all', array(
            'recursive' => -1,
            'conditions' => array('Venue.featured' => 1),
            'fields' => array('Venue.id', 'Venue.name', 'Venue.cuisine', 'Venue.postcode', 'Venue.address', 'Venue.city', 'Venue.country'),
            'limit' => '5',
            'order' => array('rand()'))
        );
        $data_cuisine = $this->Cusine->find('all', array('limit' => 5,'order' => array('rand()')));
        $this->set('data', $data);
        $this->set('data_cuisine', $data_cuisine);
        $this->set('data_featured', $data_featured);
    }

    /**
     * Controller action will used to see complete venue details. The record set 
     * will contain Venue's review and similar resutaurant on the basis of same 
     * Cuisine.
     * 
     * @param type $id  : Venue Id
     */
    public function details($id = null) {

        $venue_simillar = '';
        $venue_cuisine = '';
        $this->Venue->id = $id;
        if (!$this->Venue->exists()) {
            $this->set('venue', 'No Venue found.');
        } else {
            $venue = $this->Venue->read(null, $id);
            $venue_cuisine = $venue['Venue']['cuisine'];
            $venue_cuisine = explode(',', $venue_cuisine);
            $venue_cuisine = array_filter($venue_cuisine);
            if ($venue_cuisine[0]) {
                $venue_simillar = $this->Venue->find(
                        'all', array(
                    'recursive' => -1,
                    'conditions' => array('Venue.cuisine' => array_values($venue_cuisine)),
                    'fields' => array('Venue.id', 'Venue.name', 'Venue.cuisine', 'Venue.address', 'Venue.postcode'),
                    'limit' => '5',
                    'order' => array('rand()'))
                );
            }
            $this->set('venue_simillar', $venue_simillar);
            $this->set('venue', $this->Venue->read(null, $id));
        }
    }
    /**
     * Controller Action will used to show venue list on the basis of selected 
     * Cuisine. This action will show recently added reviews and take away restaurant.
     * 
     * @param type $cuisine : Name of cuisine
     */
    public function show_venue($cuisine = null) {

        $this->paginate = array(
            'limit' => 5,
            'fields' => array('Venue.id', 'Venue.name', 'Venue.cuisine', 'Venue.city', 'Venue.country', 'Venue.postcode', 'Venue.address'),
            'conditions' => array('Venue.cuisine LIKE' => "%$cuisine%"),
            'order' => array(
                'Venue.name' => 'asc'
            )
        );
        $cuisine_venue = $this->Paginate('Venue');
        $data_take_away = $this->Venue->find(
                'all', array(
            'recursive' => -1,
            'conditions' => array('Venue.take_away' => 'yes'),
            'fields' => array('Venue.id', 'Venue.name', 'Venue.cuisine', 'Venue.city', 'Venue.country'),
            'limit' => '5',
            'order' => array('rand()')
                )
        );
        $reccent_reviews = $this->Review->find(
                'all', array(
            'recursive' => -1,
            'fields' => array('Review.heading', 'Review.detail', 'Review.average'),
            'limit' => '5',
            'order' => array(
                'Review.date_Stamp' => 'desc'
            )
                )
        );
        $this->set('cuisine_name', $cuisine);
        $this->set('cuisine_venue', $cuisine_venue);
        $this->set('data_take_away', $data_take_away);
        $this->set('reccent_reviews', $reccent_reviews);
    }

}