import { IsDefined, IsString, IsOptional, MaxLength, Length } from "class-validator";
import { IsNull } from "typeorm";

export class Classe_DTO
{
    @IsString()
    @IsOptional()
    @Length(3)
    idClasse : string

    @IsString()
    @IsOptional()
    @Length(6)
    idProf : string

    @IsDefined()
    @IsString()
    @MaxLength(20)
    nomClasse : string

    @IsDefined()
    @IsString()
    @MaxLength(200)
    miniDesc : string

    @IsDefined()
    @IsString()
    @MaxLength(500)
    desc : string

    @IsOptional()
    @IsString()
    @MaxLength(100)
    img : string
}
