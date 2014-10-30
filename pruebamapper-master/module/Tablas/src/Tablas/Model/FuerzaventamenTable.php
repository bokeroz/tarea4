<?php
namespace Tablas\Model;
/**
 * Componentes necesarios para el modelado
 */
use Zend\Db\Adapter\Adapter;
use Zend\Db\TableGateway\AbstractTableGateway;
use Zend\Db\Sql\Select as Select;
/**
 * @package FuerzaventamenTable
 */

class FuerzaventamenTable extends AbstractTableGateway{
    /**
     * Nombre de la Tabla
     * @var type 
     */
    protected $table  = 'catalogo';
    
    
    /**
     * Configura Adaptador de Base de Datos
     * 
     * @param \Zend\Db\Adapter\Adapter $adapter
     */
    public function __construct(Adapter $adapter) {
        $this->adapter = $adapter;
        $this->initialize();
    }
    

###########################################################




#############################################################


    /**
     * Realiza una consulta utilizandon left join
     * 
     * @param type $nombrePuesto
     * @return type
     */
   




    public function findByPosition(){
        $resultSet = $this->select(function (Select $select) { 
                   # $select->join(array('c' => 'cte'),'catalogo.id_c = id_c'); 
                    $select->join('cte', 'catalogo.id_c = cte.id_c');

                });
        $resultSet->buffer();
        $resultSet->next();       
        return $this->getEntitiesJoin($resultSet);
    }
    


   /**
    * Selecciona columnas para vista
    * 
    * @param type $resultSet
    * @return type
    */
    private function getEntitiesJoin($resultSet){
        $entities = array();
        foreach ($resultSet as $row){
            $map= array(
               # 'nomina' => $row->nomina,
              #  'division' => $row->division,
             #   'ap_paterno' => $row->ap_paterno,
              #  'ap_materno' => $row->ap_materno,
                'id' => $row->id,
                'id_c' => $row->id_c,
                'nombre' => $row->nombre,
                'nombre_c' => $row->nombre_c,
                'tipo' => $row->tipo,
                'puesto' => $row->puesto,
            #'fecha_nacim' => $row->fecha_nacim,
            ); 
            $entities[] = $map;  

        }
        return $entities;
    }

}

