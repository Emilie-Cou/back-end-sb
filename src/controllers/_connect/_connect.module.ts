import { Module } from '@nestjs/common';
import { ConnectController } from './_connect.controller';
import { ConnectService } from './_connect.service';
import { ProfService } from '../_prof/_prof.service';
import { StudentService } from '../_student/_student.service';
import { TypeOrmModule } from '@nestjs/typeorm';
import { ProfEntity } from 'src/shared/entities/prof/prof.entity';
import { StudentEntity } from 'src/shared/entities/student/student.entity';

@Module({  
  imports: 
  [
    TypeOrmModule.forFeature([
      ProfEntity,
      StudentEntity
    ])
  ],
  controllers: [ConnectController],
  providers:
  [
    ConnectService,
    ProfService,
    StudentService
  ]
})
export class ConnectModule {}
