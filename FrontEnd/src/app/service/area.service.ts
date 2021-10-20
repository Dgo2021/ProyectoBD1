import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Observable } from 'rxjs';
import { catchError } from 'rxjs/operators';
import { Area } from '../models/Area.interface';

@Injectable({
  providedIn: 'root'
})
export class AreaService {

  private URL = 'http://localhost:8080'
  

  constructor(private http: HttpClient) { 
    

  }
  llenarAreas():Observable<any>{
    return this.http.get<any>(this.URL +'/area/all').pipe(catchError(e => "error"));

  }

  getAreasByClinicaId(idclinica:number):Observable<Area[]>{
    return this.http.get<Area[]>(this.URL+'/area/clinica/'+idclinica);
  }

  actualizarService(area:any){
    var httpOptions = {
      headers: new HttpHeaders({
        'Content-Type':'application/json'
      })
    }
    return this.http.post<any>(this.URL+'/area/grabar',area, httpOptions)
  };
  actualizarPersona(persona:any){
    var httpOptions = {
      headers: new HttpHeaders({
        'Content-Type':'application/json'
      })
    }
    return this.http.post<any>(this.URL+'/persona/grabar',persona, httpOptions)
  };
  actualizarEmpleado(empleado:any){
    var httpOptions = {
      headers: new HttpHeaders({
        'Content-Type':'application/json'
      })
    }
    return this.http.post<any>(this.URL+'/empleado/grabar',empleado,httpOptions);
  };

  llenarEmpleados(){
    return this.http.get<any>(this.URL+'/empleado/all').pipe(catchError(e=>"error"));
  }
  llenarPersona(){
    return this.http.get<any>(this.URL+'/persona/all').pipe(catchError(e=>'error'));
  }
  buscarPersona(id:any){
    return this.http.get<any>(this.URL+'/persona/'+id).pipe(catchError(e=>'error'));
  }
  llenarClinicas(){
    return this.http.get<any>(this.URL+"/clinica/all").pipe(catchError(e =>'error'));
  }
 

}
