import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Agenda } from '../models/Agenda.interface';
import { formatDate } from '@angular/common';
import { HttpHeaders } from '@angular/common/http';

@Injectable({
  providedIn: 'root'
})
export class AgendaService {

  private URL = 'http://localhost:8080/agenda';
  constructor(private http:HttpClient) { }

  getAgendaByFechaIdClinicaIdArea(fecha:Date, idclinica:number, idarea:number){
    return this.http.get<Agenda[]>(this.URL+
      '?fecha='+formatDate(fecha, 'MM/dd/yyyy','en')
      +"&idclinica="+idclinica+"&idarea="+idarea);
  }

  grabar(agenda:Agenda){
    var httpOptions = {
      headers: new HttpHeaders({
        'Content-Type':'application/json'
      })
    }
    return this.http.post<any>(this.URL+'/grabar',agenda,httpOptions);
  };
}
