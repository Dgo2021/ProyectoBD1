import { Component, OnInit } from '@angular/core';
import { ClinicaService } from '../service/clinica.service';
import { Clinica } from '../models/Clinica.interface';
import { Departamento } from '../models/Departamento.interface';
import { DepartamentoService } from '../service/departamento.service';
@Component({
  selector: 'app-clinica',
  templateUrl: './clinica.component.html',
  styleUrls: ['./clinica.component.css']
})
export class ClinicaComponent implements OnInit {

  deptos:Departamento[]=[];
  selectedValue:any=1;
  clinicas:Clinica[]=[];
  clinica:Clinica = {} as Clinica;

  constructor(private clinicaService:ClinicaService, private deptoService:DepartamentoService) { }
    
  ngOnInit(): void {
    this.deptoService.getAll().subscribe(data => this.getDepartamentos(data));
    
  }

  getClinicas(data:Clinica[]){
   this.clinicas=data;
  }

  getDepartamentos(data:Departamento[]){
    this.deptos=data;
    this.clinicaService.getAll().subscribe(data => this.getClinicas(data));
  }

  getDepto(id:any):string{
    return (id>0)?this.deptos.filter(x => x.iddepartamento===id)[0].departamento:'';
  }


  EditarButton(clinica:Clinica){
    this.clinica=clinica;
    this.selectedValue=this.clinica.iddepartamento;
  }

  grabar(){
    this.clinica.iddepartamento=this.selectedValue;
    this.clinicaService.grabar(this.clinica).subscribe(data => this.finalizar(data));
  }

  
  finalizar(data:any){
    this.deptoService.getAll().subscribe(data => this.getDepartamentos(data));
    this.cancelar();
  }

  cancelar(){
    this.clinica={} as Clinica;
    this.selectedValue=1;
  }

  selectValue(ev:any){
    this.selectedValue=ev;
 }

}
