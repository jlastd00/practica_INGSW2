/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package INSO2.peaje.EJB;

import INSO2.peaje.modelo.Vehiculo;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author juanra
 */
@Local
public interface VehiculoFacadeLocal {

    void create(Vehiculo vehiculo);

    void edit(Vehiculo vehiculo);

    void remove(Vehiculo vehiculo);

    Vehiculo find(Object id);

    List<Vehiculo> findAll();

    List<Vehiculo> findRange(int[] range);

    int count();
    
}
