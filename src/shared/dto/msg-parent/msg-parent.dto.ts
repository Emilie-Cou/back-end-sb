import { Type } from "class-transformer";
import { IsDefined, IsString, Length, MaxLength, MinLength, ValidateNested } from "class-validator";
import { Classe_DTO } from "../classe/classe.dto";

export class MsgParent_DTO
{
    @IsDefined()
    @IsString()
    @MinLength(3)
    @MaxLength(4)
    @Type(() => Classe_DTO)
    classe : Classe_DTO

    @IsDefined()
    @IsString()
    @MinLength(3)
    @MaxLength(25)
    prenom : string

    @IsDefined()
    @IsString()
    @MinLength(5)
    @MaxLength(250)
    content : string
}


export class IdClasseMsgParent_DTO
{
    @IsDefined()
    @IsString()
    @MinLength(3)
    @MaxLength(4)
    idClasse : string
}