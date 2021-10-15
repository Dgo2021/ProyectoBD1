import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-editar-empleado',
  templateUrl: './editar-empleado.component.html',
  styleUrls: ['./editar-empleado.component.css']
})
export class EditarEmpleadoComponent implements OnInit {
  empleado:any = {}; 

  constructor() {
    
   }

  ngOnInit(): void {
    this.empleado = JSON.parse(localStorage.getItem("empleado") || '{}');
    console.log(this.empleado)
  }

}
