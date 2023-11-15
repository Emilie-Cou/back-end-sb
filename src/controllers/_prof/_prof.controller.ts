import { Body, Controller, Delete, Get, Param, Patch, Post, ValidationPipe } from '@nestjs/common';
import { Prof_DTO } from 'src/shared/dto/prof/prof.dto';
import { ProfService } from './_prof.service';

@Controller('prof')
export class ProfController
{
    constructor( private readonly profService : ProfService ) {}
    
    @Get(":id")
    getOne(
        @Param("id", ) id : string
    ) : Promise<any>
    {
        try {
            return this.profService.getOne(id)
        } catch (error) {
            console.log(error);
            return error
        }
    }

    @Get()
    getAll() : Promise<any>
    {
        try {
            return this.profService.getAll()            
        } catch (error) {
            console.log(error);
            return error
        }
    }

    @Post()
    addProf(
        @Body(ValidationPipe) newProf : Prof_DTO
    ) : Promise<any>
    {
        try {
            return this.profService.addProf(newProf)
        } catch (error) {
            return error            
        }
    }

    @Patch("/:id")
    updateProf(
        @Param("id", ) idProf : string,
        @Body(ValidationPipe) newProf : Prof_DTO
    ) : Promise<any>
    {
        try {
            return this.profService.updateProf(idProf, newProf)
        } catch (error) {
            console.log(error);
            return error            
        }
    }

    @Delete("/:id")
    deleteProf(
        @Param("id", ) idProf : string,
    ) : Promise<any>
    {
        try {
            return this.profService.deleteProf(idProf)
        } catch (error) {
            console.log(error);
            return error            
        }
    }
}
