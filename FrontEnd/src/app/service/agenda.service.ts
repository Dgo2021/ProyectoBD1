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

  getAgendaByFechaIdClinicaIdArea(fecha:any, idclinica:number, idarea:number){
    let anio=fecha.substring(0,4);
    let mes=fecha.substring(5,7);
    let dia=parseInt(fecha.substring(8,11));
    
    let fecha1=mes+'/'+dia+'/'+anio;
    let fecha2=mes+'/'+(dia+1)+'/'+anio;
    //console.log(fecha1+' '+fecha2);
    return this.http.get<Agenda[]>(this.URL+
      '?fecha1='+fecha1
      +'&fecha2='+fecha2
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

