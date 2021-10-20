import { Component, OnInit } from '@angular/core';
import { AreaService } from '../service/area.service';
import { Empleado } from '../models/Empleado.interface';
import { Persona } from '../models/Persona.interface';
import { PersonaService } from '../service/persona.service';

@Component({
  selector: 'app-lista-personas',
  templateUrl: './lista-personas.component.html',
  styleUrls: ['./lista-personas.component.css']
})
export class ListaPersonasComponent implements OnInit {

  empleados: any = [];
  personas: any = [];
  empleado: any = {};
  empleadosCompleto: any = [];
  empleadoNuevo:Empleado = {} as Empleado;
  personaNueva:Persona = {} as Persona;
  nuevo:boolean = false;
  

  constructor(private areaService: AreaService, private personaService: PersonaService) {
    this.areaService.llenarEmpleados().subscribe(req => this.mostrarEmpleados(req));
    
    


  }

  ngOnInit(): void {
  }

  mostrarEmpleados(req: any) {
    this.empleados = req;
    console.log(this.empleados);
  }
  editarEmpleado(empleado:any){
    console.log(empleado);
    localStorage.setItem('empleado',JSON.stringify(empleado));
    location.href='/editarEmpleado';
  }
  agregarEmpleado(){
    this.nuevo =! this.nuevo;
  }
  grabarEmpleado(persona:any, empleado:any){
    empleado.persona = persona;
    console.log(empleado);
    this.personaService.buscarPersona(empleado.persona.identificacion).subscribe(req => this.mostrar(req))

  }
  mostrar(req:any){
    console.log(req);
  }


}
