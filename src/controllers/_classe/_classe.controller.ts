import { Body, Controller, Delete, Get, Param, Patch, Post, ValidationPipe } from '@nestjs/common';
import { ClasseService } from './_classe.service';
import { Classe_DTO } from 'src/shared/dto/classe/classe.dto';

@Controller('classe')
export class ClasseController
{
    constructor( private readonly classeService : ClasseService ) {}
    
    @Get(":id")
    getOne(
        @Param("id", ) id : string
    ) : Promise<any>
    {
        try {
            return this.classeService.getOne(id)
        } catch (error) {
            console.log(error);
            return error
        }
    }

    @Get()
    getAll() : Promise<any>
    {
        try {
            return this.classeService.getAll()            
        } catch (error) {
            console.log(error);
            return error
        }
    }

    @Post()
    addClasse(
        @Body(ValidationPipe) newClasse : Classe_DTO
    ) : Promise<any>
    {
        try {
            return this.classeService.addClasse(newClasse)
        } catch (error) {
            return error            
        }
    }

    @Patch("/:id")
    updateClasse(
        @Param("id", ) idClasse : string,
        @Body(ValidationPipe) newClasse : Classe_DTO
    ) : Promise<any>
    {
        try {
            return this.classeService.updateClasse(idClasse, newClasse)
        } catch (error) {
            console.log(error);
            return error            
        }
    }

    @Delete("/:id")
    deleteClasse(
        @Param("id", ) idClasse : string,
    ) : Promise<any>
    {
        try {
            return this.classeService.deleteClasse(idClasse)
        } catch (error) {
            console.log(error);
            return error            
        }
    }
}
