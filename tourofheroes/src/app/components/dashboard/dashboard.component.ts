import { Component, OnInit } from '@angular/core';
import { Heroe, HeroesService } from 'src/app/services/heroes.service';

@Component({
  selector: 'app-dashboard',
  templateUrl: './dashboard.component.html',
  styleUrls: ['./dashboard.component.css']
})
export class DashboardComponent implements OnInit {

  heroes: Array<Heroe> = []
  constructor(private servicioHeroes: HeroesService) { 
    this.heroes = this.servicioHeroes.getHeroes();
  }

  ngOnInit(): void {
  }

}
