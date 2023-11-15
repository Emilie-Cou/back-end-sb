import { Module } from '@nestjs/common';
import { StudentController } from './_student.controller';
import { StudentService } from './_student.service';
import { StudentEntity } from 'src/shared/entities/student/student.entity';
import { TypeOrmModule } from '@nestjs/typeorm';
import { ClasseEntity } from 'src/shared/entities/classe/classe.entity';

@Module({
  imports: [
    TypeOrmModule.forFeature([
      StudentEntity,
      ClasseEntity
    ])
  ],
  controllers: [StudentController],
  providers: [StudentService]
})
export class StudentModule {}
