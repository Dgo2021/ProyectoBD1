import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Observable } from 'rxjs';
import { catchError } from 'rxjs/operators';

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
  actualizarService(area:any){
    var httpOptions = {
      headers: new HttpHeaders({
        'Content-Type':'application/json'
      })
    }
    return this.http.post<any>(this.URL+'/area/grabar',area, httpOptions)
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
 

}
