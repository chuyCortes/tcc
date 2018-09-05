<?php
  /* vim: set expandtab tabstop=4 softtabstop=4 shiftwidth=4:
  Codificación: UTF-8
  +----------------------------------------------------------------------+
  | Issabel version {ISSBEL_VERSION}                                     |
  | http://www.issabel.org                                               |
  +----------------------------------------------------------------------+
  | Copyright (c) 2017 Issabel Foundation                                |
  | Copyright (c) 2006 Palosanto Solutions S. A.                         |
  +----------------------------------------------------------------------+
  | The contents of this file are subject to the General Public License  |
  | (GPL) Version 2 (the "License"); you may not use this file except in |
  | compliance with the License. You may obtain a copy of the License at |
  | http://www.opensource.org/licenses/gpl-license.php                   |
  |                                                                      |
  | Software distributed under the License is distributed on an "AS IS"  |
  | basis, WITHOUT WARRANTY OF ANY KIND, either express or implied. See  |
  | the License for the specific language governing rights and           |
  | limitations under the License.                                       |
  +----------------------------------------------------------------------+
  | The Initial Developer of the Original Code is PaloSanto Solutions    |
  +----------------------------------------------------------------------+
  $Id: paloSantoClientes.class.php,v 1.1 2018-08-28 01:08:03 Erick Estrada Exp $ */

class paloSantoClientes{
    var $_DB;
    var $errMsg;
    var $arrClientes;

    function paloSantoClientes(&$pDB){
        // Se recibe como parámetro una referencia a una conexión paloDB
        if (is_object($pDB)) {
            $this->_DB =& $pDB;
            $this->errMsg = $this->_DB->errMsg;
        } else {
            $dsn = (string)$pDB;
            $this->_DB = new paloDB($dsn);

            if (!$this->_DB->connStatus) {
                $this->errMsg = $this->_DB->errMsg;
                // debo llenar alguna variable de error
            } else {
                // debo llenar alguna variable de error
            }
        }
    }

    /**
     * Procedimiento para obtener el total de los clientes activos de la tabla tblClientes
     * 
     * @return  Total    Total de los Clientes
     */
    function getNumClientes($filter_field, $filter_value){
        $where    = "";
        $arrParam = null;
        if(isset($filter_field) && $filter_field !=""){
            $where    = "where $filter_field like ?";
            $arrParam = array("$filter_value%");
        }

        $query   = "SELECT COUNT(*) AS Total FROM tblClientes $where";

        $result=$this->_DB->getFirstRowQuery($query, true, $arrParam);
        if($result["Total"] == 0){
            // $this->errMsg = $this->_DB->errMsg;
            $this->errMsg = 'No se puede obtener el total de los Clientes - '.$this->_DB->errMsg;
            return 0;
        }
        return $result["Total"];
        
    }

    /**
     * Procedimiento para obtener el listado de los clientes activos de la tabla tblClientes
     * 
     * @return  result    Listado de los Clientes dentro de un array
     */
    function getClientes($limit, $offset, $filter_field, $filter_value){
        // Consulta la información de los clientes 
        $query   = "SELECT Id, Cliente, Descripcion, FechaAlta, Status FROM tblClientes WHERE Status = true ORDER BY Id LIMIT $limit OFFSET $offset";

        $result = $this->_DB->fetchTable($query, true, '');
        if($result==FALSE){
            $this->errMsg = 'No se puede obtener la información de los Clientes - '.$this->_DB->errMsg;
            return array();
        }
        return $result;
    }

    /**
     * Procedimiento para obtener la información de un cliente por Id
     * 
     * @return  result    Información del Cliente dentro de un array
     */
    function getClienteById($IdCliente){
        $IdCliente = $this->crypt($IdCliente, 'd');//Desencriptamos el Id del Cliente
        $query = "SELECT Id, Cliente, Descripcion FROM tblClientes WHERE Id = ? AND Status = ?";

        $result=$this->_DB->getFirstRowQuery($query, true, array("$IdCliente", true));

        if($result==FALSE){
            $this->errMsg = 'No se puede obtener la información del Cliente - '.$this->_DB->errMsg;
            return null;
        }
        return $result;
    }


