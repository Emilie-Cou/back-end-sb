import { Module } from '@nestjs/common';
import { ProfController } from './_prof.controller';
import { ProfService } from './_prof.service';
import { ProfEntity } from 'src/shared/entities/prof/prof.entity';
import { TypeOrmModule } from '@nestjs/typeorm';
import { ClasseEntity } from 'src/shared/entities/classe/classe.entity';

@Module({
  imports: [
    TypeOrmModule.forFeature([
      ProfEntity,
      ClasseEntity,
    ])
  ],
  controllers: [ProfController],
  providers:
  [
    ProfService,
  ]
})
export class ProfModule {}
