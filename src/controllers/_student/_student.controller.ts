import { Body, Controller, Delete, Get, Param, Patch, Post, ValidationPipe } from '@nestjs/common';
import { Student_DTO } from 'src/shared/dto/student/student.dto';
import { StudentService } from './_student.service';

@Controller('student')
export class StudentController
{
    constructor( private readonly studentService : StudentService ) {}
    
    @Get(":id")
    getOne(
        @Param("id") id : string
    ) : Promise<any>
    {
        try {
            return this.studentService.getOne(id)
        } catch (error) {
            console.log(error);
            return error
        }
    }

    @Get()
    getAll() : Promise<any>
    {
        try {
            return this.studentService.getAll()            
        } catch (error) {
            console.log(error);
            return error
        }
    }

    @Post()
    addStudent(
        @Body(ValidationPipe) newStudent : Student_DTO
    ) : Promise<any>
    {
        try {
            return this.studentService.addStudent(newStudent)
        } catch (error) {
            return error            
        }
    }

    @Patch("/:id")
    updateStudent(
        @Param("id") idStudent : string,
        @Body(ValidationPipe) newStudent : Student_DTO
    ) : Promise<any>
    {
        try {
            return this.studentService.updateStudent(idStudent, newStudent)
        } catch (error) {
            console.log(error);
            return error            
        }
    }

    @Delete("/:id")
    deleteStudent(
        @Param("id") idStudent : string,
    ) : Promise<any>
    {
        try {
            return this.studentService.deleteStudent(idStudent)
        } catch (error) {
            console.log(error);
            return error            
        }
    }
}
