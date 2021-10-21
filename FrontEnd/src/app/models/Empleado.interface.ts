import { Persona } from "./Persona.interface";

export interface Empleado{
    idempleado:number;
    idclinica:number;
    idarea:number;
    idrol:number;
    contrasenia:string;
    email:string;
    persona:Persona;
}