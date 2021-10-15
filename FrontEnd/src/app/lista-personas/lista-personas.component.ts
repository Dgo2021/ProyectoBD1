import { Component, OnInit } from '@angular/core';
import { AreaService } from '../service/area.service';

@Component({
  selector: 'app-lista-personas',
  templateUrl: './lista-personas.component.html',
  styleUrls: ['./lista-personas.component.css']
})
export class ListaPersonasComponent implements OnInit {

  empleados: any = [];
  personas: any = [];
  empleado: any = {idempleado: 0,idclinica: 0,email:''};
  empleadosCompleto: any = [];

  constructor(private areaService: AreaService) {
    this.areaService.llenarEmpleados().subscribe(req => this.mostrarEmpleados(req));
    this.areaService.llenarPersona().subscribe(req => this.mostrarPersona(req));


  }

  ngOnInit(): void {
  }

  mostrarEmpleados(req: any) {
    this.empleados = req;
    this.empleados.forEach((element: any) => {
      this.empleado.idempleado = element.idempleado
      this.empleado.idclinica = element.idclinica
      this.empleado.email = element.email
      this.areaService.buscarPersona(element.idpersona)
      .subscribe(req => this.datosEmpleado(req))
    })
    
  }
  mostrarPersona(req: any): void {
    this.personas = req;
    console.log(this.personas);
  }
  datosEmpleado(req: any) {
    req.idempleado = this.empleado.idempleado;
    req.idclinica = this.empleado.idclinica;
    req.email = this.empleado.email;
    this.empleado = req;
    console.log(this.empleado)
    this.empleadosCompleto.push(this.empleado);

  }


}
