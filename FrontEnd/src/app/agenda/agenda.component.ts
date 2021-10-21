import { Component, OnInit } from '@angular/core';
import { ClinicaService } from '../service/clinica.service';
import { Clinica } from '../models/Clinica.interface';
import { Area } from '../models/Area.interface';
import { AreaService } from '../service/area.service';
import { Empleado } from '../models/Empleado.interface';
import { EmpleadoService } from '../service/empleado.service';
import { formatDate } from '@angular/common';
import { AgendaService } from '../service/agenda.service';
import { Agenda } from '../models/Agenda.interface';
import { ClienteService } from '../service/cliente.service';
import { Cliente } from '../models/Cliente.interface';
import { Servicio } from '../models/Servicio.interface';
import { ServicioService } from '../service/servicio.service';
import { AgendaEstadoService } from '../service/agenda-estado.service';
import { Agenda_Estado } from '../models/Agenda_Estado.interface';

class Cita{
  empleado:Empleado;
  citas:Agenda[]=[];

  constructor (empleado:Empleado){
    this.empleado=empleado;
  }
}

@Component({
  selector: 'app-agenda',
  templateUrl: './agenda.component.html',
  styleUrls: ['./agenda.component.css']
})

export class AgendaComponent implements OnInit {

  
  clinicasSelectedValue:any=0;
  clientesSelectedValue:any=0;
  areasSelectedValue:any=0;
  serviciosSelectedValue:any=0;

  clinicas:Clinica[] = [];
  areas:Area[]=[];
  citas:Cita[]=[];
  empleados:Empleado[]=[];
  clientes:Cliente[]=[];
  servicios:Servicio[]=[];
  estados:Agenda_Estado[]=[];

  fecha:Date=new Date;
  showCitas=false;
  showIngreso=false;

  empleado:any;
  empleadoText:string="";
  

  
  constructor(private clinicaService:ClinicaService, private areaService:AreaService,
    private empleadoService:EmpleadoService, private agendaServices:AgendaService,
    private clienteService:ClienteService, private servicioService:ServicioService,
    private agendaEstadoService:AgendaEstadoService) { 
      var today =  new Date();
    }

  ngOnInit(): void {
    this.clinicaService.getAll().subscribe(data => this.clinicas=data);
    this.clienteService.getAll().subscribe(data => this.clientes=data);
    this.agendaEstadoService.getAll().subscribe(data => this.estados=data);
  }
  
  clinicaSelectValue(ev:any): void{
    this.clinicasSelectedValue=ev;
    this.areaService.getAreasByClinicaId(this.clinicasSelectedValue).subscribe(data => this.areas=data);
  }

  areasSelectValue(ev:any){
    this.areasSelectedValue=ev;
  }

  clientesSelectValue(ev:any){
    this.clientesSelectedValue=ev;
  }

  serviciosSelectValue(ev:any){
    this.serviciosSelectedValue=ev;
  }

  buscarAgenda(){
    this.agendaServices.getAgendaByFechaIdClinicaIdArea(this.fecha,this.clinicasSelectedValue, this.areasSelectedValue)
      .subscribe(data => this.getAgenda(data));
  }

  getAgenda(data:Agenda[]){
    this.citas=[];
    this.getEmpleados(data);
    this.empleados.forEach(empleado => {
      var cita = new Cita(empleado);
      this.citas.push(cita);
      data.filter( value => value.empleado.idempleado===empleado.idempleado)
        .forEach( agenda => {
          cita.citas.push(agenda);
      });
    });
    this.showCitas=true;
  }

  getEmpleados(data:Agenda[]){
    data.forEach( value =>{
      if (this.empleados.filter ( empleado => empleado.idempleado===value.empleado.idempleado).length==0)
        this.empleados.push(value.empleado);
    });
  }

  counter(i: number) {
    return new Array(i);
  }

  agregarCita(empleado:Empleado){
    this.empleado=empleado;
    this.empleadoText=empleado.persona.nombres+" "+empleado.persona.apellidos;
    this.servicioService.getByIdClinicaAndIdArea(this.clinicasSelectedValue, this.areasSelectedValue)
      .subscribe(data => this.servicios=data);
    this.showIngreso=true;
    this.showCitas=false;
  }

  guardarCita(){
    var agenda = {} as Agenda;
    agenda.idagenda=0;
    agenda.fecha=this.fecha;
    agenda.idclinica=this.clinicas.filter(c => c.idclinica===this.clinicasSelectedValue)[0].idclinica;
    agenda.idarea=this.areas.filter(a => a.idarea===this.areasSelectedValue)[0].idarea;
    agenda.empleado=this.empleado;
    agenda.cliente=this.clientes.filter(c => c.idcliente===this.clientesSelectedValue)[0];
    agenda.servicio=this.servicios.filter(s => s.idservicio===this.serviciosSelectedValue)[0];
    agenda.estado=this.estados[0];
    agenda.hora_ingreso=9;
    console.log(JSON.stringify(agenda));
    this.agendaServices.grabar(agenda).subscribe(data => console.log(data));
  }
 
}

