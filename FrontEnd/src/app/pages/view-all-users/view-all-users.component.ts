import { Component, OnInit } from '@angular/core';

import { MatTableDataSource } from '@angular/material/table';

import { Router } from '@angular/router';
import { Login } from 'src/app/models/login.model';
import { User } from 'src/app/models/user.model';
import { LoginService } from 'src/app/services/login.service';
import { UserService } from 'src/app/services/user.service';


@Component({
  selector: 'app-view-all-users',
  templateUrl: './view-all-users.component.html',
  styleUrls: ['./view-all-users.component.scss']
})
export class ViewAllUsersComponent implements OnInit{
  login=new Login();
  user: User[] = [];
  // User=new User();
  public displayedColumns =  ['name','email','createdDate','roles','action'];
  public dataSource :any= new MatTableDataSource<User>();
  session: any | null;

  constructor(private userService:UserService,private loginService:LoginService,private router:Router){}

  /**
   * Set the paginator after the view init since this component will
   * be able to query its view for the initialized paginator.
   */
  ngOnInit(){

    this.session=sessionStorage.getItem('email');
    this.login.email=this.session.replaceAll('"', '');
    
this.getAllUsers();
  }

  getAllUsers() {
    this.userService.getUsers().subscribe((res) => {
      this.dataSource.data = res

    })
  }
  deleteUser(id:any){

      this.userService.deleteById(id).subscribe((res)=>{
        window.location.reload();
        alert("Deleted Successfully");
      })
  }

  
  logOut(){
    this.loginService.logOut().subscribe(()=>{
      alert('Log out');
      const token=sessionStorage.removeItem('token');
      console.log(token);
    this.router.navigate(['']);     
    })
  }
}
