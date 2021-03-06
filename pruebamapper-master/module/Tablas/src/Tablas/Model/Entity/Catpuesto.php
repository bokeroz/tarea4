<?php
/**
 * Configuration file generated by ApiTool
 *
 * @see https://github.com/CookieShop/apitools.git
 */

namespace Tablas\Model\Entity;
class Catpuesto implements CatpuestoInterface{
    /**
     * @var int              
     */
      protected $id;  
    /**
     * @var varchar              
     */
      protected $nombre;  
    /**
     * Set id
     *
     * @param int $id
     * @return type                   
     */            
	public function setId($id){
		$this->id = (int) $id;
	}
    /**
     * Get id
     *
     * @return int
     */          
	public function getId(){
		return $this->id;
	}
    /**
     * Set nombre
     *
     * @param varchar $nombre
     * @return type                   
     */            
	public function setNombre($nombre){
		$this->nombre = (string) $nombre;
	}
    /**
     * Get nombre
     *
     * @return varchar
     */          
	public function getNombre(){
		return $this->nombre;
	}
}
?>