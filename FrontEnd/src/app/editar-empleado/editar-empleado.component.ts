import { Component, OnInit } from '@angular/core';
import { Subscriber } from 'rxjs';
import { subscribeOn } from 'rxjs/operators';
import { AreaService } from '../service/area.service';

@Component({
  selector: 'app-editar-empleado',
  templateUrl: './editar-empleado.component.html',
  styleUrls: ['./editar-empleado.component.css']
})
export class EditarEmpleadoComponent implements OnInit {
  empleado:any = {}; 
  clinicas:any = [];
  

  constructor(private areaService: AreaService) {
    this.areaService.llenarClinicas().subscribe(req => this.llenarClinicas(req));
   }

  ngOnInit(): void {
    this.empleado = JSON.parse(localStorage.getItem("empleado") || '{}');
    console.log(this.empleado)
  }
  editarPersona(){
    console.log(JSON.stringify(this.empleado.persona))
    this.areaService.actualizarPersona(this.empleado.persona).subscribe(req =>this.aviso(this.empleado.persona))
    alert("Empleado Actualizado");
    location.href="/personas";
  }
  editarEmpleado(){
    this.areaService.actualizarEmpleado(this.empleado).subscribe(req => this.aviso(req));
    alert("Empleado Actualizado");
    location.href="/personas";
  };
  aviso(perona:any){
    console.log(perona)
  };
  llenarClinicas(req:any){
    this.clinicas = req;
  };

}