    /**
     * Procedimiento para agregar un nuevo Cliente a la base de datos de call_center.
     * 
     * @param   array   $ClienteInfo  Información del cliente con las posiciones:
     *                  0   =>  Nombre del cliente a crear
     *                  1   =>  Descripción del Cliente
     *                  2   =>  Id del cliente (Como es nuevo registro el valor es NULL)
     * 
     * @return  bool    VERDADERO si se inserta correctamente el Cliente, FALSO si no.
     */
    function guardarNuevoCliente($ClienteInfo){
        if (!is_array($ClienteInfo) || count($ClienteInfo) < 2) {
            $this->errMsg = 'Invalid client data';
            return FALSE;
        }

        $tupla = $this->_DB->getFirstRowQuery('SELECT COUNT(*) FROM tblClientes WHERE Cliente = ? AND Status = ?', FALSE, array($ClienteInfo[0], true));
        if ($tupla[0] > 0) {
            $this->errMsg = _tr('El Cliente ya esta registrado');
            return FALSE;
        }
        

        // Guardar en la base de datos
        $sPeticionSQL = 'INSERT INTO tblClientes (Cliente, Descripcion, FechaAlta, Status) VALUES (?, ?, ?, ?)';
        $paramSQL = array($ClienteInfo[0], $ClienteInfo[1], date('Y-m-d H:i:s'), true);
        
        $this->_DB->genQuery("SET AUTOCOMMIT = 0");
        $result = $this->_DB->genQuery($sPeticionSQL, $paramSQL);
        if (!$result) {
            $this->errMsg = 'Error al registrar el Cliente - '.$this->_DB->errMsg;
            $this->_DB->genQuery("ROLLBACK");
            $this->_DB->genQuery("SET AUTOCOMMIT = 1");
            return FALSE;
        }

        $this->_DB->genQuery("SET AUTOCOMMIT = 1");
        return TRUE; 
    }

    /**
     * Procedimiento para actualizar un Cliente en la base de datos de call_center.
     * 
     * @param   array   $ClienteInfo  Información del cliente con las posiciones:
     *                  0   =>  Nombre del cliente
     *                  1   =>  Descripción del Cliente
     *                  2   =>  Id del cliente encriptado
     * 
     * @return  bool    VERDADERO si se actualiza correctamente el cliente, FALSO si no.
     */
    function guardarCambiosCliente($ClienteInfo){
        if (!is_array($ClienteInfo) || count($ClienteInfo) < 3) {
            $this->errMsg = 'Invalid client data';
            return FALSE;
        }

        $IdCliente = $this->crypt($ClienteInfo[2], 'd'); //Desencriptamos el Id del Cliente
        $tupla = $this->_DB->getFirstRowQuery('SELECT COUNT(*) FROM tblClientes WHERE Id = ? AND Status = ?', FALSE, array($IdCliente, true));
        if ($tupla[0] <= 0) {
            $this->errMsg = _tr('El cliente no existe');
            return FALSE;
        }
        
        // Actualizar en la base de datos
        $sPeticionSQL = 'UPDATE tblClientes SET Cliente = ?, Descripcion = ?, FechaModificacion = ?, Status = ? WHERE Id = ?';
        $paramSQL = array($ClienteInfo[0], $ClienteInfo[1], date('Y-m-d H:i:s'), true, $IdCliente);
        
        $this->_DB->genQuery("SET AUTOCOMMIT = 0");
        $result = $this->_DB->genQuery($sPeticionSQL, $paramSQL);
        if (!$result) {
            $this->errMsg = 'Error al actualizar el Cliente - '.$this->_DB->errMsg;
            $this->_DB->genQuery("ROLLBACK");
            $this->_DB->genQuery("SET AUTOCOMMIT = 1");
            return FALSE;
        }

        $this->_DB->genQuery("SET AUTOCOMMIT = 1");
        return TRUE; 
    }


    /**
     * Procedimiento para eliminar un Cliente en la base de datos de call_center.
     * 
     * @param   array   $IdCliente  Id del cliente a eliminar (encriptado)
     * 
     * @return  bool    VERDADERO si se elimina correctamente el cliente, FALSO si no.
     */
    function eliminarCliente($IdCliente){
        $IdCliente = $this->crypt($IdCliente, 'd'); //Desencriptamos el Id del Cliente
        $sPeticionSQL = 'UPDATE tblClientes SET Status = ? WHERE Id = ?';
        $paramSQL = array(false, $IdCliente);
        $this->_DB->genQuery("SET AUTOCOMMIT = 0");
        $result = $this->_DB->genQuery($sPeticionSQL, $paramSQL);
        if (!$result) {
            $this->errMsg = $this->_DB->errMsg;
            $this->_DB->genQuery("ROLLBACK");
            $this->_DB->genQuery("SET AUTOCOMMIT = 1");
            return FALSE;
        }
        $this->_DB->genQuery("SET AUTOCOMMIT = 1");
        return TRUE; 
    }

    /**
     * Procedimiento para encriptar y desencriptar el IdCliente.
     * 
     * @param   $IdCliente   Id del cliente
     * 
     * @param   $action   método a utilziar, e => "encriptar", d => "desencriptar" 
     * 
     * @return  output    Retorna el valor pasado por $IdCliente encriptado o desencriptado segun el $action.
     */
    function crypt($IdCliente, $action = 'e') {
        $secret_key = 'xfcbtred';
        $secret_iv = 'xfcbtred';
        $output = false;
        $encrypt_method = "AES-256-CBC";
        $key = hash( 'sha256', $secret_key );
        $iv = substr( hash( 'sha256', $secret_iv ), 0, 16 );
     
        if($action == 'e') {
            $output = base64_encode(openssl_encrypt($IdCliente, $encrypt_method, $key, 0, $iv));
        }
        else if($action == 'd'){
            $output = openssl_decrypt(base64_decode($IdCliente), $encrypt_method, $key, 0, $iv);
        }
     
        return $output;
    }


}
