import { Module } from '@nestjs/common';
import { ClasseController } from './_classe.controller';
import { ClasseService } from './_classe.service';
import { ProfEntity } from 'src/shared/entities/prof/prof.entity';
import { TypeOrmModule } from '@nestjs/typeorm';
import { ClasseEntity } from 'src/shared/entities/classe/classe.entity';

@Module({
  imports: [
    TypeOrmModule.forFeature([
      ClasseEntity,
      ProfEntity
    ])
  ],
  controllers: [ClasseController],
  providers: [ClasseService]
})
export class ClasseModule {}
