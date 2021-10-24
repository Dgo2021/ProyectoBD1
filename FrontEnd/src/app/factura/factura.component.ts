import { Component, OnInit } from '@angular/core';
import { Empleado } from '../models/Empleado.interface';
import { EmpleadoService } from '../service/empleado.service';

@Component({
  selector: 'app-factura',
  templateUrl: './factura.component.html',
  styleUrls: ['./factura.component.css']
})
export class FacturaComponent implements OnInit {

  empleados: any = [];
  emp:Empleado[]= [];
  selectedValue:any=1;
  clientes: any = [];
  personas: any = [];
  clinicas: any = [];
  

  constructor(private empleadoService: EmpleadoService) {
    
   }

  ngOnInit(): void {
  }

  mostrarEmpleados(req: any) {
    this.empleados = req;
    console.log(this.empleados);
  }

  getEmp(data:Empleado[]){
    this.emp=data;
  }

  selectValue(ev:any){
    this.selectedValue=ev;
 }

 listaPersonas(req: any) {
  this.personas = req;
  console.log(this.personas);
}


}
