import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Agenda_Estado } from '../models/Agenda_Estado.interface';
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class AgendaEstadoService {

  private URL = 'http://localhost:8080/agendaestado';
  constructor(private http:HttpClient) { }

  getAll():Observable<Agenda_Estado[]>{
    return this.http.get<Agenda_Estado[]>(this.URL+'/all');
  }
}
