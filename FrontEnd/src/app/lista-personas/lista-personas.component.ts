import { Component, OnInit } from '@angular/core';
import { AreaService } from '../service/area.service';
import { Empleado } from '../models/Empleado.interface';
import { EmpleadoService } from '../service/empleado.service';
import { Persona } from '../models/Persona.interface';
import { PersonaService } from '../service/persona.service';
import { RolService } from '../service/rol.service';
import { ClinicaService } from '../service/clinica.service';

@Component({
  selector: 'app-lista-personas',
  templateUrl: './lista-personas.component.html',
  styleUrls: ['./lista-personas.component.css']
})
export class ListaPersonasComponent implements OnInit {

  empleados: any = [];
  areas: any = [];
  roles: any = [];
  personas: any = [];
  clinicas: any = [];
  empleado: any = {};
  empleadosCompleto: any = [];
  empleadoNuevo: Empleado = {} as Empleado;
  personaNueva: Persona = {} as Persona;
  nuevo: boolean = false;
  employee: boolean = false;


  constructor(private areaService: AreaService, private personaService: PersonaService, private rolService: RolService,
     private empleadoService: EmpleadoService, private clinicaService: ClinicaService) {
    this.areaService.llenarEmpleados().subscribe(req => this.mostrarEmpleados(req));
    this.personaService.listaPersonas().subscribe(req => this.listaPersonas(req));
    this.areaService.llenarAreas().subscribe(req => this.listaAreas(req));
    this.rolService.listaRoles().subscribe(req => this.listaRoles(req));
    this.clinicaService.getAll().subscribe(req => this.listaClinicas(req))



  }

  ngOnInit(): void {
  }
  grabarEmpleado() {
    //this.empleadoService.grabarEmpleado(this.empleadoNuevo).subscribe(req => this.empleadoGrabado());
    this.empleadoNuevo.idempleado = 0;
    console.log(this.empleadoNuevo)
  }
  empleadoGrabado() {
    alert("Empleado Grabado");
    location.href = "/personas"
  }
  personaEmpleado(persona: any) {
    this.empleadoNuevo.persona = persona;
    console.log(this.empleadoNuevo);
    this.employee = !this.employee;
  }
  cancelarEmpleado() {
    this.employee = !this.employee;
  }
  listaClinicas(req:any){
    this.clinicas = req;
  }
  listaRoles(req: any) {
    this.roles = req;
    console.log(this.roles)
  }
  listaAreas(areas: any) {
    this.areas = areas;
  }
  grabarEditar() {
    this.nuevo = !this.nuevo;
    this.personaNueva = {} as Persona;
  }

  mostrarEmpleados(req: any) {
    this.empleados = req;
    console.log(this.empleados);
  }

  listaPersonas(req: any) {
    this.personas = req;
    console.log(this.personas);
  }

  editarPersona(persona: any) {
    this.nuevo = !this.nuevo;
    this.personaNueva = persona;
  }


}
