import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';

import { LoginComponent } from './login/login.component';
import { AreaComponent } from './area/area.component'; 
import { ListaPersonasComponent } from './lista-personas/lista-personas.component';
import { EditarEmpleadoComponent } from './editar-empleado/editar-empleado.component';
import { FacturaComponent } from './factura/factura.component';
import { ClinicaComponent } from './clinica/clinica.component';
import { AgendaComponent } from './agenda/agenda.component';

const routes: Routes = [{
  path: 'login',
  component: LoginComponent
},
{
  path: 'area',
  component: AreaComponent
},
{
  path: 'personas',
  component: ListaPersonasComponent
},
{
  path: 'factura',
  component: FacturaComponent
},
{
  path: 'editarEmpleado',
  component: EditarEmpleadoComponent
},
{
  path: 'clinica', component:ClinicaComponent
},
{
  path: 'agenda', component:AgendaComponent
}
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }