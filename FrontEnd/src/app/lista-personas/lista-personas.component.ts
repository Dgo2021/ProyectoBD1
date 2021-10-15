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
  empleado: any = {};
  empleadosCompleto: any = [];

  constructor(private areaService: AreaService) {
    this.areaService.llenarEmpleados().subscribe(req => this.mostrarEmpleados(req));
    


  }

  ngOnInit(): void {
  }

  mostrarEmpleados(req: any) {
    this.empleados = req;
    console.log(this.empleados);
    
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
  modificarEmpleado(empleado:any){
    localStorage.setItem('empleado',empleado);
    let emp = localStorage.getItem('empleado')
    //let parse = JSON.parse(emp)
    console.log()
  }


}
