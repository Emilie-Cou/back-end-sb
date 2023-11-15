import { Module } from '@nestjs/common';
import { MsgParentController } from './_msg-parent.controller';
import { MsgParentService } from './_msg-parent.service';
import { MsgParentEntity } from 'src/shared/entities/msg-parent/msg-parent.entity';
import { TypeOrmModule } from '@nestjs/typeorm';
import { ClasseEntity } from 'src/shared/entities/classe/classe.entity';

@Module({
  imports: [
    TypeOrmModule.forFeature([
      MsgParentEntity,
      ClasseEntity
    ])
  ],
  controllers: [MsgParentController],
  providers: [MsgParentService]
})
export class MsgParentModule {}
