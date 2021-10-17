import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { Departamento } from '../models/Departamento.interface';

@Injectable({
  providedIn: 'root'
})
export class DepartamentoService {
  private URL = 'http://localhost:8080/departamento';

  constructor(private http:HttpClient) { }

  getAll():Observable<Departamento[]>{
    return this.http.get<Departamento[]>(this.URL+'/all');
  }
  
  getById(Id:number){
    return this.http.get<Departamento>(this.URL+'/' + Id);
  }
}
