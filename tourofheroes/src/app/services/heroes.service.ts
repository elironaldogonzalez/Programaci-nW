import { Injectable } from '@angular/core';

export interface Heroe{
  id: number,
  name: string
}

@Injectable({
  providedIn: 'root'
})
export class HeroesService {

  constructor() { }

  heroes: Heroe[] = [
    { id: 11, name: 'Dr Nice' },
      { id: 12, name: 'Narco' },
      { id: 13, name: 'Bombasto' },
      { id: 14, name: 'Celeritas' },
      { id: 15, name: 'Magneta' },
      { id: 16, name: 'RubberMan' },
      { id: 17, name: 'Dynama' },
      { id: 18, name: 'Dr IQ' },
      { id: 19, name: 'Magma' },
      { id: 20, name: 'Tornado' }
  ]

  getHeroes(){
    return this.heroes;
  }
}
