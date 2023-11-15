import { HttpException, HttpStatus, Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Classe_DTO } from 'src/shared/dto/classe/classe.dto';
import { ClasseEntity } from 'src/shared/entities/classe/classe.entity';
import { Repository } from 'typeorm';

@Injectable()
export class ClasseService
{
    constructor( @InjectRepository(ClasseEntity) private readonly classeRepo : Repository<ClasseEntity> ) {}

    async getOne(idClasse : string)
    {
        return await this.classeRepo.findOneBy({idClasse})
    }

    async getAll()
    {
        return await this.classeRepo.find()
    }

    async addClasse(newClasse : Classe_DTO)
    {
        return  await this.classeRepo.save(newClasse)
    }

    async updateClasse(idClasse : string, newClasse : Classe_DTO)
    {
        return await this.classeRepo.update(idClasse, newClasse)
    }

    async deleteClasse(idClasse : string)
    {
        await this.classeRepo.findOneByOrFail({idClasse})
            .catch(error => {
                console.log(error);
                throw new HttpException("Cette classe est introuvable", HttpStatus.NOT_FOUND)
            }
        )

        return await this.classeRepo.softDelete(idClasse)
    }
}
