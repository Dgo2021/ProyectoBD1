import { Component, OnInit } from '@angular/core';
import { AreaService } from '../service/area.service';

@Component({
  selector: 'app-editar-empleado',
  templateUrl: './editar-empleado.component.html',
  styleUrls: ['./editar-empleado.component.css']
})
export class EditarEmpleadoComponent implements OnInit {
  empleado:any = {}; 

  constructor(private areaService: AreaService) {
    
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
    alert("esto no funciona... aun!!")
  }
  aviso(perona:any){
    console.log(perona)
  }

}
