import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { MsgParent_DTO } from 'src/shared/dto/msg-parent/msg-parent.dto';
import { MsgParentEntity } from 'src/shared/entities/msg-parent/msg-parent.entity';
import { Repository } from 'typeorm';

@Injectable()
export class MsgParentService
{
    constructor( @InjectRepository(MsgParentEntity) private readonly msgParentRepo : Repository<MsgParentEntity>) {}

    async getOne(idMsg : number)
    {
        return await this.msgParentRepo.findOneBy({idMsg})
    }

    async getAll()
    {
        return await this.msgParentRepo.find()
    }

    async addMsg(newMsg : MsgParent_DTO)
    {
        return  await this.msgParentRepo.save(newMsg)
    }

    async updateMsg(idMsg : number, newMsg : MsgParent_DTO)
    {
        return await this.msgParentRepo.update(idMsg, newMsg)
    }

    async deleteMsg(idMsg : number)
    {
        return await this.msgParentRepo.softDelete(idMsg)
    }
}