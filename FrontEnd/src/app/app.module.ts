import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { FormsModule } from '@angular/forms'
import { HttpClientModule, HTTP_INTERCEPTORS } from '@angular/common/http'

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { LoginComponent } from './login/login.component';
import { AreaComponent } from './area/area.component';
import { ListaPersonasComponent } from './lista-personas/lista-personas.component';
import { FacturaComponent } from './factura/factura.component';
import { EditarEmpleadoComponent } from './editar-empleado/editar-empleado.component';
import { ClinicaComponent } from './clinica/clinica.component';
import { AgendaComponent } from './agenda/agenda.component';


@NgModule({
  declarations: [
    AppComponent,
    LoginComponent,
    AreaComponent,
    ListaPersonasComponent,
    FacturaComponent,
    EditarEmpleadoComponent,
    ClinicaComponent,
    AgendaComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    FormsModule,
    HttpClientModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
