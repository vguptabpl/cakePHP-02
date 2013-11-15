<?php

App::uses('AppModel', 'Model');

/**
 * Cusine Model
 *
 */
class Cusine extends AppModel {

    /**
     * Display field
     *
     * @var string
     */
    public $displayField = 'id';

    /**
     * Model function will used to provide Cuisine list. This will call Model 
     * behavior function and will create Alphabatical cluster.
     * 
     * @return type
     */
    public function getCuisineList() {
        $dataArr = array();
        $data = $this->find('list',array('fields' => array('Cusine.id','Cusine.cusine')));
        $dataArr = $this->getAlphabaticalTree($data);
        return $dataArr;
    }

}
