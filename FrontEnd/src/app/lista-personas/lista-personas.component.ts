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
  editarEmpleado(empleado:any){
    console.log(empleado);
    localStorage.setItem('empleado',JSON.stringify(empleado));
    location.href='/editarEmpleado';
  }
 


}
