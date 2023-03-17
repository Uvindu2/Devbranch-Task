import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { SidebarComponent } from './sidebar/sidebar.component';
import { LoginComponent } from './Pages/login/login.component';
import { RegisterUserComponent } from './Pages/register-user/register-user.component';
import { UpdateUserComponent } from './Pages/update-user/update-user.component';
import { ViewAllUsersComponent } from './Pages/view-all-users/view-all-users.component';
import { ViewProfileComponent } from './Pages/view-profile/view-profile.component';


const routes: Routes = [
  { path: 'sidebar', component: SidebarComponent },
  { path: '', component: LoginComponent },
  { path: 'view-profile', component: ViewProfileComponent },
  { path: 'view-users', component: ViewAllUsersComponent },
  { path: 'update-users/:id', component: UpdateUserComponent },
  { path: 'register', component: RegisterUserComponent },








];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
