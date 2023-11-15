import { IsDefined, IsString, MaxLength, MinLength } from "class-validator";

export class BlogCom_DTO
{
    @IsDefined()
    @IsString()
    @MinLength(5)
    @MaxLength(25)
    prenom : string

    @IsDefined()
    @IsString()
    @MinLength(5)
    @MaxLength(250)
    content : string
}
