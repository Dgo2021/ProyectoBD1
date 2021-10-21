import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Observable } from 'rxjs';
import { Empleado } from '../models/Empleado.interface';
import { catchError } from 'rxjs/operators';

@Injectable({
  providedIn: 'root'
})
export class EmpleadoService {

  private URL = 'http://localhost:8080/empleado'

  constructor(private http: HttpClient) { }

  getByIdClinicaAndIdArea(idclinica:number, idarea:number){
    return this.http.get<Empleado[]>(this.URL+"?idclinica="+idclinica+"&idarea="+idarea);
  }
}
