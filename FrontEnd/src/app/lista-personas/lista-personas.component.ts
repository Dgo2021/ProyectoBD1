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
import { AppComponent } from '../app.component';


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
    private empleadoService: EmpleadoService, private clinicaService: ClinicaService, private clienteService: ClienteService,
    private appComponent:AppComponent) {
    this.areaService.llenarEmpleados().subscribe(req => this.mostrarEmpleados(req));
    this.personaService.listaPersonas().subscribe(req => this.listaPersonas(req));
    this.areaService.llenarAreas().subscribe(req => this.listaAreas(req));
    this.rolService.listaRoles().subscribe(req => this.listaRoles(req));
    this.clinicaService.getAll().subscribe(req => this.listaClinicas(req))
    this.clienteService.getAll().subscribe(req => this.listaClientes(req));
    console.log(this.appComponent.usuarioLogueado);
    if (localStorage.getItem('user') != null) {
      let usuario = JSON.parse(localStorage.getItem('user') || '{}');
      if (usuario.idrol == 1) {
        this.appComponent.usuarioLogueado = true;
      } else {
        alert('No tiene acceso a este sitio');
        location.href='/'
      }
    }else{
      location.href='/';
    }



  }

  ngOnInit(): void {
  }
  nuevaPersona(persona:any){
    console.log(persona)
    this.personaService.grabarPersona(persona).subscribe(req => this.grabarPersona())
  }
  grabarPersona(){
    alert("Persona Actualizada");
    location.href='/personas';
  }

  fecha(fecha:any){
    let fechaNacimiento = fecha.toString();
    let fechaCorrecta = fechaNacimiento.split('T');
    //let date = fechaCorrecta[0].split('-')
    return fechaCorrecta[0]
  }

  personaCliente(persona: any) {
    let num = 0;
    let cliente:Cliente = {} as Cliente;
    cliente = this.clientes.find((element:any) => element.persona.idpersona === persona.idpersona)
    console.log(cliente)
    if(cliente != null){
      alert("Esta Persona ya es un cliente")
    }else{
      this.cliente.idcliente = 0;
        this.cliente.persona = persona;
        console.log(this.cliente)
        this.clienteService.grabarCliente(this.cliente).subscribe(req => this.clienteGrabado());
        location.href = "/personas";
    }
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
    this.empleadoNuevo = {} as Empleado;
    location.href = "/personas"
  }
  personaEmpleado(persona: any) {
    this.empleadoNuevo.persona = persona;
    console.log(this.empleadoNuevo);

    this.empleados.forEach((element: any) => {
      if (this.empleadoNuevo.persona.idpersona === element.persona.idpersona) {
        this.empleadoNuevo = element;
        this.employee = true;
        console.log(this.employee)
      } else {
        this.employee = true;
        console.log(this.employee)
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
    this.personaNueva.fecha_nacimiento = this.fecha(this.personaNueva.fecha_nacimiento);
    console.log(this.personaNueva.fecha_nacimiento)

  }
  listaClientes(req: any) {
    this.clientes = req;
  }


}
