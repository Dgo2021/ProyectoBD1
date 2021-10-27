import { Component, OnInit } from '@angular/core';
import { AreaService } from '../service/area.service';
import { Empleado } from '../models/Empleado.interface';
import { EmpleadoService } from '../service/empleado.service';
import { Persona } from '../models/Persona.interface';
import { PersonaService } from '../service/persona.service';
import { RolService } from '../service/rol.service';
import { ClinicaService } from '../service/clinica.service';
import { Cliente } from '../models/Cliente.interface';
import { ClienteService } from '../service/cliente.service';

@Component({
  selector: 'app-lista-personas',
  templateUrl: './lista-personas.component.html',
  styleUrls: ['./lista-personas.component.css']
})
export class ListaPersonasComponent implements OnInit {

  people: boolean = false;

  empleados: any = [];
  areas: any = [];
  roles: any = [];
  clientes: any = [];
  personas: any = [];
  clinicas: any = [];
  empleado: any = {};
  empleadosCompleto: any = [];
  empleadoNuevo: Empleado = {} as Empleado;
  personaNueva: Persona = {} as Persona;
  cliente: Cliente = {} as Cliente;
  nuevo: boolean = false;
  employee: boolean = false;


  constructor(private areaService: AreaService, private personaService: PersonaService, private rolService: RolService,
    private empleadoService: EmpleadoService, private clinicaService: ClinicaService, private clienteService: ClienteService) {
    this.areaService.llenarEmpleados().subscribe(req => this.mostrarEmpleados(req));
    this.personaService.listaPersonas().subscribe(req => this.listaPersonas(req));
    this.areaService.llenarAreas().subscribe(req => this.listaAreas(req));
    this.rolService.listaRoles().subscribe(req => this.listaRoles(req));
    this.clinicaService.getAll().subscribe(req => this.listaClinicas(req))
    this.clienteService.getAll().subscribe(req => this.listaClientes(req));



  }

  ngOnInit(): void {
  }
  personaCliente(persona: any) {
    let num = 0;
    this.clientes.forEach((element: any) => {
      if(element.persona.idpersona === persona.idpersona){
        alert("usuario ya existe")
      }
      
    });
    
    /*this.clientes.forEach((element: any) => {
      if (element.persona.idpersona === pep.idpersona) {
        alert('Este usuario ya es un cliente activo!')
        this.clienteService.getAll().subscribe(req => this.listaClientes(req));
        //location.href = "/personas"
      } else {
        this.cliente.idcliente = 0;
        this.cliente.persona = pep;
        console.log(this.cliente)
        this.clienteService.grabarCliente(this.cliente).subscribe(req => this.clienteGrabado());
      }
    })*/
  }
  clienteGrabado() {
    alert('Cliente Grabado!');
    this.clienteService.getAll().subscribe(req => this.listaClientes(req));
    //location.href = '/personas';
  }
  grabarEmpleado() {
    if (this.empleadoNuevo.idempleado === null) {
      this.empleadoNuevo.idempleado = 0;
    }
    console.log(this.empleadoNuevo)
    this.empleadoService.grabarEmpleado(this.empleadoNuevo).subscribe(req => this.empleadoGrabado());
  }
  empleadoGrabado() {
    alert("Empleado Grabado");
    this.employee = !this.employee;
    location.href = "/personas"
  }
  personaEmpleado(persona: any) {
    this.empleadoNuevo.persona = persona;
    console.log(this.empleadoNuevo);

    this.empleados.forEach((element: any) => {
      if (this.empleadoNuevo.persona.idpersona === element.persona.idpersona) {
        this.empleadoNuevo = element;
        this.employee = !this.employee;
      } else {
        this.employee = !this.employee;
      }
    });

  }
  cancelarEmpleado() {
    this.employee = !this.employee;
    this.empleadoNuevo = {} as Empleado;
  }
  listaClinicas(req: any) {
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
  listaClientes(req: any) {
    this.clientes = req;
  }


}
