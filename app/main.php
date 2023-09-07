<?php

    $data = [

        ['id' => 1, 'title' => 'FORD', "parent_id" => 0],
        ['id' => 2, 'title' => 'MAZDA', "parent_id" => 0],
        ['id' => 3, 'title' => 'VOLVO', "parent_id" => 0],
        ['id' => 4, 'title' => 'OPEL', "parent_id" => 0],
        ['id' => 5, 'title' => 'SEDAN', "parent_id" => 1],
        ['id' => 6, 'title' => 'HETCHBACK', "parent_id" => 5],
        ['id' => 10, 'title' => 'COUPE', "parent_id" => 1],
        ['id' => 11, 'title' => 'FASTBACK', "parent_id" => 1],
        ['id' => 7, 'title' => 'SEDAN', "parent_id" => 2],
        ['id' => 8, 'title' => 'CABRIOLET', "parent_id" => 6],
        ['id' => 9, 'title' => 'UNIVERSAL', "parent_id" => 3]
    ];

 
 //групировка массива
    function createThree($datas){
        $parent_arr = array();

        //[$item['parent_id']] - будет ссылкой (или индификатором родителя)
        //[[$item['id']] - номер элемента
        foreach($datas as $key => $item){
            $parent_arr[$item['parent_id']][$item['id']] = $item;
        }
        // работаем от главных родителей (0 уровень вложенности)
        $threeElem = $parent_arr[0];

        //передача параметра по ссылке 
        generateElemThree($threeElem, $parent_arr);

        //возваращем сгрупированный массив
        return $threeElem;
    }
    
    //рекурсивная функция
    function generateElemThree(&$threeElem, $parent_arr){

        foreach($threeElem as $key => $item){
            //создаем ветку ['children']
            if(!isset($item['children'])){
                $threeElem[$key]['children'] = array();
            }

            //записываем производный массив от родителя в ['children'] - если такой есть и запускаем рекурсию по этому children
            if(array_key_exists($key, $parent_arr)){
                $threeElem[$key]['children'] = $parent_arr[$key];
                generateElemThree($threeElem[$key]['children'], $parent_arr);
            }
        }

    }
    ?> <pre>  <?php var_dump($data);?>  </pre>  <?php
    

