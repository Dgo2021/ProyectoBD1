import { Agenda_Estado } from "./Agenda_Estado.interface";
import { Cliente } from "./Cliente.interface";
import { Empleado } from "./Empleado.interface";
import { Servicio } from "./Servicio.interface";

export interface Agenda{
    idagenda:number;
    idclinica:number;
    idarea:number;
    horaingreso:number;
    fecha:Date;
    empleado:Empleado;
    cliente:Cliente;
    servicio:Servicio;
    estado:Agenda_Estado;
}