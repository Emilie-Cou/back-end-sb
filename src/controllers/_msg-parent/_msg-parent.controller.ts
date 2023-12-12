import { Body, Controller, Delete, Get, Param, ParseIntPipe, Patch, Post, ValidationPipe } from '@nestjs/common';
import { MsgParentService } from './_msg-parent.service';
import { IdClasseMsgParent_DTO, MsgParent_DTO } from 'src/shared/dto/msg-parent/msg-parent.dto';

@Controller('msg-parent')
export class MsgParentController
{
    constructor( private readonly msgParentService : MsgParentService) {}

    @Get(":id")
    getOne(
        @Param("id", ParseIntPipe) id : number
    ) : Promise<any>
    {
        try {
            return this.msgParentService.getOne(id)
        } catch (error) {
            console.log(error);
            return error
        }
    }

    @Post()
    getAllByID(
        @Body(ValidationPipe) idClasse : IdClasseMsgParent_DTO
    ) : Promise<any>
    {
        try {
            return this.msgParentService.getAllByID(idClasse.idClasse)            
        } catch (error) {
            console.log(error);
            return error
        }
    }

    @Post("/msg")
    addMsg(
        @Body(ValidationPipe) newMsg : MsgParent_DTO
    ) : Promise<any>
    {
        try {
            return this.msgParentService.addMsg(newMsg)
        } catch (error) {
            console.log(error);
            return error            
        }
    }

    @Patch("/:id")
    updateMsg(
        @Param("id", ParseIntPipe) idMsg : number,
        @Body(ValidationPipe) newMsg : MsgParent_DTO
    ) : Promise<any>
    {
        try {
            return this.msgParentService.updateMsg(idMsg, newMsg)
        } catch (error) {
            console.log(error);
            return error            
        }
    }

    @Delete("/:id")
    deleteMsg(
        @Param("id", ParseIntPipe) idMsg : number,
    ) : Promise<any>
    {
        try {
            return this.msgParentService.deleteMsg(idMsg)
        } catch (error) {
            console.log(error);
            return error            
        }
    }
}
