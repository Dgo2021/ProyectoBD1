import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Servicio } from '../models/Servicio.interface';

@Injectable({
  providedIn: 'root'
})
export class ServicioService {
  
  private URL = 'http://localhost:8080/servicio'

  constructor(private http: HttpClient) { }

  getByIdClinicaAndIdArea(idclinica:number, idarea:number){
    return this.http.get<Servicio[]>(this.URL+"?idclinica="+idclinica+"&idarea="+idarea);
  }

}
