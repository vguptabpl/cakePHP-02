<?php

App::uses('ModelBehavior', 'Model');

/**
 * Description of CommonBehavior
 *
 * @author vikas.gupta
 */
class CommonBehavior extends ModelBehavior {

    /**
     * Model behavior will used to generate the complete cuisine URL.
     * 
     * @param type $model
     * @param type $result
     * @return string
     */
    public function createCusineURL(&$model, $result) {
        $returnArr = array();
        if (is_array($result)):
            foreach ($result as $key => $value):
                $value['Cusine']['cusine_url'] = Configure::read('WWW_SERVER_URL') . 'venues/show_venue/' . strtolower($value['Cusine']['cusine']);
                $returnArr[$key] = $value;
            endforeach;
        endif;
        return $returnArr;
    }

    /**
     * Model behavior will used to generate the comlete venue URL.
     * 
     * @param type $model
     * @param type $result
     * @return string
     */
    public function createVenueURL(&$model, $result) {
        $returnArr = array();
        if (is_array($result)):
            foreach ($result as $key => $value):
                $value['Venue']['venue_url'] = Configure::read('WWW_SERVER_URL') . 'venues/details/' . strtolower($value['Venue']['id']);
                $returnArr[$key] = $value;
            endforeach;
        endif;
        return $returnArr;
    }

    /**
     * Model behavior will used to return result in alphbatical tree.
     * 
     * @param type $model
     * @param type $result
     */
    public function getAlphabaticalTree(&$model, $result) {
        $resultArr = array();
        $result = array_unique($result);
        asort($result);
        foreach ($result as $value) {
            $vKey = $value[0];
            $resultArr[$vKey][] = $value;
        }
        if (count($resultArr) == 0)
            $resultArr = $result;
        return $resultArr;
    }

}

?>