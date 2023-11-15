import { Body, Controller, Post, ValidationPipe } from '@nestjs/common';
import { ConnectService } from './_connect.service';
import { Connect_DTO } from 'src/shared/dto/connect/connect.dto';

@Controller('connect')
export class ConnectController
{
    constructor( private readonly connectService : ConnectService) {}

    @Post()
    connect(
        @Body(ValidationPipe) toConnect : Connect_DTO
    ) : Promise<any>
    {
        try {
            return this.connectService.connect(toConnect.idConnect, toConnect.pswConnect)
        } catch (error) {
            console.log(error);
            return error            
        }
    }
}
