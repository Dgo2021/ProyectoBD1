import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Cliente } from '../models/Cliente.interface';
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class ClienteService {

  private URL = 'http://localhost:8080/cliente';
  constructor(private http:HttpClient) { }

  getAll():Observable<Cliente[]>{
    return this.http.get<Cliente[]>(this.URL+'/all');
  }

}
