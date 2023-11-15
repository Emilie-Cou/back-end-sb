import { IsDefined, IsString, Max, IsOptional, MaxLength, Length } from "class-validator";

export class Classe_DTO
{
    @IsString()
    @IsOptional()
    @Length(3)
    idClasse : string

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
