import { HttpException, HttpStatus, Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Student_DTO } from 'src/shared/dto/student/student.dto';
import { StudentEntity } from 'src/shared/entities/student/student.entity';
import { Repository } from 'typeorm';

@Injectable()
export class StudentService
{
    constructor( @InjectRepository(StudentEntity) private readonly studentRepo : Repository<StudentEntity> ) {}

    //TODO ID ou NOM ou LES DEUX
    async getOne(idStudent : string)
    {
        return await this.studentRepo.findOneBy({idStudent})
    }

    async getAll()
    {
        return await this.studentRepo.find()
    }

    async addStudent(newStudent : Student_DTO)
    {
        let newStudentEntitty = await this.studentRepo.create(newStudent)
        return await this.studentRepo.save(newStudentEntitty)
    }

    async updateStudent(idStudent : string, newStudent : Student_DTO)
    {
        await this.studentRepo.findOneByOrFail({idStudent})
            .catch(error => {
                console.log(error);
                throw new HttpException("C'est élève est introuvable", HttpStatus.NOT_FOUND)
            }
        )

        return await this.studentRepo.update(idStudent, newStudent)
    }

    async deleteStudent(idStudent : string)
    {
        await this.studentRepo.findOneByOrFail({idStudent})
            .catch(error => {
                console.log(error);
                throw new HttpException("C'est élève est introuvable", HttpStatus.NOT_FOUND)
            }
        )

        return await this.studentRepo.softDelete(idStudent)
    }
}
