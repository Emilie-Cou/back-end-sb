import { IsDefined, IsString, MinLength, MaxLength } from "class-validator";

export class Comment_DTO
{
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
