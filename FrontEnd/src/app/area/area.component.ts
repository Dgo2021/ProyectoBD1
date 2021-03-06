import { Component, OnInit } from '@angular/core';
import { AreaService } from '../service/area.service';
import { ActivationStart, Router } from '@angular/router';
import { AppComponent } from '../app.component';

@Component({
  selector: 'app-area',
  templateUrl: './area.component.html',
  styleUrls: ['./area.component.css']
})
export class AreaComponent implements OnInit {
  areas: any = [];
  elemento = {
    idarea: '',
    area: ''
  };
  editar: boolean = false;

  constructor(private areaService: AreaService, private router: Router, private appComponent: AppComponent) {
    if (localStorage.getItem('user') != null) {
      let usuario = JSON.parse(localStorage.getItem('user') || '{}');
      if (usuario.idrol != 1) {
        alert('No tiene acceso para este sitio');
        location.href = '/';
      } else {
        this.appComponent.usuarioLogueado = true;
      }
    }else{
      alert('No tiene acceso para este sitio');
      location.href='/';
    }
    this.areaService.llenarAreas().subscribe(res => this.lala(res));

  }

  ngOnInit(): void {
  }

  lala(res: any) {
    this.areas = res;

  }
  editarVariable() {
    this.editar = !this.editar;
  }
  editarArea(area: any) {
    this.elemento.idarea = area.idarea;
    console.log(this.elemento.idarea + " " + this.elemento.area);
    this.areaService.actualizarService(this.elemento).subscribe(req => this.aviso(this.elemento));
    this.editar = !this.editar;

  }
  aviso(elemento: any) {
    alert("El area " + elemento.area + " se actualizo con exito!");
    location.href = "/area";
  }


}
