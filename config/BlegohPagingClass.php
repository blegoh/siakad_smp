<?php

/*
 *Author Blegoh Cyber (Aku Manies :D)
 *Copyright 2012
 *Dalam Rangka Tugasnya Pak Hendri :D
 *Kalo gak di kasih tugas paging gak bakalan buat class kayak gini :P
 *Just 4 Fun :D
 *Katanya Kalo Ada Kesungguhan Pasti Bisa Dikerjakan :D
 */

class BlegohPaging{
    //private $row_per_hal; //row per halaman
    private $hal_aktif;
    private $jum_hal; //jumlah halaman
    private $url;
    private $sql_query;
    private $total_row; // total row di table
    private $class_css_aktif; //css class untuk halaman aktif
    private $class_css_non_aktif; //css class untuk halaman tidak aktif
    private $class_css_prevnext;
    
    function __construct($query,$row_per_hal,$url,$caktif = "",$ctaktif="",$prevnext =""){
        //$this->row_per_hal = $row_per_hal;
        $total_row = mysql_num_rows(mysql_query($query)) or die(mysql_error());
        $this->jum_hal = ceil($total_row/$row_per_hal);
        $this->url = $url;
        $this->class_css_aktif = $caktif;
        $this->class_css_non_aktif = $ctaktif;
        $this->class_css_prevnext = $prevnext;
        if(isset($_GET['hlm'])){
            if($_GET['hlm'] < 1){
                $this->hal_aktif = 1;
                $limit = 0;
            }elseif($_GET['hlm'] > $this->jum_hal){
                $this->hal_aktif = $this->jum_hal;
                $limit = $this->jum_hal - 1;
            }else{
                $this->hal_aktif = $_GET['hlm'];
                $limit = ($_GET['hlm']-1)* $row_per_hal;
            }
        }else{
            $this->hal_aktif = 1;
            $limit = 0;
        }
        $this->total_row = mysql_num_rows(mysql_query($query));
        $this->sql_query = $query." limit $limit,$row_per_hal";
    }
    
    function getResult(){
        $sql = $this->sql_query;
        return mysql_query($sql);
    }
    
    function getTotalRow(){
        return $this->total_row;
    }
    
    function getPaging(){
        $url = $this->url;
        $pos = strpos($url,"?");
        if($pos){
            $tambahan = "&hlm=";
        }else{
            $tambahan = "?hlm=";
        }
        $hlm = $this->hal_aktif;
        $class_prrevnext = $this->class_css_prevnext;
        $class_aktif = $this->class_css_aktif;
        $class_non_aktif = $this->class_css_non_aktif;
        $paging = "";
        if($this->jum_hal > 1){
            if($hlm >1){
                $paging .= "<a class=\"$class_prrevnext\" href=\"".$url.$tambahan."1\">First</a>";
                $paging .= "<a class=\"$class_prrevnext\" href=\"".$url.$tambahan.($hlm -1)."\">Prev</a>";
            }
            for($i=1;$i<=$this->jum_hal;$i++){
                if($i > ($hlm - 7 ) && $i < ($hlm+7)){
                    if($i==$hlm){
                        $paging .= "<a class=\"$class_aktif\">$i</a>";
                    }else{
                        $paging .= "<a class=\"$class_non_aktif\" href=\"".$url.$tambahan.$i."\">$i</a>";
                    }
                }
            }
            if($hlm < $this->jum_hal){
                $paging .= "<a class=\"$class_prrevnext\" href=\"".$url.$tambahan.($hlm +1)."\">Next</a>";
                $paging .= "<a class=\"$class_prrevnext\" href=\"".$url.$tambahan.$this->jum_hal."\">Last</a>";
            }
        }        
        echo $paging;
    }
}

?>