import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { Clinica } from '../models/Clinica.interface';
import { Departamento } from '../models/Departamento.interface';

@Injectable({
  providedIn: 'root'
})
export class ClinicaService {
  private URL = 'http://localhost:8080/clinica';
  constructor(private http:HttpClient) { }

  getAll():Observable<Clinica[]>{
    return this.http.get<Clinica[]>(this.URL+'/all');
  }

  grabar(clinica:Clinica){
    var httpOptions = {
      headers: new HttpHeaders({
        'Content-Type':'application/json'
      })
    }
    return this.http.post<any>(this.URL+'/grabar',clinica,httpOptions);
  };

}
