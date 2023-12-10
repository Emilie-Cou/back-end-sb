import { HttpException, HttpStatus, Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Prof_DTO } from 'src/shared/dto/prof/prof.dto';
import { ProfEntity } from 'src/shared/entities/prof/prof.entity';
import { Repository } from 'typeorm';

@Injectable()
export class ProfService
{
    constructor( @InjectRepository(ProfEntity) private readonly profRepo : Repository<ProfEntity> ) {}

    //TODO ID ou NOM ou LES DEUX
    async getOne(idProf : string)
    {
        return await this.profRepo.findOneBy({idProf})
    }

    async getAll()
    {
        return await this.profRepo.find({
            relations: {
                classe: true,
            },
            order: {
                classe : {
                    idClasse: "ASC",
                },
            },
        })
    }

    async addProf(newProf : Prof_DTO)
    {        
        let newProfEntity = await this.profRepo.create(newProf)
        return  await this.profRepo.save(newProfEntity)
    }

    async updateProf(idProf : string, newProf : Prof_DTO)
    {
        await this.profRepo.findOneByOrFail({idProf})
            .catch(error => {
                console.log(error);
                throw new HttpException("Ce prof est introuvable", HttpStatus.NOT_FOUND)
            }
        )
        return await this.profRepo.update(idProf, newProf)
    }

    async deleteProf(idProf : string)
    {
        await this.profRepo.findOneByOrFail({idProf})
            .catch(error => {
                console.log(error);
                throw new HttpException("Ce prof est introuvable", HttpStatus.NOT_FOUND)
            }
        )
        return await this.profRepo.softDelete(idProf)
    }
}
